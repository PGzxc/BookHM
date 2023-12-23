/**
 * @desc：1-书架-默认
 */
import ApiResponse from '../../api/ApiResponse'
import Constants from '../../utils/Constants'
import BookDefaultItem from '../../view/BookDefaultItem'

@Component
export default struct BookDefault {
  build() {
    Column({ space: 0 }) {
      Grid() {
        ForEach(ApiResponse.readListData, (item, index) => {
          GridItem() {
            BookDefaultItem({ item })
          }
        })
      }
      .width('100%')
      .height('100%')
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