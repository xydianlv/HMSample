import { HUIConstants } from "resource"
import { SystemPageName, SystemPageTag } from "system_extra"
import { HLog } from "utils"
import { HListEntity, HListView, HToolbar } from "views"
import { STPageVM } from "./STPageVM"

@Builder
export function SystemTestPageBuilder() {
  SystemTestPage()
}

@Component
struct SystemTestPage {
  private pageModel: STPageVM = new STPageVM()
  @State testList?: Array<HListEntity> = undefined

  aboutToAppear(): void {
    HLog.info(SystemPageTag.TAG_SYSTEM_TEST, "aboutToAppear()")
    this.testList = this.pageModel.tryLoadEntityList()
  }

  aboutToDisappear(): void {
    HLog.info(SystemPageTag.TAG_SYSTEM_TEST, "aboutToDisappear()")
  }

  build() {

    NavDestination() {

      Column() {

        HToolbar({
          title: SystemPageName.PAGE_SYSTEM_TEST
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