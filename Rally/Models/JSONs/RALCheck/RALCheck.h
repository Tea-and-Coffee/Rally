//
//	RALCheck.h
//
//	Create by Arai on 4/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "NSArray.h"

@interface RALCheck : NSObject

@property (nonatomic, strong) NSArray * books;
@property (nonatomic, assign) NSInteger continueField;
@property (nonatomic, strong) NSString * session;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end