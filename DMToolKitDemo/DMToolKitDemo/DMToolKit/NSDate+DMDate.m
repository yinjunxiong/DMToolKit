//
//  NSDate+DMDateString.m
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "NSDate+DMDate.h"

@implementation NSDate (DMDate)

- (NSString *)stringUseFormat:(NSString *)fmtStr {
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = fmtStr;
    return [fmt stringFromDate:self];
}

+ (NSDate *)dateFromString:(NSString *)dateStr format:(NSString *)fmtStr {
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = fmtStr;
    return [fmt dateFromString:dateStr];
}

@end
