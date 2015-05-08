//
//  NSURL+DMURL.h
//  DMToolKitDemo
//
//  Created by Apple on 15/5/8.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (DMURL)

/**
 *  使用UTF8来处理一个包含中文的路径（如使用AFNetworking时使用中文路径会报错，使用这个方法编码后就完美了）
 *
 *  @param str 原URL字符串
 *
 *  @return 编码后的URL
 */
+ (NSURL *)URLWithStringContainsChinese:(NSString *)str;

@end
