//
//  UIImage+DMImage.m
//  DMToolKit
//
//  Created by Apple on 15/5/6.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "UIImage+DMImage.h"

@implementation UIImage (DMImage)

- (UIImage *)imageWithBlur:(CGFloat)blur {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *inputImage = [[CIImage alloc] initWithImage:self];
    // create gaussian blur filter
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [filter setValue:inputImage forKey:kCIInputImageKey];
    [filter setValue:[NSNumber numberWithFloat:blur] forKey:@"inputRadius"];
    // blur image
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    UIImage *image = [UIImage imageWithCGImage:cgImage];
    CGImageRelease(cgImage);
    return image;
}

- (UIImage *)imageWithFrame:(CGRect)contentFrame {
    CGImageRef imgRef = CGImageCreateWithImageInRect(self.CGImage, contentFrame);
    UIImage *resultImg = [UIImage imageWithCGImage:imgRef];
    CGImageRelease(imgRef);
    return resultImg;
}

@end
