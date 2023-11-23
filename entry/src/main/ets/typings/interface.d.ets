import {ChatMode} from './enum'
//列表   image  图片  name 名称  isShow 是否展示
export interface ListComs{
  image:string
  name:string
  isShow?:Boolean
  path?:string
  buttonType?:string
  buttonIsOn?:Boolean
}

export interface WxList{
  image:string
  name:string
  desc:string
  time:string
  isremind:Boolean
  chatMode:ChatMode
  code:string
}