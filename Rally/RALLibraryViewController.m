//
//  RALLibraryViewController.m
//  Rally
//
//  Created by Arai on 2016/04/01.
//  Copyright © 2016年 masato_arai. All rights reserved.
//

#import "RALLibraryViewController.h"

@interface RALLibraryViewController ()

@end

@implementation RALLibraryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.URL = [NSURL URLWithString:@"https://api.calil.jp/library?"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.URL];
    [request setValue:@"863e4a1924a6c4add0119d07efaf5835" forHTTPHeaderField:@"appkey"];
    [request setValue:@"東京都" forHTTPHeaderField:@"pref"];
    [request setValue:@"足立区" forHTTPHeaderField:@"city"];
    [request setValue:@"json" forKey:@"format"];
    request.HTTPMethod = @"GET";
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *datatask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"a");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
