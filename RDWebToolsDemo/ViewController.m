//
//  ViewController.m
//  RDWebToolsDemo
//
//  Created by Radar on 2018/3/6.
//  Copyright © 2018年 Radar. All rights reserved.
//

#import "ViewController.h"
#import "RDWebView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    RDWebView *webView = [[RDWebView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, self.view.bounds.size.height-100)];
    [webView loadURL:@"http://www.dangdang.com"];
    [self.view addSubview:webView];
    
    
    
    [webView observeWebView:^(NSString *title) {
        NSLog(@"===>>>title: %@", title);
    } currentUrl:^(NSString *url) {
        NSLog(@"===>>>url: %@", url);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
