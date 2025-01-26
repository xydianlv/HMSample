export class HTimeCountdown {
  private static TIME_DIVIDE: number = 1000
  private countDownTime: number = 0
  private intervalId: number = 0
  private onCountDownListener?: (countDownTime: number) => void

  public startCountDown() {
    this.release();

    this.countDownTime = 0
    this.intervalId = setInterval(() => {
      this.countDownTime++
      this.onCountDownListener?.(this.countDownTime)
    }, HTimeCountdown.TIME_DIVIDE)
  }

  public release() {
    clearInterval(this.intervalId)
  }

  public setCountDownListener(onCountDownListener?: (countDownTime: number) => void) {
    this.onCountDownListener = onCountDownListener
  }
}