import GroupList from '../components/GroupList'
import {ListComs} from '../typings/interface'
type Arr={
  data:ListComs[]
}
@Entry
@Component
export default struct Find {
  @State title:string= '发现'
  @State arr:Arr[]=[
    {
      "data":[
        {
          "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
          "name":"朋友圈",
          "isShow":true
        }
      ]
    },{
    "data":[
      {
        "image":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F89b5e313-1502-4dcc-82b9-1d9625bfa387%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=2b2e1a0ea7b7ab43d203e777eec115f3",
        "name":"视频号",
        "isShow":true
      }
    ]
  },
]
  scroller: Scroller = new Scroller()
  build(){
    Navigation(){
      GroupList({arr:$arr,imageIsShow:true})
  }
  .title({builder:this.getTitle(this.title),height:60})
  }
  @Builder getTitle(title:string){
    Row(){
      Text(title)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
    }.width('100%').height(65).justifyContent(FlexAlign.Center)
  }
}