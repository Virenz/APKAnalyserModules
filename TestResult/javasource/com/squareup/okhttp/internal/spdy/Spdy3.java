package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.zip.Deflater;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;

public final class Spdy3
  implements Variant
{
  static final byte[] DICTIONARY;
  
  static
  {
    try
    {
      DICTIONARY = "\000\000\000\007options\000\000\000\004head\000\000\000\004post\000\000\000\003put\000\000\000\006delete\000\000\000\005trace\000\000\000\006accept\000\000\000\016accept-charset\000\000\000\017accept-encoding\000\000\000\017accept-language\000\000\000\raccept-ranges\000\000\000\003age\000\000\000\005allow\000\000\000\rauthorization\000\000\000\rcache-control\000\000\000\nconnection\000\000\000\fcontent-base\000\000\000\020content-encoding\000\000\000\020content-language\000\000\000\016content-length\000\000\000\020content-location\000\000\000\013content-md5\000\000\000\rcontent-range\000\000\000\fcontent-type\000\000\000\004date\000\000\000\004etag\000\000\000\006expect\000\000\000\007expires\000\000\000\004from\000\000\000\004host\000\000\000\bif-match\000\000\000\021if-modified-since\000\000\000\rif-none-match\000\000\000\bif-range\000\000\000\023if-unmodified-since\000\000\000\rlast-modified\000\000\000\blocation\000\000\000\fmax-forwards\000\000\000\006pragma\000\000\000\022proxy-authenticate\000\000\000\023proxy-authorization\000\000\000\005range\000\000\000\007referer\000\000\000\013retry-after\000\000\000\006server\000\000\000\002te\000\000\000\007trailer\000\000\000\021transfer-encoding\000\000\000\007upgrade\000\000\000\nuser-agent\000\000\000\004vary\000\000\000\003via\000\000\000\007warning\000\000\000\020www-authenticate\000\000\000\006method\000\000\000\003get\000\000\000\006status\000\000\000\006200 OK\000\000\000\007version\000\000\000\bHTTP/1.1\000\000\000\003url\000\000\000\006public\000\000\000\nset-cookie\000\000\000\nkeep-alive\000\000\000\006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(Util.UTF_8.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
  }
  
  public Spdy3() {}
  
  public FrameReader newReader(BufferedSource paramBufferedSource, boolean paramBoolean)
  {
    return new Reader(paramBufferedSource, paramBoolean);
  }
  
  public FrameWriter newWriter(BufferedSink paramBufferedSink, boolean paramBoolean)
  {
    return new Writer(paramBufferedSink, paramBoolean);
  }
  
  static final class Reader
    implements FrameReader
  {
    private final boolean client;
    private final NameValueBlockReader headerBlockReader;
    private final BufferedSource source;
    
    Reader(BufferedSource paramBufferedSource, boolean paramBoolean)
    {
      source = paramBufferedSource;
      headerBlockReader = new NameValueBlockReader(source);
      client = paramBoolean;
    }
    
    private static IOException ioException(String paramString, Object... paramVarArgs)
      throws IOException
    {
      throw new IOException(String.format(paramString, paramVarArgs));
    }
    
    private void readGoAway(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 8) {
        throw ioException("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = source.readInt();
      paramInt2 = source.readInt();
      ErrorCode localErrorCode = ErrorCode.fromSpdyGoAway(paramInt2);
      if (localErrorCode == null) {
        throw ioException("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramHandler.goAway(paramInt1 & 0x7FFFFFFF, localErrorCode, ByteString.EMPTY);
    }
    
    private void readHeaders(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      paramHandler.headers(false, false, source.readInt() & 0x7FFFFFFF, -1, headerBlockReader.readNameValueBlock(paramInt2 - 4), HeadersMode.SPDY_HEADERS);
    }
    
    private void readPing(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      if (paramInt2 != 4) {
        throw ioException("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = source.readInt();
      boolean bool3 = client;
      if ((paramInt1 & 0x1) == 1)
      {
        bool1 = true;
        if (bool3 != bool1) {
          break label79;
        }
      }
      label79:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        paramHandler.ping(bool1, paramInt1, 0);
        return;
        bool1 = false;
        break;
      }
    }
    
    private void readRstStream(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 8) {
        throw ioException("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = source.readInt();
      paramInt2 = source.readInt();
      ErrorCode localErrorCode = ErrorCode.fromSpdy3Rst(paramInt2);
      if (localErrorCode == null) {
        throw ioException("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramHandler.rstStream(paramInt1 & 0x7FFFFFFF, localErrorCode);
    }
    
    private void readSettings(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool = true;
      int i = source.readInt();
      if (paramInt2 != i * 8 + 4) {
        throw ioException("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
      }
      Settings localSettings = new Settings();
      paramInt2 = 0;
      while (paramInt2 < i)
      {
        int j = source.readInt();
        localSettings.set(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, source.readInt());
        paramInt2 += 1;
      }
      if ((paramInt1 & 0x1) != 0) {}
      for (;;)
      {
        paramHandler.settings(bool, localSettings);
        return;
        bool = false;
      }
    }
    
    private void readSynReply(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      int i = source.readInt();
      List localList = headerBlockReader.readNameValueBlock(paramInt2 - 4);
      if ((paramInt1 & 0x1) != 0) {}
      for (boolean bool = true;; bool = false)
      {
        paramHandler.headers(false, bool, i & 0x7FFFFFFF, -1, localList, HeadersMode.SPDY_REPLY);
        return;
      }
    }
    
    private void readSynStream(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      int i = source.readInt();
      int j = source.readInt();
      source.readShort();
      List localList = headerBlockReader.readNameValueBlock(paramInt2 - 10);
      boolean bool1;
      if ((paramInt1 & 0x1) != 0)
      {
        bool1 = true;
        if ((paramInt1 & 0x2) == 0) {
          break label95;
        }
      }
      for (;;)
      {
        paramHandler.headers(bool2, bool1, i & 0x7FFFFFFF, j & 0x7FFFFFFF, localList, HeadersMode.SPDY_SYN_STREAM);
        return;
        bool1 = false;
        break;
        label95:
        bool2 = false;
      }
    }
    
    private void readWindowUpdate(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 8) {
        throw ioException("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = source.readInt();
      long l = source.readInt() & 0x7FFFFFFF;
      if (l == 0L) {
        throw ioException("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      paramHandler.windowUpdate(paramInt1 & 0x7FFFFFFF, l);
    }
    
    public void close()
      throws IOException
    {
      headerBlockReader.close();
    }
    
    public boolean nextFrame(FrameReader.Handler paramHandler)
      throws IOException
    {
      boolean bool = false;
      int j;
      int k;
      int m;
      for (;;)
      {
        try
        {
          j = source.readInt();
          k = source.readInt();
          if ((0x80000000 & j) != 0)
          {
            i = 1;
            m = (0xFF000000 & k) >>> 24;
            k &= 0xFFFFFF;
            if (i == 0) {
              break label258;
            }
            i = (0x7FFF0000 & j) >>> 16;
            if (i == 3) {
              break;
            }
            throw new ProtocolException("version != 3: " + i);
          }
        }
        catch (IOException paramHandler)
        {
          return false;
        }
        int i = 0;
      }
      switch (j & 0xFFFF)
      {
      case 5: 
      default: 
        source.skip(k);
        return true;
      case 1: 
        readSynStream(paramHandler, m, k);
        return true;
      case 2: 
        readSynReply(paramHandler, m, k);
        return true;
      case 3: 
        readRstStream(paramHandler, m, k);
        return true;
      case 4: 
        readSettings(paramHandler, m, k);
        return true;
      case 6: 
        readPing(paramHandler, m, k);
        return true;
      case 7: 
        readGoAway(paramHandler, m, k);
        return true;
      case 8: 
        readHeaders(paramHandler, m, k);
        return true;
      }
      readWindowUpdate(paramHandler, m, k);
      return true;
      label258:
      if ((m & 0x1) != 0) {
        bool = true;
      }
      paramHandler.data(bool, j & 0x7FFFFFFF, source, k);
      return true;
    }
    
    public void readConnectionPreface() {}
  }
  
  static final class Writer
    implements FrameWriter
  {
    private final boolean client;
    private boolean closed;
    private final Buffer headerBlockBuffer;
    private final BufferedSink headerBlockOut;
    private final BufferedSink sink;
    
    Writer(BufferedSink paramBufferedSink, boolean paramBoolean)
    {
      sink = paramBufferedSink;
      client = paramBoolean;
      paramBufferedSink = new Deflater();
      paramBufferedSink.setDictionary(Spdy3.DICTIONARY);
      headerBlockBuffer = new Buffer();
      headerBlockOut = Okio.buffer(new DeflaterSink(headerBlockBuffer, paramBufferedSink));
    }
    
    private void writeNameValueBlockToBuffer(List<Header> paramList)
      throws IOException
    {
      if (headerBlockBuffer.size() != 0L) {
        throw new IllegalStateException();
      }
      headerBlockOut.writeInt(paramList.size());
      int i = 0;
      int j = paramList.size();
      while (i < j)
      {
        ByteString localByteString = getname;
        headerBlockOut.writeInt(localByteString.size());
        headerBlockOut.write(localByteString);
        localByteString = getvalue;
        headerBlockOut.writeInt(localByteString.size());
        headerBlockOut.write(localByteString);
        i += 1;
      }
      headerBlockOut.flush();
    }
    
    public void ackSettings(Settings paramSettings) {}
    
    public void close()
      throws IOException
    {
      try
      {
        closed = true;
        Util.closeAll(sink, headerBlockOut);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void connectionPreface() {}
    
    public void data(boolean paramBoolean, int paramInt1, Buffer paramBuffer, int paramInt2)
      throws IOException
    {
      if (paramBoolean) {}
      for (int i = 1;; i = 0) {
        try
        {
          sendDataFrame(paramInt1, i, paramBuffer, paramInt2);
          return;
        }
        finally {}
      }
    }
    
    public void flush()
      throws IOException
    {
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      sink.flush();
    }
    
    public void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
      throws IOException
    {
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (spdyGoAwayCode == -1) {
        throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
      }
      sink.writeInt(-2147287033);
      sink.writeInt(8);
      sink.writeInt(paramInt);
      sink.writeInt(spdyGoAwayCode);
      sink.flush();
    }
    
    public int maxDataLength()
    {
      return 16383;
    }
    
    public void ping(boolean paramBoolean, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool3 = client;
      boolean bool1;
      if ((paramInt1 & 0x1) == 1) {
        bool1 = true;
      }
      for (;;)
      {
        if (paramBoolean != bool1) {
          throw new IllegalArgumentException("payload != reply");
        }
        sink.writeInt(-2147287034);
        sink.writeInt(4);
        sink.writeInt(paramInt1);
        sink.flush();
        return;
        for (;;)
        {
          if (bool3 == bool1) {
            break label130;
          }
          bool1 = bool2;
          break;
          bool1 = false;
        }
        label130:
        bool1 = false;
      }
    }
    
    public void pushPromise(int paramInt1, int paramInt2, List<Header> paramList)
      throws IOException
    {}
    
    public void rstStream(int paramInt, ErrorCode paramErrorCode)
      throws IOException
    {
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (spdyRstCode == -1) {
        throw new IllegalArgumentException();
      }
      sink.writeInt(-2147287037);
      sink.writeInt(8);
      sink.writeInt(0x7FFFFFFF & paramInt);
      sink.writeInt(spdyRstCode);
      sink.flush();
    }
    
    void sendDataFrame(int paramInt1, int paramInt2, Buffer paramBuffer, int paramInt3)
      throws IOException
    {
      if (closed) {
        throw new IOException("closed");
      }
      if (paramInt3 > 16777215L) {
        throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt3);
      }
      sink.writeInt(0x7FFFFFFF & paramInt1);
      sink.writeInt((paramInt2 & 0xFF) << 24 | 0xFFFFFF & paramInt3);
      if (paramInt3 > 0) {
        sink.write(paramBuffer, paramInt3);
      }
    }
    
    public void settings(Settings paramSettings)
      throws IOException
    {
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      int i = paramSettings.size();
      sink.writeInt(-2147287036);
      sink.writeInt(i * 8 + 4 & 0xFFFFFF | 0x0);
      sink.writeInt(i);
      i = 0;
      for (;;)
      {
        if (i <= 10)
        {
          if (paramSettings.isSet(i))
          {
            int j = paramSettings.flags(i);
            sink.writeInt((j & 0xFF) << 24 | i & 0xFFFFFF);
            sink.writeInt(paramSettings.get(i));
          }
        }
        else
        {
          sink.flush();
          return;
        }
        i += 1;
      }
    }
    
    public void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList)
      throws IOException
    {
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      writeNameValueBlockToBuffer(paramList);
      int k = (int)(10L + headerBlockBuffer.size());
      int i;
      if (paramBoolean1) {
        i = 1;
      }
      for (;;)
      {
        sink.writeInt(-2147287039);
        sink.writeInt(((i | j) & 0xFF) << 24 | 0xFFFFFF & k);
        sink.writeInt(0x7FFFFFFF & paramInt1);
        sink.writeInt(0x7FFFFFFF & paramInt2);
        sink.writeShort(0);
        sink.writeAll(headerBlockBuffer);
        sink.flush();
        return;
        i = 0;
        while (!paramBoolean2)
        {
          j = 0;
          break;
        }
        int j = 2;
      }
    }
    
    public void windowUpdate(int paramInt, long paramLong)
      throws IOException
    {
      try
      {
        if (closed) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
      }
      sink.writeInt(-2147287031);
      sink.writeInt(8);
      sink.writeInt(paramInt);
      sink.writeInt((int)paramLong);
      sink.flush();
    }
  }
}
