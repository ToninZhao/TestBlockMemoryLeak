//
//  TestBlockleakVC.m
//  TestBlockleak
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import "TestBlockLeakVC.h"
#import "BlueView.h"
#import "TestBlock.h"
@interface TestBlockLeakVC ()
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *red2View;
@property (nonatomic, copy) void(^TestBlock)();

@end

@implementation TestBlockLeakVC

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.view.backgroundColor = [UIColor lightGrayColor];
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(50, 70, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    self.redView = redView;
    _red2View = redView;
    __weak typeof(self) weakSelf = self;
    _TestBlock = ^(){
        weakSelf.redView.frame = CGRectMake(100, 150, 50, 50);
    };
    BlueView *blueView = [BlueView new];
    blueView.backgroundColor = [UIColor blueColor];
    blueView.frame = CGRectMake(0, 200, 50, 50);
    [self.view addSubview:blueView];
    blueView.blueViewBlock = ^{
        [redView removeFromSuperview];
        NSLog(@"%@", weakSelf.view.backgroundColor);
        //NSLog(@"%@", NSStringFromCGRect(self.view.bounds));
    };
    [TestBlock testBlockleak:^{
        NSLog(@"%@", NSStringFromCGRect(self.view.bounds));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"dealloc");
}

@end
