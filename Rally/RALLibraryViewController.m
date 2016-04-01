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
    
    
    self.URL = [NSURL URLWithString:@"https://api.calil.jp/library?appkey=863e4a1924a6c4add0119d07efaf5835&pref=%E6%9D%B1%E4%BA%AC%E9%83%BD&city=%E8%B6%B3%E7%AB%8B%E5%8C%BA&format=json"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *datatask = [session dataTaskWithURL:self.URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
    }];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
