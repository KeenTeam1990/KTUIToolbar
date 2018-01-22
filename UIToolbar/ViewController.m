//
//  ViewController.m
//  UIToolbar
//
//  Created by keenteam on 2018/1/22.
//  Copyright © 2018年 keenteam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initToolsBar];
}

- (void)initToolsBar{
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.view.frame)-44, CGRectGetWidth(self.view.frame), 44)];
    toolbar.tintColor = [UIColor blueColor];
    toolbar.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:toolbar];
    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    UIBarButtonItem *three = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
    UIBarButtonItem *four = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:nil action:nil];
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    toolbar.items = @[one,flexItem,two,flexItem,three,flexItem,four];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
