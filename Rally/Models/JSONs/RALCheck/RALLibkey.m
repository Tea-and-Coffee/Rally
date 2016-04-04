//
//	RALLibkey.m
//
//	Create by Arai on 4/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALLibkey.h"

NSString *const kRALLibkeyLibkey = @"libkey";

@interface RALLibkey ()
@end
@implementation RALLibkey




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRALLibkeyLibkey] isKindOfClass:[NSNull class]]){
		self.libkey = dictionary[kRALLibkeyLibkey];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.libkey != nil){
		dictionary[kRALLibkeyLibkey] = self.libkey;
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
	if(self.libkey != nil){
		[aCoder encodeObject:self.libkey forKey:kRALLibkeyLibkey];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.libkey = [aDecoder decodeObjectForKey:kRALLibkeyLibkey];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALLibkey *copy = [RALLibkey new];

	copy.libkey = [self.libkey copyWithZone:zone];

	return copy;
}
@end