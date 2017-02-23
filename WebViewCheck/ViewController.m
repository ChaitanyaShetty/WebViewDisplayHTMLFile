//
//  ViewController.m
//  WebViewCheck
//
//  Created by test on 1/24/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"Pedometer" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [self.webView loadHTMLString:htmlString baseURL: [[NSBundle mainBundle] bundleURL]];
    
    //tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
