//
//  RDWebViewController.m
//  RDWebToolsDemo
//
//  Created by Radar on 2018/3/6.
//  Copyright © 2018年 Radar. All rights reserved.
//

#import "RDWebViewController.h"

@interface RDWebViewController ()

@property (nonatomic, strong) RDWebView *webView;

@end

@implementation RDWebViewController

- (id)init{
    self = [super init];
    if(self){
        
        self.showGoback = NO;
        self.showNavBar = YES;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.title = _navTitle;
    
    
    //创建RDWebView
    RDWebView *webView = [[RDWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    webView.showGoback = _showGoback;
    [self.view addSubview:webView];
    
    CGRect dddd = self.view.frame;
    CGRect cccc = _webView.frame;
    int i=0;
    
    //监听title和url的变化
    [webView observeWebView:^(NSString *title) {
        [self changeNavTitle:title];
    } currentUrl:^(NSString *url) {
        //本类暂时不考虑url跳转以后的变化
    }];
    
    //加载url
    if(_url && ![_url isEqualToString:@""])
    {
        [webView loadURL:_url];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    CGRect dddd = self.view.frame;
    CGRect cccc = _webView.frame;
    int i=0;
    
    //只负责自己的页面是否显示导航条，其他页面各自处理各自的
    [self.navigationController setNavigationBarHidden:!_showNavBar animated:YES];
}

- (void)viewDidAppear:(BOOL)animated
{
    //修正webview的frame
    _webView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    CGRect dddd = self.view.frame;
    CGRect cccc = _webView.frame;
    int i=0;
}



#pragma mark - 外部方法
- (void)reloadURL:(NSString *)url
{
    if(!url || [url isEqualToString:@""]) return;
    
    self.url = url;
    [_webView loadURL:_url];
}


#pragma mark - 配套方法
- (void)changeNavTitle:(NSString *)title
{
    if(!_navTitle)
    {
        self.navigationItem.title = title;
    }
}



@end
