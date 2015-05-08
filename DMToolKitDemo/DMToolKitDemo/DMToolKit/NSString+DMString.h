//
//  NSString+DMString.h
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DMString)

/**
 *  使用MD5加密字符串
 *
 *  @return 加密后的字符串
 */
- (NSString *)MD5String;

@end
