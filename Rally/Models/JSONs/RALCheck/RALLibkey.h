//
//	RALLibkey.h
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface RALLibkey : NSObject <NSCopying>

@property (nonatomic, strong) NSString * libkey;
@property (nonatomic, strong) NSString * checkout;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary key:(NSString *)key;

-(NSDictionary *)toDictionary;
@end