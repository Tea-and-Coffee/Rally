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
    
    [self fetchLibrary];
    [self fetchCheck];
    [self fetchCheckWithSession:@"890ba5d987b60362f8d58773138c1429"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
}

- (void)fetchLibrary {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    NSString *string = @"https://api.calil.jp/library";
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameters setObject:@"863e4a1924a6c4add0119d07efaf5835" forKey:@"appkey"];
    [parameters setObject:@"東京都" forKey:@"pref"];
    [parameters setObject:@"足立区" forKey:@"city"];
    [parameters setObject:@"json" forKey:@"format"];
    
    [manager GET:string parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSData *trimmedData = [self trimmedDataWithData:responseObject];
        
        NSError *error;
        NSArray *_libraries = [NSJSONSerialization JSONObjectWithData:trimmedData options:0 error:&error];
        NSMutableArray *libraries = [NSMutableArray array];
        for (NSDictionary *_library in _libraries) {
            RALLibrary *library = [[RALLibrary alloc] initWithDictionary:_library];
            [libraries addObject:library];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)fetchCheck {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    NSString *string = @"https://api.calil.jp/check";
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameters setObject:@"863e4a1924a6c4add0119d07efaf5835" forKey:@"appkey"];
    [parameters setObject:@"4834000826" forKey:@"isbn"];
    [parameters setObject:@"Tokyo_Adachi" forKey:@"systemid"];
    [parameters setObject:@"Univ_Tokyomirai" forKey:@"systemid"];
    [parameters setObject:@"json" forKey:@"format"];
    
    [manager GET:string parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSData *trimmedData = [self trimmedDataWithData:responseObject];
        
        NSError *error;
        NSDictionary *_check = [NSJSONSerialization JSONObjectWithData:trimmedData options:NSJSONReadingMutableContainers error:&error];
        RALCheck *check = [[RALCheck alloc] initWithDictionary:_check];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)fetchCheckWithSession:(NSString *)session {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    NSString *string = @"https://api.calil.jp/check";
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameters setObject:@"863e4a1924a6c4add0119d07efaf5835" forKey:@"appkey"];
    [parameters setObject:session forKey:@"session"];
    [parameters setObject:@"json" forKey:@"format"];
    
    [manager GET:string parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSData *trimmedData = [self trimmedDataWithData:responseObject];
        
        NSError *error;
        NSDictionary *_check = [NSJSONSerialization JSONObjectWithData:trimmedData options:NSJSONReadingMutableContainers error:&error];
        RALCheck *check = [[RALCheck alloc] initWithDictionary:_check];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (NSData *)trimmedDataWithData:(NSData *)responseObject {
    NSString *string = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
    NSMutableCharacterSet *characterSet = [NSMutableCharacterSet new];
    [characterSet addCharactersInString:@"callback("];
    [characterSet addCharactersInString:@");"];
    NSString *trimmedString = [string stringByTrimmingCharactersInSet:characterSet];
    NSData *trimmedData = [trimmedString dataUsingEncoding:NSUTF8StringEncoding];
    return trimmedData;
}

@end
