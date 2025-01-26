export namespace HObjUtils {

  // 待检测对象，是否是合理的可用的数据
  export function isValidObj(obj: object | null | undefined): boolean {
    return obj !== null && obj !== undefined
  }

  // 待检测对象，是否是不合理的非可用的数据
  export function isNotValidObj(obj: object | null | undefined): boolean {
    return obj === null || obj === undefined
  }
}