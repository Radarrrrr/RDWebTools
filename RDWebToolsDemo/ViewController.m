//
//  ViewController.m
//  RDWebToolsDemo
//
//  Created by Radar on 2018/3/6.
//  Copyright © 2018年 Radar. All rights reserved.
//

#import "ViewController.h"
#import "RDWebView.h"
#import "RDWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    pushBtn.frame = CGRectMake(0, 0, 100, 100);
    pushBtn.backgroundColor = [UIColor clearColor];
    
    pushBtn.titleLabel.font = [UIFont fontWithName:@"iconfont" size:30];
    [pushBtn setTitle:@"\U0000e66c" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    [pushBtn addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
    
    
    //DEMO1: 使用RDWebView直接显示url
//    RDWebView *webView = [[RDWebView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, self.view.bounds.size.height-100)];
//    [webView loadURL:@"http://www.dangdang.com"];
//    [self.view addSubview:webView];
//    
//    [webView observeWebView:^(NSString *title) {
//        NSLog(@"===>>>title: %@", title);
//    } currentUrl:^(NSString *url) {
//        NSLog(@"===>>>url: %@", url);
//    }];
    
    
}


- (void)pushAction:(id)sender
{
//    UIBarButtonItem * backButtonItem = [[UIBarButtonItem alloc] init];  
//    backButtonItem.title = @"";  
//    self.navigationItem.backBarButtonItem = backButtonItem;  
    
    
    
//    UIView *backV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
//    backV.backgroundColor = [UIColor redColor];
    
//    UIButton *popBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    popBtn.frame = CGRectMake(0, 0, 44, 44);
//    popBtn.backgroundColor = [UIColor clearColor];
//    popBtn.titleLabel.font = [UIFont fontWithName:@"iconfont" size:20];
//    [popBtn setTitle:@"\U0000e66c" forState:UIControlStateNormal];
//    [popBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//   // [popBtn addTarget:self action:@selector(popAction:) forControlEvents:UIControlEventTouchUpInside];
//    [backV addSubview:popBtn];
    
    
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backV];
//    self.navigationItem.backBarButtonItem = backItem;
    
    
    
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed: @"icon_rdweb_goback.png"] style:(UIBarButtonItemStylePlain) target:nil action:nil];  
//    self.navigationItem.backBarButtonItem = backItem; 
    
    
    
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:(UIBarButtonItemStylePlain) target:nil action:nil];  
//    self.navigationItem.backBarButtonItem = backItem; 
    
    
    
    
    
    //DEMO2: 使用RDWebViewController显示url
    RDWebViewController *webVC = [[RDWebViewController alloc] init];
    webVC.url = @"https://www.jianshu.com/p/180ee76f4250";
    webVC.showGoback = YES;
//    webVC.showNavBar = NO;
    
    //self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]; 
    
    [self.navigationController pushViewController:webVC animated:YES];
}



@end
