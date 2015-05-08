//
//  UIColor+DMColor.m
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "UIColor+DMColor.h"

@implementation UIColor (DMColor)

+ (UIColor *)colorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpah {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpah];
}

+ (UIColor *)colorWithHexString:(NSString *)hexStr {
    if ([hexStr length]!=6 && [hexStr length]!=3)
    {
        return nil;
    }
    
    NSUInteger digits = [hexStr length]/3;
    CGFloat maxValue = (digits==1)?15.0:255.0;
    
    NSUInteger result = 0;
    sscanf([[hexStr substringWithRange:NSMakeRange(0, digits)] UTF8String], "%x", &result);
    CGFloat red = result / maxValue;
    sscanf([[hexStr substringWithRange:NSMakeRange(digits, digits)] UTF8String], "%x", &result);
    CGFloat green = result / maxValue;
    sscanf([[hexStr substringWithRange:NSMakeRange(digits * 2, digits)] UTF8String], "%x", &result);
    CGFloat blue = result / maxValue;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
