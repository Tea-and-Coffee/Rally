//
//	RALSystemid.m
//
//	Create by Arai on 6/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALSystemid.h"

NSString *const kRALSystemidLibkey = @"libkey";
NSString *const kRALSystemidReserveurl = @"reserveurl";
NSString *const kRALSystemidStatus = @"status";

@interface RALSystemid ()
@end
@implementation RALSystemid




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRALSystemidLibkey] isKindOfClass:[NSNull class]]){
		self.libkey = [[RALLibkey alloc] initWithDictionary:dictionary[kRALSystemidLibkey]];
	}

	if(![dictionary[kRALSystemidReserveurl] isKindOfClass:[NSNull class]]){
		self.reserveurl = dictionary[kRALSystemidReserveurl];
	}	
	if(![dictionary[kRALSystemidStatus] isKindOfClass:[NSNull class]]){
		self.status = dictionary[kRALSystemidStatus];
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
		dictionary[kRALSystemidLibkey] = [self.libkey toDictionary];
	}
	if(self.reserveurl != nil){
		dictionary[kRALSystemidReserveurl] = self.reserveurl;
	}
	if(self.status != nil){
		dictionary[kRALSystemidStatus] = self.status;
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
		[aCoder encodeObject:self.libkey forKey:kRALSystemidLibkey];
	}
	if(self.reserveurl != nil){
		[aCoder encodeObject:self.reserveurl forKey:kRALSystemidReserveurl];
	}
	if(self.status != nil){
		[aCoder encodeObject:self.status forKey:kRALSystemidStatus];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.libkey = [aDecoder decodeObjectForKey:kRALSystemidLibkey];
	self.reserveurl = [aDecoder decodeObjectForKey:kRALSystemidReserveurl];
	self.status = [aDecoder decodeObjectForKey:kRALSystemidStatus];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALSystemid *copy = [RALSystemid new];

	copy.libkey = [self.libkey copyWithZone:zone];
	copy.reserveurl = [self.reserveurl copyWithZone:zone];
	copy.status = [self.status copyWithZone:zone];

	return copy;
}
@end