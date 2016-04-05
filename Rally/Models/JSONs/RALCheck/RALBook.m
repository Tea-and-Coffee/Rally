//
//	RALBook.m
//
//	Create by Arai on 5/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALBook.h"

NSString *const kRALBookIsbn = @"isbn";
NSString *const kRALBookLibkeys = @"libkeys";
NSString *const kRALBookReserveurl = @"reserveurl";
NSString *const kRALBookStatus = @"status";
NSString *const kRALBookSystemid = @"systemid";

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
		self.isbn = [dictionary[kRALBookIsbn] integerValue];
	}

	if(dictionary[kRALBookLibkeys] != nil && [dictionary[kRALBookLibkeys] isKindOfClass:[NSArray class]]){
		NSArray * libkeysDictionaries = dictionary[kRALBookLibkeys];
		NSMutableArray * libkeysItems = [NSMutableArray array];
		for(NSDictionary * libkeysDictionary in libkeysDictionaries){
			RALLibkey * libkeysItem = [[RALLibkey alloc] initWithDictionary:libkeysDictionary];
			[libkeysItems addObject:libkeysItem];
		}
		self.libkeys = libkeysItems;
	}
	if(![dictionary[kRALBookReserveurl] isKindOfClass:[NSNull class]]){
		self.reserveurl = dictionary[kRALBookReserveurl];
	}	
	if(![dictionary[kRALBookStatus] isKindOfClass:[NSNull class]]){
		self.status = dictionary[kRALBookStatus];
	}
    if(![dictionary[kRALBookSystemid] isKindOfClass:[NSNull class]]){
        self.systemid = dictionary[kRALBookSystemid];
    }
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kRALBookIsbn] = @(self.isbn);
	if(self.libkeys != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(RALLibkey * libkeysElement in self.libkeys){
			[dictionaryElements addObject:[libkeysElement toDictionary]];
		}
		dictionary[kRALBookLibkeys] = dictionaryElements;
	}
	if(self.reserveurl != nil){
		dictionary[kRALBookReserveurl] = self.reserveurl;
	}
	if(self.status != nil){
		dictionary[kRALBookStatus] = self.status;
	}
    if(self.systemid != nil){
        dictionary[kRALBookSystemid] = self.systemid;
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
	[aCoder encodeObject:@(self.isbn) forKey:kRALBookIsbn];	if(self.libkeys != nil){
		[aCoder encodeObject:self.libkeys forKey:kRALBookLibkeys];
	}
	if(self.reserveurl != nil){
		[aCoder encodeObject:self.reserveurl forKey:kRALBookReserveurl];
	}
	if(self.status != nil){
		[aCoder encodeObject:self.status forKey:kRALBookStatus];
	}
    if(self.systemid != nil){
        [aCoder encodeObject:self.systemid forKey:kRALBookSystemid];
    }

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.isbn = [[aDecoder decodeObjectForKey:kRALBookIsbn] integerValue];
	self.libkeys = [aDecoder decodeObjectForKey:kRALBookLibkeys];
	self.reserveurl = [aDecoder decodeObjectForKey:kRALBookReserveurl];
	self.status = [aDecoder decodeObjectForKey:kRALBookStatus];
    self.systemid = [aDecoder decodeObjectForKey:kRALBookSystemid];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALBook *copy = [RALBook new];

	copy.isbn = self.isbn;
	copy.libkeys = [self.libkeys copyWithZone:zone];
	copy.reserveurl = [self.reserveurl copyWithZone:zone];
	copy.status = [self.status copyWithZone:zone];
    copy.systemid = [self.systemid copyWithZone:zone];

	return copy;
}
@end