//
//  ViewController.m
//  UIButton+EdgeInsets
//
//  Created by zhucuirong on 15/11/6.
//  Copyright © 2015年 SINOFAKE SINEP. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SSEdgeInsets.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *defaultStyleBtn;
@property (weak, nonatomic) IBOutlet UIButton *imageRightTitleLeftBtn;
@property (weak, nonatomic) IBOutlet UIButton *imageUpTitleDownBtn;
@property (weak, nonatomic) IBOutlet UIButton *imageDownTitleUpBtn;
@property (weak, nonatomic) IBOutlet UIButton *randomImageBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIColor *backgroundColor                    = [UIColor colorWithRed:1 green:204/255.f blue:204/255.f alpha:1];
    self.defaultStyleBtn.backgroundColor        = backgroundColor;
    self.imageRightTitleLeftBtn.backgroundColor = backgroundColor;
    self.imageUpTitleDownBtn.backgroundColor    = backgroundColor;
    self.imageDownTitleUpBtn.backgroundColor    = backgroundColor;
    self.randomImageBtn.backgroundColor         = backgroundColor;
    
    UIColor *highlightedColor = [UIColor blueColor];
    [self.defaultStyleBtn setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    [self.imageRightTitleLeftBtn setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    [self.imageUpTitleDownBtn setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    [self.imageDownTitleUpBtn setTitleColor:highlightedColor forState:UIControlStateHighlighted];

    
    [self.defaultStyleBtn setImagePositionWithType:SSImagePositionTypeLeft spacing:0.f];
    [self.imageRightTitleLeftBtn setImagePositionWithType:SSImagePositionTypeRight spacing:10.f];
    [self.imageUpTitleDownBtn setImagePositionWithType:SSImagePositionTypeTop spacing:0.f];
    [self.imageDownTitleUpBtn setImagePositionWithType:SSImagePositionTypeBottom spacing:0.f];
    [self.randomImageBtn setEdgeInsetsWithType:SSEdgeInsetsTypeImage marginType:SSMarginTypeBottomRight margin:0.f];
    
    /*
     SSImagePositionTypeLeft or SSImagePositionTypeRight 两种风格contentHorizontalAlignment属性支持下列取值:
     UIControlContentHorizontalAlignmentCenter,
     UIControlContentHorizontalAlignmentLeft,
     UIControlContentHorizontalAlignmentRight, 解注释可查看效果
     */
    //self.defaultStyleBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //self.imageRightTitleLeftBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
