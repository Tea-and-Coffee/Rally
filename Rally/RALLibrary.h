//
//	RALLibrary.h
//
//	Create by Arai on 1/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface RALLibrary : NSObject

@property (nonatomic, strong) NSString * address;
@property (nonatomic, strong) NSString * category;
@property (nonatomic, strong) NSString * city;
@property (nonatomic, strong) NSString * formal;
@property (nonatomic, strong) NSString * geocode;
@property (nonatomic, strong) NSString * libid;
@property (nonatomic, strong) NSString * libkey;
@property (nonatomic, strong) NSString * post;
@property (nonatomic, strong) NSString * pref;
@property (nonatomic, strong) NSString * shortField;
@property (nonatomic, strong) NSString * systemid;
@property (nonatomic, strong) NSString * systemname;
@property (nonatomic, strong) NSString * tel;
@property (nonatomic, strong) NSString * urlPc;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end