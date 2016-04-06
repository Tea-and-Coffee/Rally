//
//	RALLibkey.h
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface RALLibkey : NSObject <NSCopying>

@property (nonatomic, strong) NSString * 世田谷;
@property (nonatomic, strong) NSString * 玉川台;
@property (nonatomic, strong) NSString * 経堂;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end