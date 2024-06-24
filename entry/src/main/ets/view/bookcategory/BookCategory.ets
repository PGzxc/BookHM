/**
 * @desc：4-书架-分类
 */
import ApiResponse from '../../api/ApiResponse'
import { Book } from '../../bean/ReadBean'
import Constants from '../../utils/Constants'
import ReadItem from '../ReadItem'

@Component
export default struct BookCategory {
  build() {
    Column({ space: 0 }) {
      Grid() {
        ForEach(ApiResponse.bookCategoryData, (item:Book, index) => {
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