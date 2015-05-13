//
//  ViewController.m
//  DMToolKitDemo
//
//  Created by Apple on 15/5/8.
//  Copyright (c) 2015年 Mingle. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+DMImageView.h"
#import "NSString+DMString.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *strView = [[UIView alloc] init];
    strView.str = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
