//
//  XMGDanmuModel.h
//  弹幕
//
//  Created by 小码哥 on 2017/2/19.
//  Copyright © 2017年 xmg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMGDanmuModelProtocol.h"

@interface XMGDanmuModel : NSObject<XMGDanmuModelProtocol>

/** 弹幕的开始时间 */
@property (nonatomic, assign) NSTimeInterval beginTime;
/** 弹幕的存活时间 */
@property (nonatomic, assign) NSTimeInterval liveTime;

@property (nonatomic, copy) NSString *content;

@end
