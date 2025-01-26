import { AlgorithmPageEntity } from "algorithm_extra";
import { BaseModel } from "base";
import { KVEntity } from "data";
import { HStrUtils } from "utils";
import { HListEntity } from "views";

export class ATPageVM extends BaseModel {
  tryLoadEntityList(): Array<HListEntity> {
    const resultList = new Array<HListEntity>()
    resultList.push(this.buildListEntity(AlgorithmPageEntity.PAGE_SORT_TEST))
    resultList.push(this.buildListEntity(AlgorithmPageEntity.PAGE_TRAVERSAL_TEST))
    return resultList
  }

  private buildListEntity(kvEntity: KVEntity): HListEntity {
    return HListEntity.obj(kvEntity.key)
      .setDesc(kvEntity.value)
      .setOnClick(() => {
        this.checkOnClick(kvEntity.key)
      })
      .setShowArrow(true)
  }

  private checkOnClick(pageName: string) {
    if (HStrUtils.equals(pageName, AlgorithmPageEntity.PAGE_SORT_TEST.key)) {

    }
  }
}