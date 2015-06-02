//
//  UIButton+SSEdgeInsets.m
//  ElongIpadClient
//
//  Created by zhucuirong on 15/3/9.
//  Copyright (c) 2015年 dragonyuan. All rights reserved.
//

#import "UIButton+SSEdgeInsets.h"

@implementation UIButton (SSEdgeInsets)

- (void)setImageUpTitleDownWithSpacing:(CGFloat)spacing {
    // the space between the image and text
    spacing -= 1/[UIScreen mainScreen].scale;
    
    // lower the text and push it left so it appears centered
    //  below the image
    CGSize imageSize = self.imageView.frame.size;
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
    
    // raise the image and push it right so it appears centered
    //  above the text
    CGSize titleSize = CGSizeZero;
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
    titleSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName: self.titleLabel.font}];
#else
    titleSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font];
#endif
    
    self.imageEdgeInsets = UIEdgeInsetsMake(- (titleSize.height + spacing), 0.0, 0.0, - titleSize.width);
}

- (void)setDefaultImageTitleStyleWithSpacing:(CGFloat)spacing {
    CGFloat delta = spacing/2.f;
    self.imageEdgeInsets = UIEdgeInsetsMake(0, -delta, 0, delta);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, delta, 0, -delta);
}

- (void)setEdgeInsetsWithType:(SSEdgeInsetsType)edgeInsetsType marginType:(SSMarginType)marginType margin:(CGFloat)margin {
    CGSize itemSize = CGSizeZero;
    if (edgeInsetsType == SSEdgeInsetsTypeTitle) {
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
        itemSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName: self.titleLabel.font}];
#else
        itemSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font];
#endif
    }
    else {
        itemSize = self.imageView.image.size;
    }
    
    CGFloat horizontalDelta = (CGRectGetWidth(self.frame) - itemSize.width)/2.f - margin;
    CGFloat vertivalDelta = (CGRectGetHeight(self.frame) - itemSize.height)/2.f - margin;
    
    int horizontalSignFlag = 1;
    int verticalSignFlag = 1;
    
    switch (marginType) {
        case SSMarginTypeTop:
        {
            horizontalSignFlag = 0;
            verticalSignFlag = -1;
        }
            break;
        case SSMarginTypeLeft:
        {
            horizontalSignFlag = -1;
            verticalSignFlag = 0;
        }
            break;
        case SSMarginTypeBottom:
        {
            horizontalSignFlag = 0;
            verticalSignFlag = 1;
        }
            break;
        case SSMarginTypeRight:
        {
            horizontalSignFlag = 1;
            verticalSignFlag = 0;
        }
            break;
        case SSMarginTypeLeftTop:
        {
            horizontalSignFlag = -1;
            verticalSignFlag = -1;
        }
            break;
        case SSMarginTypeLeftBottom:
        {
            horizontalSignFlag = -1;
            verticalSignFlag = 1;
        }
            break;
        case SSMarginTypeRightTop:
        {
            horizontalSignFlag = 1;
            verticalSignFlag = -1;
        }
            break;
        case SSMarginTypeRightBottom:
        {
            horizontalSignFlag = 1;
            verticalSignFlag = 1;
        }
            break;
            
        default:
            break;
    }
    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(vertivalDelta * verticalSignFlag, horizontalDelta * horizontalSignFlag, -vertivalDelta * verticalSignFlag, -horizontalDelta * horizontalSignFlag);
    if (edgeInsetsType == SSEdgeInsetsTypeTitle) {
        self.titleEdgeInsets = edgeInsets;
    }
    else {
        self.imageEdgeInsets = edgeInsets;
    }
}
@end
