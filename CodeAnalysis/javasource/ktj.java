import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.tencent.mobileqq.activity.aio.audiopanel.PressToChangeVoicePanel;
import com.tencent.mobileqq.hotpatch.NotVerifyClass;
import com.tencent.qphone.base.util.QLog;

public class ktj
  implements Animation.AnimationListener
{
  public ktj(PressToChangeVoicePanel paramPressToChangeVoicePanel)
  {
    boolean bool = NotVerifyClass.DO_VERIFY_CLASS;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (QLog.isColorLevel()) {
      QLog.d("AIOAudioPanel", 2, "startStartRecordAnim(),onAnimationEnd is called,time is:" + System.currentTimeMillis());
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (QLog.isColorLevel()) {
      QLog.d("AIOAudioPanel", 2, "startStartRecordAnim(),onAnimationRepeat is called,time is:" + System.currentTimeMillis());
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (QLog.isColorLevel()) {
      QLog.d("AIOAudioPanel", 2, "startStartRecordAnim(),onAnimationStart is called,time is:" + System.currentTimeMillis());
    }
  }
}