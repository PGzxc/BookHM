import ApiResponse from '../api/ApiResponse'
import { Book } from '../bean/ReadBean';
import Constants from '../utils/Constants'
import ReadBar from '../view/ReadBar'
import ReadItem from '../view/ReadItem';

@Preview
@Component
  /**
   * @desc：我的
   */
@Preview
export default struct ReadPage {
  @State currentBp: string = 'unknown';
  scroller: Scroller = new Scroller()
  searchClick = () => {
    console.log("search...")
  }
  moreClick = () => {
    console.log("more...")
  }

  build() {
    Column({ space: 0 }) {
      ReadBar({ searchEvent: this.searchClick, moreEvent: this.moreClick })
      Grid(this.scroller) {
        ForEach(ApiResponse.readListData, (item:Book, index) => {
          GridItem() {
            ReadItem({ item })
          }
        })
      }
      .width('100%')
      .height('85%')
      .columnsTemplate('1fr 1fr 1fr')
      .columnsGap(5)
      .rowsGap(5)
      .onScrollIndex((first: number) => {
        console.info(first.toString())
      })
    }
    .margin({ left: 5, top: 5, bottom: 5, right: 5 })
    .alignItems(HorizontalAlign.Start)
    .padding(8)
    .width(Constants.FULL_PERCENT)
    .height(Constants.FULL_PERCENT)
  }
}
