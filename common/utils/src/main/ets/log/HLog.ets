import hilog from "@ohos.hilog"

export namespace HLog {

  const TAG_DEF = "HM-SAMPLE-TAG"

  export function logError(e: object) {
    if (e instanceof Error) {
      logE(e.message)
    } else {
      logE(JSON.stringify(e) ?? '')
    }
  }

  export function logD(logInfo: string) {
    debug(TAG_DEF, logInfo)
  }

  export function logI(logInfo: string) {
    info(TAG_DEF, logInfo)
  }

  export function logW(logInfo: string) {
    warn(TAG_DEF, logInfo)
  }

  export function logE(logInfo: string) {
    debug(TAG_DEF, logInfo)
  }

  export function debug(tag: string, logInfo: string, ...args: string[]) {
    hilog.debug(0x000, tag, logInfo, args)
  }

  export function info(tag: string, logInfo: string, ...args: string[]) {
    hilog.info(0x000, tag, logInfo, args)
  }

  export function warn(tag: string, logInfo: string, ...args: string[]) {
    hilog.warn(0x000, tag, logInfo, args)
  }

  export function error(tag: string, logInfo: string, ...args: string[]) {
    hilog.error(0x000, tag, logInfo, args)
  }
}