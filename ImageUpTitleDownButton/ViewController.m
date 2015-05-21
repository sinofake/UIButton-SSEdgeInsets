//
//  ViewController.m
//  ImageUpTitleDownButton
//
//  Created by zhucuirong on 15/5/19.
//  Copyright (c) 2015年 elong. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SSEdgeInsets.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *buttonImage = [UIImage imageNamed:@"icon"];
    CGFloat buttonImageViewWidth = buttonImage.size.width;
    CGFloat buttonImageViewHeight = buttonImage.size.height;
    
    NSString *buttonTitle = @"中华人民共和国";
    UIFont *buttonTitleFont = [UIFont systemFontOfSize:17.0f];
    CGSize buttonTitleLabelSize = [buttonTitle sizeWithAttributes:@{NSFontAttributeName: buttonTitleFont}];
    
    CGFloat buttonWidth = buttonImageViewWidth + buttonTitleLabelSize.width;
    CGFloat buttonHeight = buttonImageViewHeight + buttonTitleLabelSize.height;
    
    UIButton *b = [UIButton buttonWithType:UIButtonTypeCustom];
    [b setCenter:self.view.center];
    [b setBounds:CGRectMake(0, 0, buttonWidth, buttonHeight)];
    [b.titleLabel setFont:buttonTitleFont];
    [b setImage:buttonImage forState:UIControlStateNormal];
    [b setTitle:buttonTitle forState:UIControlStateNormal];
    [b setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [b setBackgroundColor:[UIColor redColor]];
    [b.imageView setBackgroundColor:[UIColor greenColor]];
    [b.titleLabel setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:b];
    [b setImageUpTitleDownWithSpacing:0.f];
    
    
    
    self.button.backgroundColor = [UIColor orangeColor];
    [self.button setEdgeInsetsWithType:SSEdgeInsetsTypeImage marginType:SSMarginTypeLeftTop margin:0.f];
    
    
    [self.button2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    self.button2.backgroundColor = [UIColor lightGrayColor];
    self.button2.imageView.backgroundColor = [UIColor magentaColor];
    self.button2.titleLabel.backgroundColor = [UIColor whiteColor];
    [self.button2 setDefaultImageTitleStyleWithSpacing:20.f];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
