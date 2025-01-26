import { BaseModel } from "base";
import { KVEntity } from "data";
import { SystemPageEntity } from "system_extra";
import { HStrUtils } from "utils";
import { HListEntity } from "views";

export class STPageVM extends BaseModel {
  tryLoadEntityList(): Array<HListEntity> {
    const resultList = new Array<HListEntity>()
    resultList.push(this.buildListEntity(SystemPageEntity.PAGE_PERMISSION_TEST))
    resultList.push(this.buildListEntity(SystemPageEntity.PAGE_SYSTEM_INFO_TEST))
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
    if (HStrUtils.equals(pageName, SystemPageEntity.PAGE_PERMISSION_TEST.key)) {
    }
  }
}