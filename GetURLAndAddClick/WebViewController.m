//
//  WebViewController.m
//  杂记
//
//  Created by 虛無縹緲 on 15/6/13.
//  Copyright (c) 2015年 zhouquanying. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@property (nonatomic) UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarController.tabBar.hidden=YES;
    self.webView=[[UIWebView alloc] initWithFrame:self.view.bounds];
    NSURLRequest *request=[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:self.buyUrl]];
//    [self.webView stringByEvaluatingJavaScriptFromString:]
    [self.webView loadRequest:request];
    [self.view addSubview:self.webView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
