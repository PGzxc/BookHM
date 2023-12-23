import ApiResponse from '../api/ApiResponse'
import Constants from '../utils/Constants'
import VoiceList from '../view/VoiceList'

@Preview
@Component
  /**
   * @desc：我的
   */

export default struct VoicePage {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  //自定义Tab
  @Builder
  TabBuilder(index: number) {
    Column() {
      Text(ApiResponse.voiceTabData[index])
        .height(Constants.FULL_PERCENT)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 500 : 400)
    }
    .padding({ left: $r('app.float.8vp'), right: $r('app.float.8vp') })
    .margin({
      left: index === 0 ? $r('app.float.8vp') : 0,
      right: index === ApiResponse.voiceTabData.length - 1 ? $r('app.float.8vp') : 0
    })
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        ForEach(ApiResponse.voiceTabData, (title: string, index: number) => {
          TabContent() {
            VoiceList({currentIndex: $currentIndex})
          }.tabBar(this.TabBuilder(index))
        }, (tabItem: string) => JSON.stringify(tabItem))
      }
      .vertical(false)
      .barMode(BarMode.Scrollable)
      .barHeight(56)
      .animationDuration(400)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width(Constants.FULL_PERCENT)
      .height(Constants.FULL_PERCENT)
      .backgroundColor('#F1F3F5')
    }
    .width(Constants.FULL_PERCENT)
    .height(Constants.FULL_PERCENT)


  }
}