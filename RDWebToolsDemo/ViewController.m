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
    
    self.navigationItem.title = @"首页";
    
    //设定主导航的返回按钮为“返回”
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil]; 
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
    
    
    //写一个按钮入口
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    pushBtn.frame = CGRectMake(0, 0, 100, 100);
    pushBtn.backgroundColor = [UIColor lightGrayColor];
    pushBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [pushBtn setTitle:@"LOAD" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
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
    //DEMO2: 使用RDWebViewController显示url
    RDWebViewController *webVC = [[RDWebViewController alloc] init];
    webVC.url = @"https://www.jianshu.com/p/180ee76f4250";
    webVC.showGoback = YES;
    //webVC.showNavBar = NO;
    [self.navigationController pushViewController:webVC animated:YES];
}



@end
