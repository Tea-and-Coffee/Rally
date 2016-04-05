//
//	RALBook.h
//
//	Create by Arai on 5/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "RALLibkey.h"

UIKIT_EXTERN NSString *const kRALBookIsbn;
UIKIT_EXTERN NSString *const kRALBookSystemid;

@interface RALBook : NSObject

@property (nonatomic, assign) NSInteger isbn;
@property (nonatomic, strong) NSArray * libkeys;
@property (nonatomic, strong) NSString * reserveurl;
@property (nonatomic, strong) NSString * status;
@property (nonatomic, strong) NSString * systemid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end