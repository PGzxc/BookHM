import Constants from '../utils/Constants'
import MeBar from './MeBar'

@Preview
@Component
export default struct MeHead {
  scanEvent: (event: ClickEvent) => void
  msgEvent: (event: ClickEvent) => void

  build() {
    //1-头部
    Column() {
      //1-Bar工具条
      MeBar()
      //2-用户
      Row() {
        Image($r('app.media.ic_user')).width(60).height(60).margin({ right: 16 }).onClick(this.scanEvent)
        Column(){
          Text("张三").fontSize(18).fontWeight(FontWeight.Bold).margin({bottom:8})
          Text("博览群书").fontSize(12).fontColor($r('app.color.white')).backgroundColor($r('app.color.tan')).borderRadius(3).padding({top:2,bottom:2,left:5,right:5})
        }.alignItems(HorizontalAlign.Start)
        Blank()
        Text("主页 >").fontSize(12)
      }.width(Constants.FULL_SIZE)

      //3-vip
      Row(){
        Image($r('app.media.ic_vip')).width(30).height(30).margin({ right: 16 })
        Column(){
          Text("我的VIP").fontColor($r('app.color.white')).fontSize(15).margin({bottom:6})
          Text("已享8项特权").fontColor($r('app.color.white')).fontSize(12).margin({bottom:6})
        }
        .alignItems(HorizontalAlign.Start)
        Blank()
        Text("查看特权").fontSize(10).fontColor($r('app.color.peru')).backgroundColor($r('app.color.oldLace')).borderRadius(3).padding({top:5,bottom:5,left:10,right:10})
      }
      .backgroundColor($r('app.color.tan'))
      .borderRadius(6)
      .width('97%')
      .margin(20)
      .padding({left:20,right:20,top:10,bottom:10})

    }
    .width(Constants.FULL_SIZE)
    .padding(10)
    .backgroundColor($r('app.color.white'))
  }
}