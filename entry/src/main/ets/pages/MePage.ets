import ApiResponse from '../api/ApiResponse'
import SettingItem from '../bean/SettingItem'
import Constants from '../utils/Constants'
import MeHead from '../view/MeHead'
import SettingCell from '../view/SettingCell'

@Preview
@Component
  /**
   * @desc：我的
   */

export default struct MePage {
  build() {
    Column() {
      MeHead()
      Column() {
        List() {
          ForEach(ApiResponse.getSettingListData, (settingItem: SettingItem) => {
            ListItem() {
              SettingCell({ item: settingItem })
            }
            .height($r('app.float.48vp'))
          }, item => JSON.stringify(item))
        }
        .onClick(() => {})
        .backgroundColor($r('app.color.white_smoke'))
        .divider({
          strokeWidth: $r('app.float.1vp'),
          color: Color.Grey,
          startMargin: $r('app.float.42vp'),
          endMargin: $r('app.float.24vp')
        })
        .borderRadius($r('app.float.16vp'))
        .padding({ top: $r('app.float.4vp'),
          bottom: $r('app.float.4vp') })
      }
      // .borderRadius(5)
      .padding({ top: 5, bottom: 5, left: 10, right: 10 })
    }

    .height(Constants.FULL_PERCENT)
  }
}