import { SystemPageName } from "system_extra";
import { NavigationRouter } from "../NavigationRouter";
import { RouterParams } from "../RouterParams";

export namespace SystemRouterHelper {

  export function jumpSystemTestPage() {
    NavigationRouter.pushPage(RouterParams.obj(SystemPageName.PAGE_SYSTEM_TEST))
  }
}