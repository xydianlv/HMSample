import { PageName, PageTag } from 'entry_extra';
import { HLog } from 'utils';
import { HUIConstants } from 'resource';
import { NavigationRouter, RouterParams } from 'router';

const localStorage = LocalStorage.getShared()

@Entry(localStorage)
@Component
struct RootPage {
  @Provide(NavigationRouter.KEY_MAIN_NAV_STACK) pageStack: NavPathStack = NavigationRouter.getNavStack()

  aboutToAppear(): void {
    HLog.info(PageTag.TAG_ROOT, "aboutToAppear()")
  }

  aboutToDisappear(): void {
    HLog.info(PageTag.TAG_ROOT, "aboutToDisappear()")
  }

  onBackPress(): boolean | void {
    HLog.info(PageTag.TAG_ROOT, "onBackPress()")
    return true
  }

  build() {
    Stack() {
      Navigation(this.pageStack)
        .mode(NavigationMode.Stack)
        .hideTitleBar(true)
        .hideNavBar(true)
        .width(HUIConstants.FULL_PERCENT)
        .height(HUIConstants.FULL_PERCENT)
        .onAppear(() => {
          NavigationRouter.pushPage(RouterParams.obj(PageName.PAGE_SPLASH))
        })
    }
    .width(HUIConstants.FULL_PERCENT)
    .height(HUIConstants.FULL_PERCENT)
  }
}