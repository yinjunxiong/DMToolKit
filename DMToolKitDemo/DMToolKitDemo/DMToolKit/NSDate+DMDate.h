//
//  NSDate+DMDateString.h
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DMDate)

- (NSString *)stringUseFormat:(NSString *)fmtStr;

+ (NSDate *)dateFromString:(NSString *)dateStr format:(NSString *)fmtStr;

@end
