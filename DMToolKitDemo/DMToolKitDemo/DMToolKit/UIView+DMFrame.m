//
//  UIView+DMFrame.m
//  DMToolKitDemo
//
//  Created by yin on 15/5/8.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "UIView+DMFrame.h"

@implementation UIView (DMFrame)
@dynamic str;
-(CGFloat)W{
    return self.frame.size.width;
}
-(CGFloat)H{
    return self.frame.size.height;
}
-(CGFloat)X{
    return self.frame.origin.x;
}
-(CGFloat)Y{
    return self.frame.origin.y;
}
-(CGFloat)endX{
    
    return self.frame.origin.x+self.frame.size.width;
}
-(CGFloat)endY{
    return self.frame.origin.y+self.frame.size.height;
}

- (UIButton *)buttonWithTag:(NSInteger ) tag{
    UIButton *btn = (UIButton *)[self viewWithTag:tag];
    return btn;
}

- (UITextField *)textFieldWithTag:(NSInteger) tag{
    UITextField *text = (UITextField *)[self viewWithTag:tag];
    return text;
}

- (UILabel *)lableWithTag:(NSInteger) tag{
    UILabel *lable = (UILabel *)[self viewWithTag:tag];
    return lable;
}

- (UIImageView *)imageWithTag:(NSInteger) tag{
    UIImageView *image = (UIImageView *)[self viewWithTag:tag];
    return image;
}

- (void)setX:(float)X{
    [self setFrame:CGRectMake(X, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
}
- (void)setY:(float)Y{
    [self setFrame:CGRectMake(self.frame.origin.x, Y, self.frame.size.width, self.frame.size.height)];
}
- (void)setH:(float)H{
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, H)];
}
- (void)setW:(float)W{
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, W, self.frame.size.height)];
}

@end
