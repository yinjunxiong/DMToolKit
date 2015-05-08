//
//  UIColor+DMColor.h
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DMColor)

+ (UIColor *)colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpah;

+ (UIColor *)colorWithHexString:(NSString *)hexStr;

@end
