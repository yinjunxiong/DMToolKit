//
//  NSURL+DMURL.h
//  DMToolKitDemo
//
//  Created by Apple on 15/5/8.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (DMURL)

+ (NSURL *)URLWithStringContainsChinese:(NSString *)str;

@end
