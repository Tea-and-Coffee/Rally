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
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    NSString *string = @"https://api.calil.jp/library";
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameters setObject:@"863e4a1924a6c4add0119d07efaf5835" forKey:@"appkey"];
    [parameters setObject:@"東京都" forKey:@"pref"];
    [parameters setObject:@"足立区" forKey:@"city"];
    [parameters setObject:@"json" forKey:@"format"];
    [parameters setObject:@"" forKey:@"callback"];
    
    [manager GET:string parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSError *error;
        NSArray *_libraries = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:&error];
        NSMutableArray *libraries = [NSMutableArray array];
        for (NSDictionary *_library in _libraries) {
            RALLibrary *library = [[RALLibrary alloc] initWithDictionary:_library];
            [libraries addObject:library];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
