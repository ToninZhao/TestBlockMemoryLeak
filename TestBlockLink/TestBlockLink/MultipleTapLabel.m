//
//  MultipleTapLabel.m
//  TestBlockLink
//
//  Created by ZhaoNing on 16/7/11.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import "MultipleTapLabel.h"

@implementation MultipleTapLabel
{
    NSRange _range;
}


- (instancetype)init {
    if (self = [super init]) {
        self.text = @"我在测试多次点击lable事件,一次点击,二次点击!";
        NSMutableAttributedString *textAtt = [[NSMutableAttributedString alloc] initWithString:self.text];
        self.userInteractionEnabled = YES;
        
        if([self.text rangeOfString:@"一次点击"].location != NSNotFound)
        {
            NSRange range = [self.text rangeOfString:@"一次点击"];
            
            _range = range;
            [textAtt setAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:15.0], NSFontAttributeName, nil] range:range];
            self.attributedText = textAtt;
        }

    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = event.allTouches.anyObject;
    CGPoint point = [touch locationInView:self];
    CGPoint newPoint = [self convertPoint:point toView:self];
    CGRect hitRect;
    if (_range.location + _range.length < self.bounds.size.width) {
        hitRect = CGRectMake(_range.location, 0, _range.length + _range.location, self.bounds.size.height);
    }
    if (CGRectContainsPoint(hitRect, point)) {
        NSLog(@"点击啦");
    }else {
        NSLog(@"不懂");
    }
    
}
@end
