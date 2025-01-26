import { HFontConstants, HUIConstants } from "resource";

@Component
export struct HToolbar {
  @Prop title: string = ""

  build() {
    Row() {
      Text(this.title)
        .width(HUIConstants.FULL_PERCENT)
        .height(HUIConstants.AUTO)
        .align(Alignment.Center)
        .fontSize(HFontConstants.SIZE_18)
        .fontColor(HFontConstants.COLOR_CT_1)
        .fontWeight(FontWeight.Bold)
    }
    .padding({
      left: HUIConstants.PADDING_14,
      right: HUIConstants.PADDING_14
    })
    .width(HUIConstants.FULL_PERCENT)
    .height(HUIConstants.HEIGHT_BAR)
  }
}