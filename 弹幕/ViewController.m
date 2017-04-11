//
//  ViewController.m
//  弹幕
//
//  Created by 小码哥 on 2017/2/19.
//  Copyright © 2017年 xmg. All rights reserved.
//

#import "ViewController.h"
#import "XMGDanmuView.h"
#import "XMGDanmuModel.h"

@interface ViewController () <XMGDanmuViewProtocol>

@property (nonatomic, weak) XMGDanmuView *danmuView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XMGDanmuView *danmuView = [[XMGDanmuView alloc] initWithFrame:CGRectMake(100, 10, 250, 200)];
    danmuView.backgroundColor = [UIColor orangeColor];
    danmuView.delegate = self;
    self.danmuView = danmuView;
    [self.view addSubview:danmuView];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    XMGDanmuModel *model1 = [[XMGDanmuModel alloc] init];
    model1.beginTime = 3;
    model1.liveTime = 5;
    model1.content = @"想嘻嘻嘻嘻嘻嘻";
    
    XMGDanmuModel *model2 = [[XMGDanmuModel alloc] init];
    model2.beginTime = 3.2;
    model2.liveTime = 8;
    model2.content = @"想嘻嘻";
    
    [self.danmuView.models addObject:model1];
    [self.danmuView.models addObject:model2];
    
    
}

- (IBAction)pause:(id)sender {
    [self.danmuView pause];
}

- (IBAction)resume:(id)sender {
    [self.danmuView resume];
}

- (NSTimeInterval)currentTime {
    static double time = 0;
    time += 0.1;
    return time;
}

- (UIView *)danmuViewWithModel:(XMGDanmuModel *)model {
    
    UILabel *label = [UILabel new];
    label.text = model.content;
    [label sizeToFit];
    
    return label;
    
}

- (void)danmuViewDidClick:(UIView *)danmuView at:(CGPoint)point {
    
    NSLog(@"点击了弹幕--%@, %@", danmuView, NSStringFromCGPoint(point));
    
}


@end
