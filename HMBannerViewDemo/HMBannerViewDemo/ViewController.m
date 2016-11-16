//
//  ViewController.m
//  HMBannerViewDemo
//
//  Created by WyzcWin on 16/11/16.
//  Copyright © 2016年 lwl. All rights reserved.
//

#import "ViewController.h"
#import "HMBannerView.h"

@interface ViewController ()<HMBannerViewClickDelegate>

@property (nonatomic, strong) HMBannerView *bannerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.bannerView];
    self.bannerView.delegate = self;
    [self.bannerView updateBannerInfo:@[@"my_course_def", @"my_course_def", @"my_course_def", @"my_course_def"] timeInterval:3.0f defaultImg:[UIImage imageNamed:@"my_course_def"] styleType:BannerStyleCube];
}

- (HMBannerView *)bannerView{
    if (_bannerView == nil) {
        _bannerView = [[HMBannerView alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 200.0f)];
    }
    return _bannerView;
}

- (void)bannerClickWithIndex:(NSInteger)index{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
