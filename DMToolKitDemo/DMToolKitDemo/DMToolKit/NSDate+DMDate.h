//
//  NSDate+DMDateString.h
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DMDate)

/**
 *  获取一个指定格式的时间字符串
 *
 *  @param fmtStr NSDateFormatter的时间格式
 *
 *  @return 时间字符串
 */
- (NSString *)stringUseFormat:(NSString *)fmtStr;

/**
 *  根据指定时间字符串和时间格式得到NSDate对象
 *
 *  @param dateStr 时间字符串
 *  @param fmtStr  NSDateFormatter的时间格式
 *
 *  @return NSDate对象
 */
+ (NSDate *)dateFromString:(NSString *)dateStr format:(NSString *)fmtStr;

@end
