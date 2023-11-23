import router from '@ohos.router';
import Back from '../components/Back';
import {ChatMode} from '../typings/enum'
import {WxList} from '../typings/interface'
interface List {
  image:string
  name:string
  code:string
  content:string
}
enum Visible{
  Visible='Visible',
  None='None'
}
@Entry
@Component
struct Chat {
  @State title:string='zhangsan'
  @State myCode:string='0001'
  @State code:string='0002'
  @State chatMode:ChatMode=ChatMode.One //one 个人聊天  all 群聊
  @State text:string=''
  @State visible:Visible=Visible.None
  scroller: Scroller = new Scroller()
  @State contentList:List[]=[
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'zhangsan',
      code:'0002',
      content:'你好'
    },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'wanqiu',
      code:'0001',
      content:'你好'
    }
  ]
  private tabsController: TabsController = new TabsController()
  aboutToAppear(){
    const params:Partial<WxList>=router.getParams()
    this.chatMode=params.chatMode
    this.title=params.name
    this.code=params.code
  }

  build(){
    Navigation(){
      Stack({alignContent : Alignment.Bottom}) {
        //聊天
          Scroll(this.scroller) {
            List({ space: 0, initialIndex: 0 }) {
              ForEach(this.contentList, (item, index) => {
                ListItem() {
                  if (this.chatMode == ChatMode.One) this.getListOne(this.myCode, item)
                  else if (this.chatMode == ChatMode.All) this.getListAll(this.myCode, item)
                }
              }, item => item)
            }.height('100%')
          }.padding({ bottom: 70 }).height('100%')

        //输入框
        Stack() {
          Column(){
            Row() {
              this.bottoms()
            }.height(60).width('100%').backgroundColor($r('app.color.wx_white'))
            Row(){
              this.appList()
            }.height(250).visibility(Visibility[this.visible]).animation({
              duration: 500, // 动画时长
              curve: Curve.EaseOut, // 动画曲线
              delay: 200, // 动画延迟
              iterations: 1, // 播放次数
              playMode: PlayMode.Normal // 动画模式
            })
          }
        }
      } .width('100%').height('100%').onClick(()=>{
        if(this.visible==Visible.Visible) this.visible=Visible.None
      })
    }
    .title({builder:this.getTitle(this.title),height:60})
    .backgroundColor($r('app.color.wx_grey'))


  }
  @Builder navigationMenus(){
    Row(){
      Text('...').fontWeight(FontWeight.Bold)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/ChatMessage'
          })
        })
    }
  }
  @Builder getTitle(title:string){
     Row(){
       Back()
      Text(title)
      .fontSize(20)
      .fontWeight(FontWeight.Bold)
       this.navigationMenus()
     }.width('100%').height('100%').justifyContent(FlexAlign.SpaceBetween)
    .padding({right:20})
  }
  @Builder bottoms() {
    Row({space:20}) {
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3').width(40).height(40).borderRadius(50)
        TextInput({placeholder:'输入',text:this.text}).height(40).width('60%')
        .onChange((value:string)=>{1
          this.text=value.trim()
        }).onClick(()=>{
          if(this.visible==Visible.Visible) this.visible=Visible.None
        })
        if(this.text==''){
          Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3').width(40).height(40).borderRadius(50)
          Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3').width(40).height(40).borderRadius(50)
            .onClick(()=>{
             if(this.visible==Visible.None) this.visible=Visible.Visible
              else if(this.visible==Visible.Visible) this.visible=Visible.None
            })
        }else{
          Button('发送').backgroundColor($r('app.color.wx_green'))
            .onClick(()=>{
              this.contentList.push({
                image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
                name:'wanqiu',
                code:'0001',
                content:this.text
              })
              this.text=''
            })
        }

      }

    }.height(60).width('100%')
  }
  //列表的每一列  群聊天
  @Builder getListAll(myCode:string,item:List){
      Flex({justifyContent:FlexAlign.Start,alignItems:ItemAlign.Center,direction:myCode==item.code?FlexDirection.RowReverse:FlexDirection.Row}){
        Image(item.image).width(50).height(50).borderRadius(50).margin({right:10,left:10})
        Column(){
          if(myCode!==item.code){
            Row(){
              Text(item.name)
            }
            .justifyContent(FlexAlign.Start)
            .padding({bottom:10})
          }

          Row(){
            Text(item.content).fontSize(18).fontWeight(FontWeight.Bold)
          }
          .constraintSize({minWidth:100,minHeight:60})
          .backgroundColor(myCode==item.code?$r('app.color.wx_green'):$r('app.color.wx_white'))
          .justifyContent(myCode==item.code?FlexAlign.End:FlexAlign.Start)
          .padding({left:10,right:10})
          .borderRadius(20)
        }.alignItems(myCode==item.code?HorizontalAlign.End:HorizontalAlign.Start)

      }
    .width('100%').padding({right:10,left:10,top:20,bottom:20})
  }

  //列表的每一列  个人聊天
  @Builder getListOne(myCode:string,item:List){
    Flex({justifyContent:FlexAlign.Start,alignItems:ItemAlign.Center,direction:myCode==item.code?FlexDirection.RowReverse:FlexDirection.Row}){
      Image(item.image).width(50).height(50).borderRadius(50).margin({right:10,left:10})
      .onClick(()=>{
        router.pushUrl({
          url:'pages/User'
        })
      })
      Row(){
        Text(item.content).fontSize(18).fontWeight(FontWeight.Bold)
      }
      .constraintSize({minWidth:100,minHeight:60})
      .backgroundColor(myCode==item.code?$r('app.color.wx_green'):$r('app.color.wx_white'))
      .justifyContent(myCode==item.code?FlexAlign.End:FlexAlign.Start)
      .padding({left:10,right:10})
      .borderRadius(20)
    }
    .width('100%').padding({right:10,left:10,top:20,bottom:20})
  }
  private appListData:any=[
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'相册'
    },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'拍照'
    },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'视频通话'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'位置'
  }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'红包'
  }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'转账'
  },

  ]
  //应用列表   加号
  @Builder appList(){
    Flex({wrap:FlexWrap.Wrap,justifyContent:FlexAlign.Start}){
        ForEach(this.appListData,(value,index)=>{
            Column({space:10}){
              Image(value.image).width(60).height(60).borderRadius(10)
              Text(value.name)
            }.width('25%').margin({bottom:10})
        })
    }
  }
}