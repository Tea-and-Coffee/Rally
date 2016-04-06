//
//	RALLibkey.m
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALLibkey.h"

NSString *const kRALLibkey世田谷 = @"世田谷";
NSString *const kRALLibkey玉川台 = @"玉川台";
NSString *const kRALLibkey経堂 = @"経堂";

@interface RALLibkey ()
@end
@implementation RALLibkey




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRALLibkey世田谷] isKindOfClass:[NSNull class]]){
		self.世田谷 = dictionary[kRALLibkey世田谷];
	}	
	if(![dictionary[kRALLibkey玉川台] isKindOfClass:[NSNull class]]){
		self.玉川台 = dictionary[kRALLibkey玉川台];
	}	
	if(![dictionary[kRALLibkey経堂] isKindOfClass:[NSNull class]]){
		self.経堂 = dictionary[kRALLibkey経堂];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.世田谷 != nil){
		dictionary[kRALLibkey世田谷] = self.世田谷;
	}
	if(self.玉川台 != nil){
		dictionary[kRALLibkey玉川台] = self.玉川台;
	}
	if(self.経堂 != nil){
		dictionary[kRALLibkey経堂] = self.経堂;
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.世田谷 != nil){
		[aCoder encodeObject:self.世田谷 forKey:kRALLibkey世田谷];
	}
	if(self.玉川台 != nil){
		[aCoder encodeObject:self.玉川台 forKey:kRALLibkey玉川台];
	}
	if(self.経堂 != nil){
		[aCoder encodeObject:self.経堂 forKey:kRALLibkey経堂];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.世田谷 = [aDecoder decodeObjectForKey:kRALLibkey世田谷];
	self.玉川台 = [aDecoder decodeObjectForKey:kRALLibkey玉川台];
	self.経堂 = [aDecoder decodeObjectForKey:kRALLibkey経堂];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALLibkey *copy = [RALLibkey new];

	copy.世田谷 = [self.世田谷 copyWithZone:zone];
	copy.玉川台 = [self.玉川台 copyWithZone:zone];
	copy.経堂 = [self.経堂 copyWithZone:zone];

	return copy;
}
@end