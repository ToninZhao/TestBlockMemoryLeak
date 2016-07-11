//
//  TestBlock.m
//  TestBlockleak
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import "TestBlock.h"

@implementation TestBlock
+ (void)testBlockleak:(void (^)())testOCBlock {
    testOCBlock();
}
@end
