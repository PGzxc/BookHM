import Constants from '../utils/Constants'

/**
 * @desc:阅读-工具条
 */

@Preview
@Component
export default struct MeBar {
  scanEvent: (event: ClickEvent) => void
  msgEvent: (event: ClickEvent) => void

  build() {
    //1-头部
    Row() {
      Blank()
      Image($r('app.media.ic_scan')).width(30).height(30).margin({ right: 16 }).onClick(this.scanEvent)
      Image($r('app.media.ic_msg')).width(30).height(30).margin({ right: 6 }).onClick(this.msgEvent)
    }
    .width(Constants.FULL_SIZE)
    .padding(10)
    .backgroundColor($r('app.color.white'))
  }
}