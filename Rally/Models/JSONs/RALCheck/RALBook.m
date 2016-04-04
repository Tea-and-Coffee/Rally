//
//	RALBook.m
//
//	Create by Arai on 4/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALBook.h"

NSString *const kRALBookIsbn = @"isbn";

@interface RALBook ()
@end
@implementation RALBook




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRALBookIsbn] isKindOfClass:[NSNull class]]){
		self.isbn = [[RALIsbn alloc] initWithDictionary:dictionary[kRALBookIsbn]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.isbn != nil){
		dictionary[kRALBookIsbn] = [self.isbn toDictionary];
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
	if(self.isbn != nil){
		[aCoder encodeObject:self.isbn forKey:kRALBookIsbn];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.isbn = [aDecoder decodeObjectForKey:kRALBookIsbn];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALBook *copy = [RALBook new];

	copy.isbn = [self.isbn copyWithZone:zone];

	return copy;
}
@end