import router from '@ohos.router';
import {ChatMode} from '../typings/enum'
import {WxList} from '../typings/interface'
@Entry
@Component
export default struct Wx {
  @State title:string='#信'
  scroller: Scroller = new Scroller()
  @State list:WxList[]=[
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'张三1',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.One,
      code:'10002'
    },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    }, {
    image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
    name:'张三1',
    desc:'hello',
    time:'10:12',
    isremind:true,
    chatMode:ChatMode.One,
    code:'10002'
  },
    {
      image:'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc03a255b-2dee-4ec6-afd3-9b5ca0af9d55%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1702706291&t=02b2a5726e216d5d3b22053e74dac5c7',
      name:'一家人',
      desc:'hello',
      time:'10:12',
      isremind:true,
      chatMode:ChatMode.All,
      code:'20001'
    },

  ]
  build() {
      Navigation(){
          Scroll(this.scroller){
            List({ space: 0, initialIndex: 0 }){
              ForEach(this.list,(item,index)=>{
                ListItem(){
                  this.getList(item)
                }.onClick(()=>{
                  router.pushUrl({
                    url:'pages/Chat',
                    params:item
                  })
                }).bindContextMenu(this.MenuBuilder, ResponseType.LongPress)
              }, item => item)
            }.backgroundColor($r('app.color.wx_white')).height('100%')
            .divider({strokeWidth:1,color:$r('app.color.wx_grey'),startMargin:80})
          }
      }
      .title({builder:this.getTitle(this.title),height:60})
  }
  @Builder MenuBuilder(){
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
      Text('标记未读')
        .fontSize(20)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)
      Divider().height(10)
      Text('置顶聊天')
        .fontSize(20)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)
      Divider().height(10)
      Text('不显示该聊天')
        .fontSize(20)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)
      Divider().height(10)
      Text('删除该聊天')
        .fontSize(20)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)
    }.width('60%')
  }
  @Builder getTitle(title:string){
    Row(){
        Text(title)
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
        }.width('100%').height(65).justifyContent(FlexAlign.Center)
  }
  //列表的每一列
  @Builder getList(item:WxList){
    Row(){
      Row({space:10}){
        Image(item.image).width(50).height(50).borderRadius(50)
        Column(){
          Text(item.name).fontSize(18).fontWeight(FontWeight.Bold)
          Text(item.desc).fontSize(16)
        }.alignItems(HorizontalAlign.Start)
      }
      Column(){
        Text(item.time).fontSize(20)
        Image(item.isremind?'':'')
      }
    }.width('100%').height(70).justifyContent(FlexAlign.SpaceBetween).padding(20)
  }
  }