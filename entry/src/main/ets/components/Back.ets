//返回按钮
import router from '@ohos.router'
@Component
export default struct Back {
  build() {
    Polyline()
      .width(50)
      .height(50)
      .backgroundColor(Color.Transparent)
      .fillOpacity(0)
      .stroke(Color.Black)
      .strokeWidth(3)
      .points([[20, 15], [10, 25], [20, 35]])
        // 设置折线拐角处为圆弧
      .strokeLineJoin(LineJoinStyle.Round)
        // 设置折线两端为半圆
      .strokeLineCap(LineCapStyle.Round)
      .onClick(()=>{
        router.back()
      })
  }

}