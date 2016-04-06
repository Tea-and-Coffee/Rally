//
//	RALCheck.m
//
//	Create by Arai on 4/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALCheck.h"

NSString *const kRALCheckBooks = @"books";
NSString *const kRALCheckContinueField = @"continue";
NSString *const kRALCheckSession = @"session";

@interface RALCheck ()
@end
@implementation RALCheck




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kRALCheckBooks] != nil && [dictionary[kRALCheckBooks] isKindOfClass:[NSDictionary class]]){
		NSDictionary * booksDictionaries = dictionary[kRALCheckBooks];
		NSMutableArray * booksItems = [NSMutableArray array];
		for(NSString * isbn in booksDictionaries){
			NSDictionary * bookDictionaries = booksDictionaries[isbn];
			NSMutableArray * bookItems = [NSMutableArray array];
			for(NSString * systemid in bookDictionaries){
				NSMutableDictionary *bookDictionary = bookDictionaries[systemid];
				[bookDictionary setObject:isbn forKey:kRALBookIsbn];
				[bookDictionary setObject:systemid forKey:kRALBookSystemid];
				RALBook * bookItem = [[RALBook alloc] initWithDictionary:bookDictionaries[systemid]];
				[bookItems addObject:bookItem];
			}
			[booksItems addObject:bookItems];
		}
		self.books = booksItems;
	}
	if(![dictionary[kRALCheckContinueField] isKindOfClass:[NSNull class]]){
		self.continueField = [dictionary[kRALCheckContinueField] integerValue];
	}

	if(![dictionary[kRALCheckSession] isKindOfClass:[NSNull class]]){
		self.session = dictionary[kRALCheckSession];
	}
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.books != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(RALBook * booksElement in self.books){
			[dictionaryElements addObject:[booksElement toDictionary]];
		}
		dictionary[kRALCheckBooks] = dictionaryElements;
	}
	dictionary[kRALCheckContinueField] = @(self.continueField);
	if(self.session != nil){
		dictionary[kRALCheckSession] = self.session;
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
	if(self.books != nil){
		[aCoder encodeObject:self.books forKey:kRALCheckBooks];
	}
	[aCoder encodeObject:@(self.continueField) forKey:kRALCheckContinueField];	if(self.session != nil){
		[aCoder encodeObject:self.session forKey:kRALCheckSession];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.books = [aDecoder decodeObjectForKey:kRALCheckBooks];
	self.continueField = [[aDecoder decodeObjectForKey:kRALCheckContinueField] integerValue];
	self.session = [aDecoder decodeObjectForKey:kRALCheckSession];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALCheck *copy = [RALCheck new];

	copy.books = [self.books copyWithZone:zone];
	copy.continueField = self.continueField;
	copy.session = [self.session copyWithZone:zone];

	return copy;
}
@end