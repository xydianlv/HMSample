import { AlgorithmPageEntity, AlgorithmPageName } from "algorithm_extra";
import { BaseModel } from "base";
import { KVEntity } from "data";
import { AlgorithmRouterHelper, SystemRouterHelper } from "router";
import { SystemPageEntity, SystemPageName } from "system_extra";
import { HStrUtils } from "utils";
import { HListEntity } from "views";

@Observed
export class MainPageVM extends BaseModel {
  tryLoadEntityList(): Array<HListEntity> {
    const resultList = new Array<HListEntity>()
    resultList.push(this.buildListEntity(SystemPageEntity.PAGE_SYSTEM_TEST))
    resultList.push(this.buildListEntity(AlgorithmPageEntity.PAGE_ALGORITHM_TEST))
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
    if (HStrUtils.equals(pageName, SystemPageName.PAGE_SYSTEM_TEST)) {
      SystemRouterHelper.jumpSystemTestPage()
    } else if (HStrUtils.equals(pageName, AlgorithmPageName.PAGE_ALGORITHM_TEST)) {
      AlgorithmRouterHelper.jumpAlgorithmTestPage()
    }
  }
}