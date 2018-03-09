# RDWebTools
网页显示工具，包含WebView和WebViewVC，基于WKWebView开发

本类pods名为：

pod "RDWebTools"


Change Log

v1.0 创建pods库


注意：

必须要在 info.plist 里边添加如下ATS设定，以便可以支持http请求：

//<App Transport Security Settings> -> <Allow Arbitrary Loads> 设定为 YES



1. RDWebView使用方式如下：

RDWebView *webView = [[RDWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
[self.view addSubview:webView];
[webView loadURL:@"http://www.baidu.com"];



2. RDWebViewController使用方式如下：

RDWebViewController *webVC = [[RDWebViewController alloc] init];
webVC.url = @"http://www.baidu.com";
[self.navigationController pushViewController:webVC animated:YES];




