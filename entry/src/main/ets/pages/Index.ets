// @ts-nocheck
import Wx from './Wx'
import Address_book from './AddressBook'
import Find from './Find'
import My from './My'
@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()
  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      TabContent() {
        Wx()
      }
      .tabBar(this.TabBuilder($r('app.string.tabs_wechat'), 0))
      TabContent() {
        Address_book()
      }
      .tabBar(this.TabBuilder($r('app.string.tabs_address_book'), 1))
      TabContent() {
        Find()
      }
      .tabBar(this.TabBuilder($r('app.string.tabs_find'), 2))
      TabContent() {
        My()
      }
      .tabBar(this.TabBuilder($r('app.string.tabs_my'), 3))
    }
    .backgroundColor($r('app.color.wx_grey'))
    .barWidth('100%')
    .barHeight(60)
    .onChange((index: number) => {
      this.currentIndex = index;
    })
  }
  @Builder TabBuilder(title: string, targetIndex: number) {
    Column() {
      // Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
      //   .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);
    })
   }
  }