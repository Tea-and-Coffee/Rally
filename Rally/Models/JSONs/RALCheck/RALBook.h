//
//	RALBook.h
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "RALIsbn.h"

@interface RALBook : NSObject <NSCopying>

@property (nonatomic, strong) NSString * RALBookIsbn;

@property (nonatomic, strong) RALIsbn * isbn;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary key:(NSString *)key;

-(NSDictionary *)toDictionary;
@end