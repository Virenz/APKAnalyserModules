.class public Lorg/apache/http/impl/io/DefaultHttpResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "DefaultHttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/impl/io/AbstractMessageParser",
        "<",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;

    .prologue
    const/4 v1, 0x0

    .line 122
    sget-object v0, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "constraints"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "lineParser"    # Lorg/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p4, "constraints"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/config/MessageConstraints;)V

    .line 104
    if-eqz p3, :cond_11

    .end local p3    # "responseFactory":Lorg/apache/http/HttpResponseFactory;
    :goto_5
    iput-object p3, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 106
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 107
    return-void

    .line 104
    .restart local p3    # "responseFactory":Lorg/apache/http/HttpResponseFactory;
    :cond_11
    sget-object p3, Lorg/apache/http/impl/DefaultHttpResponseFactory;->INSTANCE:Lorg/apache/http/impl/DefaultHttpResponseFactory;

    goto :goto_5
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "lineParser"    # Lorg/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    .line 81
    const-string v0, "Response factory"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponseFactory;

    iput-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 82
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 83
    return-void
.end method


# virtual methods
.method protected bridge synthetic parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .registers 3
    .param p1, "x0"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpResponse;
    .registers 7
    .param p1, "sessionBuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v3, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 131
    iget-object v3, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v3}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 132
    .local v1, "i":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    .line 133
    new-instance v3, Lorg/apache/http/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_16
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 137
    .local v0, "cursor":Lorg/apache/http/message/ParserCursor;
    iget-object v3, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v4, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v3, v4, v0}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 138
    .local v2, "statusline":Lorg/apache/http/StatusLine;
    iget-object v3, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method
