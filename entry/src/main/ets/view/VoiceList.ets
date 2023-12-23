import ApiResponse from '../api/ApiResponse'
import { BookVoice, BookVoiceList } from '../bean/VoiceBean'
import Constants from '../utils/Constants'
import ReadItem from './ReadItem'
import VoiceItem from './VoiceItem'

/**
 * @desc：4-书架-分类
 */

@Component
export default struct VoiceList {
  index: number = 0;
  @Watch('changeTab') @Link currentIndex: number;
  @State voiceBookData: BookVoice[] = [];

  aboutToAppear() {
    this.changeTab()
  }

  changeTab() {
    this.voiceBookData = ApiResponse.bookVoiceListData[this.currentIndex]
  }

  build() {
    Column({ space: 0 }) {
      Grid() {
        ForEach(this.voiceBookData, (item, index) => {
          GridItem() {
            VoiceItem({ item })
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