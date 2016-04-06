//
//	RALLibkey.m
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALLibkey.h"

@interface RALLibkey ()
@end
@implementation RALLibkey




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary key:(NSString *)key
{
	self = [super init];
	self.libkey = key;
	if(![dictionary[self.libkey] isKindOfClass:[NSNull class]]){
		self.checkout = dictionary[self.libkey];
	}
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.checkout != nil){
		dictionary[self.libkey] = self.checkout;
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
	if(self.checkout != nil){
		[aCoder encodeObject:self.checkout forKey:self.libkey];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.checkout = [aDecoder decodeObjectForKey:self.libkey];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALLibkey *copy = [RALLibkey new];

	copy.checkout = [self.checkout copyWithZone:zone];

	return copy;
}
@end