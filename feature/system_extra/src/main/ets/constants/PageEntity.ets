import { KVEntity } from "data";
import { PageName } from "./PageName";

export namespace PageEntity {

  export const PAGE_SYSTEM_TEST = new KVEntity(PageName.PAGE_SYSTEM_TEST, "系统提供的一些属性和接口调用")

  export const PAGE_PERMISSION_TEST = new KVEntity(PageName.PAGE_PERMISSION_TEST, "权限申请测试")

  export const PAGE_SYSTEM_INFO_TEST = new KVEntity(PageName.PAGE_SYSTEM_INFO_TEST, "手机基础信息获取测试")
}