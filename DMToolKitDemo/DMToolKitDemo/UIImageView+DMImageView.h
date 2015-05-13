//
//  UIImageView+DMImageView.h
//  DMToolKitDemo
//
//  Created by Apple on 15/5/11.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (DMImageView)

@property (strong, nonatomic) NSMutableData *downloadData;
@property (strong, nonatomic) NSString *fileName;
@property (strong, nonatomic) UIActivityIndicatorView *indicatorView;

- (NSString *)getFileName:(NSString *)fileName;

- (void)setImageWithURLString:(NSString *)URLString;

- (void)setImageWithURLString:(NSString *)URLString placeholderImage:(UIImage *)placeholder;

+ (void)clearCacheOnDisk;

@end
