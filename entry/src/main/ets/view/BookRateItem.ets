
import { Book } from '../bean/ReadBean'
import Constants from '../utils/Constants'
/**
 * @desc：2-书架-进度-Item
 */
@Preview
@Component
export default struct BookRateItem {
  item: Book
  searchEvent: (event: ClickEvent) => void
  moreEvent: (event: ClickEvent) => void

  build() {
    Column() {
      Image(this.item.icon).objectFit(ImageFit.Contain).width('100%').height(100).onClick(this.searchEvent)
      Text(this.item.bookName).textAlign(TextAlign.Center).margin({top:2}).fontSize($r('app.float.14fp')).maxLines(1).textOverflow({ overflow: TextOverflow.Ellipsis })
      Text(this.item.bookProgress).fontColor($r('app.color.gray')).fontSize($r('app.float.12fp'))
    }
    .backgroundColor($r('app.color.white'))
    .width('100%')
    .height(140)
  }
}