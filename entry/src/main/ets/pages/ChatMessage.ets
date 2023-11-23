import GroupList from '../components/GroupList'
import {ListComs} from '../typings/interface'
import router from '@ohos.router'
import Back from '../components/Back'
type Arr={
  data:ListComs[]
}
@Entry
@Component
export default struct ChatMessage {
  @State title:string= '聊天信息'
  @State arr:Arr[]=[
    {
      "data":[
        {
          "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
          "name":"查找聊天信息",
          "isShow":true
        }
      ]
    },{
    "data":[
      {
        "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
        "name":"消息免打扰",
        "isShow":true,
        "buttonType":"Switch",
        "buttonIsOn":true
      },
      {
        "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
        "name":"置顶聊天",
        "isShow":true,
        "buttonType":"Switch",
        "buttonIsOn":false
      },
      {
       "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
       "name":"提醒",
       "isShow":true,
        "buttonType":"Switch",
        "buttonIsOn":false
      }
    ]
  },
    {
      "data":[
        {
          "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
          "name":"设置当前聊天背景",
          "isShow":true
        }
      ]
    },
    {
      "data":[
        {
          "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
          "name":"清空聊天记录",
          "isShow":true
        }
      ]
    },{
    "data":[
      {
        "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
        "name":"投诉",
        "isShow":true
      }
    ]
  },
  ]
  scroller: Scroller = new Scroller()
  build(){
    Navigation(){
      Row(){
        Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3')
          .width(60).height(60).borderRadius(10)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/User'
            })
          })
      }.justifyContent(FlexAlign.Start).width('100%').height(100).backgroundColor($r('app.color.wx_white'))
      .padding({left:20}).margin({bottom:20})
      GroupList({arr:$arr,imageIsShow:false})
    }
    .title({builder:this.getTitle(this.title),height:60}).backgroundColor($r('app.color.wx_grey'))
  }
  @Builder getTitle(title:string){
      Row(){
        Back()
        Text(title)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Text('')
      }.width('100%').height('100%').justifyContent(FlexAlign.SpaceBetween).padding({right:20})
    }
}