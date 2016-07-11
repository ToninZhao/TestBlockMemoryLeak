//
//  BlueView.m
//  TestBlockleak
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import "BlueView.h"

@implementation BlueView

- (instancetype)init {
    if (self = [super init]) {
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapView)];
        [self addGestureRecognizer:tap];
    }
    return self;
}
- (void)tapView {
    self.blueViewBlock();
}
@end
