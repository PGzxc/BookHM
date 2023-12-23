import SettingItem from '../bean/SettingItem'
import Constants from '../utils/Constants'

@Preview
@Component
export default struct SettingCell {
  searchEvent: (event: ClickEvent) => void
  moreEvent: (event: ClickEvent) => void
  checkedEvent: (event: ClickEvent) => void
  giftEvent: (event: ClickEvent) => void
  item: SettingItem

  build() {
    Row() {
      Row({ space: 12 }) {
        Image(this.item.img)
          .width($r('app.float.22vp'))
          .height($r('app.float.22vp'))
        Text(this.item.title)
          .fontSize($r('app.float.16fp'))
      }

      if (this.item.others === null) {
        Image($r('app.media.ic_right_grey'))
          .width($r('app.float.12vp'))
          .height($r('app.float.24vp'))
      } else {
        Toggle({ type: ToggleType.Switch, isOn: false })
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding({
      left: $r('app.float.8vp'),
      right: $r('app.float.22vp')
    })
  }
}