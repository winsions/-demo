//
//  XMGDanmuModelProtocol.h
//  弹幕
//
//  Created by 小码哥 on 2017/2/19.
//  Copyright © 2017年 xmg. All rights reserved.
//

@protocol XMGDanmuModelProtocol <NSObject>

@required
/** 弹幕的开始时间 */
@property (nonatomic, readonly) NSTimeInterval beginTime;
/** 弹幕的存活时间 */
@property (nonatomic, readonly) NSTimeInterval liveTime;

@end
