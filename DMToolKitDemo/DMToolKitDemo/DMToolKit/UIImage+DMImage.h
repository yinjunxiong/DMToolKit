//
//  UIImage+DMImage.h
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DMImage)

/**
 *  获取模糊的图片
 *
 *  @param blur 模糊值
 *
 *  @return 模糊后的图片
 */
- (UIImage *)imageWithBlur:(CGFloat)blur;

/**
 *  获取裁剪后的图片
 *
 *  @param contentFrame 相对于原图的frame
 *
 *  @return 裁剪后的图片
 */
- (UIImage *)imageWithFrame:(CGRect)contentFrame;

@end
