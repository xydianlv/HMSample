export namespace HStrUtils {

  export function isEmpty(str?: string | undefined | null) {
    return str === undefined || str === null || str.length === 0;
  }

  export function isNotEmpty(str?: string | undefined | null) {
    return str !== undefined && str !== null && str.length > 0;
  }

  export function equals(strPre?: string | undefined | null, strNext?: string | undefined | null): boolean {
    const isUnValidPre = strPre === undefined || strPre === null
    const isUnValidNext = strNext === undefined || strNext === null
    if (isUnValidPre && isUnValidNext) {
      return true
    } else if (isUnValidPre || isUnValidNext) {
      return false
    } else {
      return strPre === strNext
    }
  }
}