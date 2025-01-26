import { HFontConstants, HUIConstants } from "resource"
import { HStrUtils } from "utils"
import { HListEntity } from "./HListEntity"

@Component
export struct HListView {
  @Prop entityList: Array<HListEntity>

  build() {
    List() {
      ForEach(this.entityList, (entity: HListEntity, index: number) => {
        ListItem() {
          ItemView({
            entity: entity,
            isLast: index === this.entityList.length - 1
          }).onClick(() => {
            entity.onClick?.()
          })
        }
      })
    }
    .listDirection(Axis.Vertical)
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.None)
    .width(HUIConstants.FULL_PERCENT)
    .height(HUIConstants.AUTO)
  }
}

@Component
export struct ItemView {
  @Prop entity: HListEntity
  @Prop isLast: boolean

  build() {
    Column() {

      Row() {

        Column() {
          Text(this.entity.title ?? "")
            .fontColor(HFontConstants.COLOR_CT_1)
            .fontSize(HFontConstants.SIZE_15)
            .textAlign(TextAlign.Start)

          Text(this.entity.desc ?? "")
            .fontColor(HFontConstants.COLOR_CT_3)
            .fontSize(HFontConstants.SIZE_10)
            .textAlign(TextAlign.Start)
            .margin({
              top: HUIConstants.PADDING_6
            })
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
        .padding({
          left: HUIConstants.PADDING_14,
          top: HUIConstants.PADDING_10,
        })

        if (HStrUtils.isNotEmpty(this.entity.alert)) {
          Text(this.entity.alert ?? "")
            .fontColor(this.entity.alertColor ?? HFontConstants.COLOR_CT_3)
            .fontSize(HFontConstants.SIZE_15)
        }

        if (this.entity.showArrow) {
          Image($r("app.media.ic_common_arrow_right"))
            .width(12)
            .height(12)
        }
      }
      .width(HUIConstants.FULL_PERCENT)

      Row() {
        Blank()
          .color(HUIConstants.COLOR_LINE)
          .width(HUIConstants.FULL_PERCENT)
          .height(HUIConstants.HEIGHT_LINE)
      }
      .width(HUIConstants.FULL_PERCENT)
      .padding({
        left: this.isLast ? HUIConstants.ZERO : HUIConstants.PADDING_14,
      })
      .margin({
        top: HUIConstants.PADDING_10
      })

    }
    .width(HUIConstants.FULL_PERCENT)
    .height(HUIConstants.AUTO)
  }
}