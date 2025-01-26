import { PageName, PageTag } from "entry_extra"
import { HUIConstants } from "resource"
import { NavigationRouter, RouterParams } from "router"
import { HLog, HTimeCountdown } from "utils"

@Builder
export function SplashPageBuilder() {
  SplashPage()
}

@Component
struct SplashPage {
  // 倒计时计时器
  private splashCountdown: HTimeCountdown = new HTimeCountdown()
  // 界面停留时长
  private static TIME_DIVIDE: number = 1

  aboutToAppear(): void {
    HLog.info(PageTag.TAG_SPLASH, "aboutToAppear()")
    this.splashCountdown.setCountDownListener((countDownTime) => {
      if (countDownTime >= SplashPage.TIME_DIVIDE) {
        this.jumpMainPage()
      }
    })
    this.splashCountdown.startCountDown()
  }

  aboutToDisappear(): void {
    HLog.info(PageTag.TAG_SPLASH, "aboutToDisappear()")
  }

  build() {

    NavDestination() {
      Stack() {

        Text($r("app.string.EntryAbility_label"))
          .fontSize(18)
          .fontColor("#FF000000")
      }
      .width(HUIConstants.FULL_PERCENT)
      .height(HUIConstants.FULL_PERCENT)
      .alignContent(Alignment.Center)
    }
    .width(HUIConstants.FULL_PERCENT)
    .height(HUIConstants.FULL_PERCENT)
    .hideTitleBar(true)
  }

  private jumpMainPage() {
    NavigationRouter.replacePage(RouterParams.obj(PageName.PAGE_MAIN))
    this.splashCountdown.release()
  }
}