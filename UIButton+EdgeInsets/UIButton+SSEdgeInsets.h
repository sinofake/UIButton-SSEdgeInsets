//
//  UIButton+SSEdgeInsets.h
//  ElongIpadClient
//
//  Created by zhucuirong on 15/3/9.
//  Copyright (c) 2015年 dragonyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SSEdgeInsetsType) {
    SSEdgeInsetsTypeTitle,//标题
    SSEdgeInsetsTypeImage//图片
};

typedef NS_ENUM(NSInteger, SSMarginType) {
    SSMarginTypeTop         ,
    SSMarginTypeBottom      ,
    SSMarginTypeLeft        ,
    SSMarginTypeRight       ,
    SSMarginTypeTopLeft     ,
    SSMarginTypeTopRight    ,
    SSMarginTypeBottomLeft  ,
    SSMarginTypeBottomRight
};

@interface UIButton (SSEdgeInsets)
/**
 默认情况下，imageEdgeInsets和titleEdgeInsets都是0。先不考虑height,
 
 if (button.width小于imageView上image的width){图像会被压缩，文字不显示}
 
 if (button.width < imageView.width + label.width){图像正常显示，文字显示不全}
 
 if (button.width >＝ imageView.width + label.width){图像和文字都居中显示，imageView在左，label在右，中间没有空隙}
 */


/**
 *  图片在上，标题在下，居中显示
 *
 *  @param spacing image 和 title 之间的间隙
 */
- (void)setImageUpTitleDownWithSpacing:(CGFloat)spacing;

/**
 *  图片在右，标题在左
 *
 *  @param spacing image 和 title 之间的间隙
 */
- (void)setImageRightTitleLeftWithSpacing:(CGFloat)spacing;

/**
 *  按钮默认风格：图片在标题左边
 *
 *  @param spacing image 和 title 之间的间隙
 */
- (void)setDefaultImageTitleStyleWithSpacing:(CGFloat)spacing;


/**
 *  按钮只设置了title or image，该方法可以改变它们的位置
 *
 *  @param edgeInsetsType <#edgeInsetsType description#>
 *  @param marginType     <#marginType description#>
 *  @param margin         <#margin description#>
 */
- (void)setEdgeInsetsWithType:(SSEdgeInsetsType)edgeInsetsType marginType:(SSMarginType)marginType margin:(CGFloat)margin;

@end
