//
//  XMGDanmuView.h
//  弹幕
//
//  Created by 小码哥 on 2017/2/19.
//  Copyright © 2017年 xmg. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "XMGDanmuModelProtocol.h"

@protocol XMGDanmuViewProtocol <NSObject>

@property (nonatomic, readonly) NSTimeInterval currentTime;

- (UIView *)danmuViewWithModel:(id<XMGDanmuModelProtocol>)model;


- (void)danmuViewDidClick:(UIView *)danmuView at:(CGPoint)point;

@end


@interface XMGDanmuView : UIView


@property (nonatomic, weak) id<XMGDanmuViewProtocol> delegate;

@property (nonatomic, strong) NSMutableArray <id <XMGDanmuModelProtocol>>*models;

- (void)pause;
- (void)resume;


@end
