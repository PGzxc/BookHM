import Constants from '../utils/Constants'
import BookCategory from './bookcategory/BookCategory'
import BookDefault from './bookcategory/BookDefault'
import BookRate from './bookcategory/BookRate'
import BookRecommend from './bookcategory/BookRecommend'
import BookVip from './bookcategory/BookVip'

@Preview
@Component
  /**
   * @desc：我的
   */

export default struct BookPage {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder
  TabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ top: 17, bottom: 7 })
      Divider()
        .strokeWidth(2)
        .color('#007DFF')
        .opacity(this.currentIndex === index ? 1 : 0)
    }.width(Constants.FULL_PERCENT)
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          BookDefault()
        }.tabBar(this.TabBuilder(0, '默认'))

        TabContent() {
          BookRate()
        }.tabBar(this.TabBuilder(1, '进度'))

        TabContent() {
          BookRecommend()
        }.tabBar(this.TabBuilder(2, '推荐值'))

        TabContent() {
          BookCategory()
        }.tabBar(this.TabBuilder(3, '分类'))

        TabContent() {
          BookVip()
        }.tabBar(this.TabBuilder(4, '付费'))
      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .barWidth(360)
      .barHeight(56)
      .animationDuration(400)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width(Constants.FULL_PERCENT)
      .height(Constants.FULL_PERCENT)
      .backgroundColor('#F1F3F5')
    }.width(Constants.FULL_PERCENT)
    .height(Constants.FULL_PERCENT)
  }
}