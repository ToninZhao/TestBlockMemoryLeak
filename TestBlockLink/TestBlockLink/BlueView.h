//
//  BlueView.h
//  TestBlockleak
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^BlueViewBlock)();
@interface BlueView : UIView
@property (nonatomic, copy) BlueViewBlock blueViewBlock;
@end
