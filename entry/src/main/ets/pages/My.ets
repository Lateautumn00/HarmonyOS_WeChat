import GroupList from '../components/GroupList'
import {ListComs} from '../typings/interface'
type Arr={
  data:ListComs[]
}
@Entry
@Component
export default struct My {
  @State title:string= '我'
  @State arr:Arr[]= [
      {
        "data":[
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"服务",
            "isShow":true
          }
        ]
      },
      {
        "data":[
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"收藏",
            "isShow":true
          },
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"朋友圈",
            "isShow":true
          },
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"视频号",
            "isShow":true
          },
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"卡包",
            "isShow":true
          },
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"表情",
            "isShow":true
          }
        ]
      },
      {
        "data":[
          {
            "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
            "name":"设置",
            "isShow":true
          }
        ]

      }
    ]
  build(){
    Navigation(){
      //头部
      Column(){
        Row(){
          Row({space:10}){
            Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3').width(80).height(80)
            Column({space:10}){
              Text('晚秋').fontWeight(FontWeight.Bold).fontSize(25)
              Text('微信号：clc91jjjj')
            }.alignItems(HorizontalAlign.Start)
          }
          Column(){}
        }.justifyContent(FlexAlign.SpaceBetween).width('100%').padding({left:20})
        Row(){
          //状态
        }
      }.margin({bottom:20}).padding({top:20,bottom:20}).backgroundColor($r('app.color.wx_white'))
      GroupList({arr:$arr,imageIsShow:true})
    }
    .title({builder:this.getTitle(this.title),height:60})
  }

  @Builder getTitle(title:string){
    Row(){
      // Text(title)
      //   .fontSize(20)
      //   .fontWeight(FontWeight.Bold)
    }.width('100%').height('100%').justifyContent(FlexAlign.Center).backgroundColor($r('app.color.wx_white'))
  }
}