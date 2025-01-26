import { Callback } from "@ohos.base"

export class RouterParams {
  static obj(pageName: string): RouterParams {
    return new RouterParams(pageName)
  }

  // 配置的界面名称
  public pageName: string
  // 启动模式
  public launchMode?: LaunchMode
  // 界面入参
  public extraParams?: object
  // 界面回调
  public onResult?: Callback<PopInfo>
  // 是否需要启动动画
  public openAnim?: boolean

  private constructor(pageName: string) {
    this.pageName = pageName
  }

  public setLaunchMode(launchMode: LaunchMode): RouterParams {
    this.launchMode = launchMode
    return this
  }
}