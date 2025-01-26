import { KVEntity } from "data";
import { PageName } from "./PageName";

export namespace PageEntity {

  export const PAGE_ALGORITHM_TEST = new KVEntity(PageName.PAGE_ALGORITHM_TEST, "一些基础算法的简单实现")

  export const PAGE_SORT_TEST = new KVEntity(PageName.PAGE_SORT_TEST, "常见的排序算法")

  export const PAGE_TRAVERSAL_TEST = new KVEntity(PageName.PAGE_TRAVERSAL_TEST, "二叉树遍历")
}