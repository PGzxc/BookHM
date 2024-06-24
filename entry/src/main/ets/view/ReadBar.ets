import Constants from '../utils/Constants'

/**
 * @desc:阅读-工具条
 */

@Preview
@Component
export default struct ReadBar {
  searchEvent: (event: ClickEvent) => void = ()=>{}
  moreEvent: (event: ClickEvent) => void = ()=>{}
  checkedEvent: (event: ClickEvent) => void = ()=>{}
  giftEvent: (event: ClickEvent) => void = ()=>{}

  build() {
    Column(){
      //1-头部
      Row() {
        Text('书架').fontSize(16).height(50)
        Blank()
        Image($r('app.media.ic_search')).width(30).height(30).margin({ right: 6 }).onClick(this.searchEvent)
        Image($r('app.media.ic_more')).width(30).height(30).margin({ right: 6 }).onClick(this.moreEvent)
      }.width(Constants.FULL_SIZE)
      //2-信息
      Row(){
        Text("本周已读3小时20分").fontSize(13)
        Blank()
        Row(){
          Image($r('app.media.ic_checked')).width(20).height(20).margin({ right: 2 }).onClick(this.checkedEvent)
          Text("筛选").fontSize(13)
        }
        Row(){
          Image($r('app.media.ic_gift')).width(20).height(20).margin({ left:15,right: 2 }).onClick(this.giftEvent)
          Text("福利").fontSize(13)
        }
      }.width(Constants.FULL_SIZE)
      .margin({top:8,bottom:2})
    }
    .width(Constants.FULL_SIZE)
    .padding(10)
    .backgroundColor($r('app.color.white'))
  }
}