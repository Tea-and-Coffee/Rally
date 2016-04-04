//
//	RALSystemid.h
//
//	Create by Arai on 4/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "RALLibkey.h"

@interface RALSystemid : NSObject <NSCopying>

@property (nonatomic, strong) RALLibkey * libkey;
@property (nonatomic, strong) NSString * reserveurl;
@property (nonatomic, strong) NSString * status;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end