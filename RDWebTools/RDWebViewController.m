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
        
        //self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = _navTitle;
    
    //self.navigationController.navigationBar.tintColor = [UIColor redColor];  
    
    
    //添加返回按钮
    if(_showNavBar)
    {
//        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
//        
//        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        backBtn.frame = CGRectMake(0, 0, 44, 44);
//        backBtn.backgroundColor = [UIColor clearColor];
//        backBtn.titleLabel.font = [UIFont fontWithName:@"iconfont" size:24];
//        [backBtn setTitle:@"\U0000e66c" forState:UIControlStateNormal];
//        [backBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        //[backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
//        UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
//        
//        UIButton  *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [closeBtn setTitle:@"关闭" forState:UIControlStateNormal];
//        [closeBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
//        closeBtn.frame = CGRectMake(0, 0, 44, 44);
//        //[closeBtn addTarget:self action:@selector(closeBtn) forControlEvents:UIControlEventTouchUpInside];
//        UIBarButtonItem *closeBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:closeBtn];
//        self.navigationItem.leftBarButtonItems = @[backBarButtonItem, closeBarButtonItem];
        
        
        
        //self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        
        
        
        //[self.navigationController.navigationBar setBackIndicatorImage:[UIImage imageNamed:@"icon_rdweb_goback.png"]];  
        
//        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed: @"icon_rdweb_goback.png"] style:(UIBarButtonItemStylePlain) target:nil action:nil];  
//        self.navigationItem.backBarButtonItem = backItem;  
        
        
         //self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil]; 
        
        
//        UIView *backV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
//        backV.backgroundColor = [UIColor redColor];
//        
//        UIButton *popBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//        popBtn.frame = CGRectMake(0, 0, 44, 44);
//        popBtn.backgroundColor = [UIColor clearColor];
//        popBtn.titleLabel.font = [UIFont fontWithName:@"iconfont" size:24];
//        [popBtn setTitle:@"\U0000e66c" forState:UIControlStateNormal];
//        [popBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        [popBtn addTarget:self action:@selector(popAction:) forControlEvents:UIControlEventTouchUpInside];
//        popBtn.titleEdgeInsets = UIEdgeInsetsMake(0, -15, 0, 15);
//        [backV addSubview:popBtn];
//        
//        
//        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backV];
//        self.navigationItem.leftBarButtonItem = backItem;
        
        

    }
    
    
    //创建RDWebView
    self.webView = [[RDWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _webView.showGoback = _showGoback;
    [self.view addSubview:_webView];
    
    //监听title和url的变化
    [_webView observeWebView:^(NSString *title) {
        [self changeNavTitle:title];
    } currentUrl:^(NSString *url) {
        //本类暂时不考虑url跳转以后的变化
    }];
    
    //加载url
    if(_url && ![_url isEqualToString:@""])
    {
        [_webView loadURL:_url];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    //只负责自己的页面是否显示导航条，其他页面各自处理各自的
    [self.navigationController setNavigationBarHidden:!_showNavBar animated:YES];
    
    //self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated
{
    //修正RDWebView的frame
    _webView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
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

- (void)popAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
