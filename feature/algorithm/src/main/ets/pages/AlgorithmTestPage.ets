import { AlgorithmPageName, AlgorithmPageTag } from "algorithm_extra"
import { HUIConstants } from "resource"
import { HLog } from "utils"
import { HListEntity, HListView, HToolbar } from "views"
import { ATPageVM } from "./ATPageVM"

@Builder
export function AlgorithmTestPageBuilder() {
  AlgorithmTestPage()
}

@Component
struct AlgorithmTestPage {
  private pageModel: ATPageVM = new ATPageVM()
  @State testList?: Array<HListEntity> = undefined

  aboutToAppear(): void {
    HLog.info(AlgorithmPageTag.TAG_ALGORITHM_TEST, "aboutToAppear()")
    this.testList = this.pageModel.tryLoadEntityList()
  }

  aboutToDisappear(): void {
    HLog.info(AlgorithmPageTag.TAG_ALGORITHM_TEST, "aboutToDisappear()")
  }

  build() {

    NavDestination() {

      Column() {

        HToolbar({
          title: AlgorithmPageName.PAGE_ALGORITHM_TEST
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