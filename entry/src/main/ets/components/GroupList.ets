//列表分组
import {ListComs} from '../typings/interface'
import router from '@ohos.router'
@Component
export default struct GroupList {
  @Link arr:any
  @Prop imageIsShow:boolean
  build() {
    List({ space: 10, initialIndex: 0 }){
      ForEach(this.arr,(item,index)=>{
        ListItemGroup({header:this.itemHead(item.title)}){
          ForEach(item.data,(em,i)=>{
            ListItem(){
              if(em.isShow){
                Column(){
                  this.getList(em)
                  if(i<item.data.length-1) Divider().strokeWidth(1).color($r('app.color.wx_grey')).margin({left:this.imageIsShow?80:20})
                }

              }
            }
          })
        }
        //.divider({strokeWidth:1,color:$r('app.color.wx_grey'),startMargin:this.imageIsShow?80:0})
        .backgroundColor($r('app.color.wx_white'))
      })
    }
  }
  @Builder itemHead(text:string) {
    if(text){
      Text(text)
        .fontSize(20)
        .width("100%")
        .padding(10)
        .backgroundColor($r('app.color.wx_grey'))
    }

  }
  //列表的每一列
  @Builder getList(item:ListComs){
    Flex({justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center}){
      Row({space:10}){
        if(this.imageIsShow) Image(item.image).width(50).height(50).borderRadius(50).onClick(()=>{
          router.pushUrl({url:item.path})
        })
        Text(item.name).fontSize(18).fontWeight(FontWeight.Bold)
      }.width('100%').height(70).padding(20)

      if(item.buttonType){
        if (item.buttonType=='Switch') {
          Toggle({ type: ToggleType.Switch, isOn: item.buttonIsOn as boolean })
            .selectedColor('#007DFF')
            .switchPointColor('#FFFFFF')
            .onChange((isOn: boolean) => {
              console.info('Component status:' + isOn)
            })
        }
      }
    }

  }
}