//
//	RALIsbn.m
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALIsbn.h"

NSString *const kRALIsbnSystemid = @"systemid";

@interface RALIsbn ()
@end
@implementation RALIsbn




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRALIsbnSystemid] isKindOfClass:[NSNull class]]){
		self.systemid = [[RALSystemid alloc] initWithDictionary:dictionary[kRALIsbnSystemid]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.systemid != nil){
		dictionary[kRALIsbnSystemid] = [self.systemid toDictionary];
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
	if(self.systemid != nil){
		[aCoder encodeObject:self.systemid forKey:kRALIsbnSystemid];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.systemid = [aDecoder decodeObjectForKey:kRALIsbnSystemid];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALIsbn *copy = [RALIsbn new];

	copy.systemid = [self.systemid copyWithZone:zone];

	return copy;
}
@end