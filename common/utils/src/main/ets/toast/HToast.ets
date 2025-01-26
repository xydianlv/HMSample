import { promptAction } from "@kit.ArkUI";

export namespace HToast {

  export function showToast(msg: string) {
    promptAction.showToast({
      message: msg,
      duration: 1500,
      bottom: 20,
      alignment: Alignment.Bottom
    })
  }

  export function showToastLong(msg: string) {
    promptAction.showToast({
      message: msg,
      duration: 2500,
      bottom: 20,
      alignment: Alignment.Bottom
    })
  }

  export function showToastCenter(msg: string) {
    promptAction.showToast({
      message: msg,
      duration: 1500,
      alignment: Alignment.Center
    })
  }
}