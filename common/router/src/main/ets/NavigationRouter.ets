import { RouterParams } from "./RouterParams"
import { HObjUtils, HStrUtils, HToast } from "utils"

export namespace NavigationRouter {

  export const KEY_MAIN_NAV_STACK = "KEY_MAIN_NAV_STACK"

  export function getNavStack(): NavPathStack {
    let stack = AppStorage.get<NavPathStack>(KEY_MAIN_NAV_STACK)
    if (stack == undefined) {
      AppStorage.setOrCreate<NavPathStack>(KEY_MAIN_NAV_STACK, stack = new NavPathStack())
      return stack
    } else {
      return stack
    }
  }

  export function checkParams(params: RouterParams): boolean {
    if (HObjUtils.isNotValidObj(params)) {
      HToast.showToast("params error")
      return false
    } else if (HStrUtils.isEmpty(params.pageName)) {
      HToast.showToast("empty pageName")
      return false
    } else {
      return true
    }
  }

  export function pushPage(params: RouterParams) {
    if (checkParams(params) === true) {
      const pathInfo = new NavPathInfo(params.pageName, params.extraParams, params.onResult)
      getNavStack().pushPath(pathInfo, {
        launchMode: params.launchMode,
        animated: params.openAnim
      })
    }
  }

  export function replacePage(params: RouterParams) {
    if (checkParams(params) === true) {
      const pathInfo = new NavPathInfo(params.pageName, params.extraParams, params.onResult)
      getNavStack().replacePath(pathInfo, {
        launchMode: params.launchMode,
        animated: params.openAnim
      })
    }
  }

  export function back(withAnim: boolean = true) {
    getNavStack().pop(withAnim)
  }

  export function backForResult(withAnim: boolean = true, result?: Object) {
    getNavStack().pop(result, withAnim)
  }

  export function clear(withAnim: boolean = true) {
    getNavStack().clear(withAnim)
  }
}