import { HUIConstants } from "resource"

export class HListEntity {
  static obj(title: string): HListEntity {
    return new HListEntity(title)
  }

  // 标题信息
  public title: string = ""
  // 描述信息
  public desc?: string
  // 提示信息
  public alert?: string
  // 提示信息色值
  public alertColor?: ResourceColor
  // 是否展示箭头
  public showArrow: boolean = false
  // 点击事件
  public onClick?: () => void

  constructor(title: string) {
    this.title = title
  }

  public setDesc(desc?: string): HListEntity {
    this.desc = desc
    return this
  }

  public setAlert(alert: string): HListEntity {
    return this.setAlertWidthColor(alert, HUIConstants.COLOR_ALERT)
  }

  public setAlertWidthColor(alert: string, alertColor: ResourceColor): HListEntity {
    this.alert = alert
    this.alertColor = alertColor
    return this
  }

  public setShowArrow(showArrow: boolean = false): HListEntity {
    this.showArrow = showArrow
    return this
  }

  public setOnClick(onClick: () => void): HListEntity {
    this.onClick = onClick
    return this
  }
}