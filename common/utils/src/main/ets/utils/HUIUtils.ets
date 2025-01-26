import { HLog } from "../log/HLog";
import { display } from "@kit.ArkUI";

export namespace HUIUtils {

  function getScreenWidth(): number {
    try {
      const dis: display.Display = display.getDefaultDisplaySync()
      return dis[0]
    } catch (e) {
      HLog.logE(e)
      return 0
    }
  }

  function getScreenHeight(): number {
    try {
      const dis: display.Display = display.getDefaultDisplaySync()
      return dis[1]
    } catch (e) {
      HLog.logE(e)
      return 0
    }
  }
}