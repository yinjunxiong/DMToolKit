//
//  NSURL+DMURL.m
//  DMToolKitDemo
//
//  Created by Apple on 15/5/8.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "NSURL+DMURL.h"

@implementation NSURL (DMURL)

+ (NSURL *)URLWithStringContainsChinese:(NSString *)str {
    return [NSURL URLWithString:[str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
}

@end
