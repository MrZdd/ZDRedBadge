//
//  ViewController.m
//  ZDRedBadge
//
//  Created by Macbook on 2018/1/11.
//  Copyright © 2018年 Macbook. All rights reserved.
//

#import "ViewController.h"
#import "UIView+DKSBadge.h"
@interface ViewController ()
#pragma mark ===========UILabel====
@property(nonatomic,strong)UILabel *MessLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.MessLabel];
    [self.MessLabel showBadgeWithCount:83];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2.0*NSEC_PER_SEC),dispatch_get_main_queue(), ^{
        /** button，uiview用法一样*/
        [self.MessLabel showBadge];
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0*NSEC_PER_SEC),dispatch_get_main_queue(), ^{
        //关闭
        [self.MessLabel hidenBadge];
    });

}
-(UILabel *)MessLabel
{
    if (!_MessLabel) {
        _MessLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
        _MessLabel.backgroundColor = [UIColor redColor];
    }
    return _MessLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
