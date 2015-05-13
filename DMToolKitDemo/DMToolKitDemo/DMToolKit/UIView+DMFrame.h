//
//  UIView+DMFrame.h
//  DMToolKitDemo
//
//  Created by yin on 15/5/8.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DMFrame)
-(CGFloat)W;//获取控件的宽度
-(CGFloat)X;//获取控件的初始化X坐标
-(CGFloat)Y;//获取控件的初始化Y坐标
-(CGFloat)H;//获取控件的高度
-(CGFloat)endX;//获取控件结束点的X坐标
-(CGFloat)endY;//获取控件结束点的Y坐标

- (UIButton *)buttonWithTag:(NSInteger ) tag;
- (UITextField *)textFieldWithTag:(NSInteger) tag;
- (UILabel *)lableWithTag:(NSInteger) tag;
- (UIImageView *)imageWithTag:(NSInteger) tag;

- (void)setX:(float)X;//设置控件X坐标
- (void)setY:(float)Y;//设置控件Y坐标
- (void)setH:(float)H;//设置控件高度
- (void)setW:(float)W;//设置控件宽度
@end
