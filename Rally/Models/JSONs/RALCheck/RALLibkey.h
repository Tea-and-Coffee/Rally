//
//	RALLibkey.h
//
//	Create by Arai on 5/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface RALLibkey : NSObject

@property (nonatomic, strong) NSString * libkey;
@property (nonatomic, strong) NSString * libstatus;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end