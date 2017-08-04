//
//  UIImage+LiLiImage.m
//  CodeInit
//
//  Created by minya on 2017/4/7.
//  Copyright © 2017年 minya. All rights reserved.
//

#import "UIImage+LiLiImage.h"

@implementation UIImage (LiLiImage)

+ (instancetype)imageWithOriginalImageName:(NSString *)imageName{
    UIImage * image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
