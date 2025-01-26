import { PageName, PageTag } from "entry_extra"
import { HUIConstants } from "resource"
import { HLog } from "utils"
import { HListEntity, HListView, HToolbar } from "views"
import { MainPageVM } from "./MainPageVM"

@Builder
export function MainPageBuilder() {
  MainPage()
}

@Component
struct MainPage {
  private pageModel: MainPageVM = new MainPageVM()
  @State testList?: Array<HListEntity> = undefined

  aboutToAppear(): void {
    HLog.info(PageTag.TAG_MAIN, "aboutToAppear()")
    this.testList = this.pageModel.tryLoadEntityList()
  }

  aboutToDisappear(): void {
    HLog.info(PageTag.TAG_MAIN, "aboutToDisappear()")
  }

  build() {

    NavDestination() {

      Column() {

        HToolbar({
          title: PageName.PAGE_MAIN
        })

        Blank()
          .width(HUIConstants.FULL_PERCENT)
          .height(HUIConstants.HEIGHT_LINE)
          .color(HUIConstants.COLOR_LINE)

        HListView({
          entityList: this.testList
        })
      }
      .width(HUIConstants.FULL_PERCENT)
      .height(HUIConstants.FULL_PERCENT)
    }
    .width(HUIConstants.FULL_PERCENT)
    .height(HUIConstants.FULL_PERCENT)
    .hideTitleBar(true)
  }
}