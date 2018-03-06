//
//  RDWebViewController.h
//  RDWebToolsDemo
//
//  Created by Radar on 2018/3/6.
//  Copyright © 2018年 Radar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RDWebView.h"

@interface RDWebViewController : UIViewController

@property (nonatomic, copy) NSString *url;        //要加载的url
@property (nonatomic, copy) NSString *navTitle;   //要显示在导航条上的title，如果存在且不为空，则固定使用此title / 如果设定为nil，则使用url内自带的title / 如果设定为@""，则完全不显示title

@property (nonatomic)       BOOL showNavBar;        //default is YES，是否显示顶部导航条
@property (nonatomic)       BOOL showGoback;        //default is NO， 是否显示返回上一层的按钮


//重新加载URL，用于第一次已经加载过以后，还需要再次加载其他url的情况
- (void)reloadURL:(NSString *)url; 


@end
