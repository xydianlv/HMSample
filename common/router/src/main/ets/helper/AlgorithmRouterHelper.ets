import { AlgorithmPageName } from "algorithm_extra";
import { NavigationRouter } from "../NavigationRouter";
import { RouterParams } from "../RouterParams";

export namespace AlgorithmRouterHelper {

  export function jumpAlgorithmTestPage() {
    NavigationRouter.pushPage(RouterParams.obj(AlgorithmPageName.PAGE_ALGORITHM_TEST))
  }
}