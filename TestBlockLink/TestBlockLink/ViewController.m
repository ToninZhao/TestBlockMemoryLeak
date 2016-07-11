//
//  ViewController.m
//  TestBlockleak
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import "ViewController.h"
#import "TestBlockLeakVC.h"
#import "MultipleTapLabel.h"
@interface ViewController ()
@property (nonatomic, copy) NSString *name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *name = @"Tom";
    NSLog(@"name:%p", name);
    self.name = [name copy];
    NSLog(@"self.name:%p", self.name);
    MultipleTapLabel *label = [MultipleTapLabel new];
    label.frame = CGRectMake(0, 100, self.view.bounds.size.width, 30);
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    TestBlockLeakVC *vc = [TestBlockLeakVC new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
