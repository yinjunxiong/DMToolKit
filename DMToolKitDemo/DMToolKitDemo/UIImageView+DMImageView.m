//
//  UIImageView+DMImageView.m
//  DMToolKitDemo
//
//  Created by Apple on 15/5/11.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "UIImageView+DMImageView.h"
#import "NSString+DMString.h"

@interface UIImageView ()<NSURLConnectionDataDelegate> 

@end

@implementation UIImageView (DMImageView)
@dynamic downloadData, fileName, indicatorView;

-(NSString *)getFileName:(NSString *)fileName{
    return fileName;
}

- (NSString *)cachePath {
    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, NO) firstObject] stringByAppendingPathComponent:@"DMImageView"];
}

- (BOOL)existWithFileName:(NSString *)fileName {
    if ([[NSFileManager defaultManager] fileExistsAtPath:[[self cachePath] stringByAppendingPathComponent:fileName]]) {
        return YES;
    }
    return NO;
}

- (void)setImageWithURLString:(NSString *)URLString {
    
    self.fileName = [URLString MD5String];
    if ([self existWithFileName:self.fileName]) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            self.image = [[UIImage alloc] initWithContentsOfFile:[[self cachePath] stringByAppendingPathComponent:self.fileName]];
        });
    } else {
        if (!self.indicatorView) {
            self.indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.frame) - 30) / 2.0, (CGRectGetHeight(self.frame) - 30) / 2.0, 30, 30)];
        }
        [self addSubview:self.indicatorView];
        [self.indicatorView startAnimating];
    }
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:URLString]] delegate:self];
    [connection start];
}

- (void)setImageWithURLString:(NSString *)URLString placeholderImage:(UIImage *)placeholder {
    self.image = placeholder;
    [self setImageWithURLString:URLString];
}

+ (void)clearCacheOnDisk {
    NSError *error;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager removeItemAtPath:[[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, NO) firstObject] stringByAppendingPathComponent:@"DMImageView"] error:&error];
    if (error) {
        NSLog(@"%@", error);
    }
}

#pragma mark - NSURLConnectionDelegate

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    self.downloadData = nil;
    [self.indicatorView removeFromSuperview];
    self.indicatorView = nil;
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    if (!self.downloadData)
        self.downloadData = [[NSMutableData alloc] initWithCapacity:0];
    [self.downloadData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    [self.indicatorView removeFromSuperview];
    self.indicatorView = nil;
    self.image = [UIImage imageWithData:self.downloadData];
    [[NSFileManager defaultManager] createFileAtPath:[[self cachePath] stringByAppendingPathComponent:self.fileName] contents:self.downloadData attributes:nil];
}


@end
