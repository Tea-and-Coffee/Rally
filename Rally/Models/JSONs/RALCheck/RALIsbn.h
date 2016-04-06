//
//	RALIsbn.h
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "RALSystemid.h"

@interface RALIsbn : NSObject <NSCopying>

@property (nonatomic, strong) RALSystemid * systemid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end