//
//  ViewController.m
//  GetURLAndAddClick
//
//  Created by dcj on 16/5/18.
//  Copyright © 2016年 YQ. All rights reserved.
//

#import "ViewController.h"
#import "WPHotspotLabel.h"
#import "NSString+WPAttributedMarkup.h"
#import "WebViewController.h"

@interface ViewController ()

@property (nonatomic,strong) WPHotspotLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _label = [[WPHotspotLabel alloc] init];
    _label.frame = CGRectMake(0, 100, self.view.bounds.size.width, 300);
    _label.numberOfLines = 0;
    _label.text = @"https://www.baidu.com，你猜这是啥，132343243.45t5t5猜对有奖啊，https://www.github.com";
    [self.view addSubview:_label];
    
    self.label.attributedText = [self.label.text attributedWithStyleBook];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sendUrlFromText:) name:@"WPAttributedSendUrlFromeText" object:nil];
}

- (void)sendUrlFromText:(NSNotification *)notify{

    WebViewController *webVC = [[WebViewController alloc] init];
    if(notify.object != nil){
        webVC.buyUrl = notify.object;
    }
    
    [self presentViewController:webVC animated:true completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
