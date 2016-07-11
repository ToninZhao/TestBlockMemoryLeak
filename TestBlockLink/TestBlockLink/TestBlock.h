//
//  TestBlock.h
//  TestBlockleak
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestBlock : NSObject
+ (void)testBlockleak:(void(^)()) testOCBlock;
@end
