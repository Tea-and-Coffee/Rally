//
//	RALLibrary.m
//
//	Create by Arai on 1/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RALLibrary.h"

NSString *const kRALLibraryAddress = @"address";
NSString *const kRALLibraryCategory = @"category";
NSString *const kRALLibraryCity = @"city";
NSString *const kRALLibraryFormal = @"formal";
NSString *const kRALLibraryGeocode = @"geocode";
NSString *const kRALLibraryLibid = @"libid";
NSString *const kRALLibraryLibkey = @"libkey";
NSString *const kRALLibraryPost = @"post";
NSString *const kRALLibraryPref = @"pref";
NSString *const kRALLibraryShortField = @"short";
NSString *const kRALLibrarySystemid = @"systemid";
NSString *const kRALLibrarySystemname = @"systemname";
NSString *const kRALLibraryTel = @"tel";
NSString *const kRALLibraryUrlPc = @"url_pc";

@interface RALLibrary ()
@end
@implementation RALLibrary




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRALLibraryAddress] isKindOfClass:[NSNull class]]){
		self.address = dictionary[kRALLibraryAddress];
	}	
	if(![dictionary[kRALLibraryCategory] isKindOfClass:[NSNull class]]){
		self.category = dictionary[kRALLibraryCategory];
	}	
	if(![dictionary[kRALLibraryCity] isKindOfClass:[NSNull class]]){
		self.city = dictionary[kRALLibraryCity];
	}	
	if(![dictionary[kRALLibraryFormal] isKindOfClass:[NSNull class]]){
		self.formal = dictionary[kRALLibraryFormal];
	}	
	if(![dictionary[kRALLibraryGeocode] isKindOfClass:[NSNull class]]){
		self.geocode = dictionary[kRALLibraryGeocode];
	}	
	if(![dictionary[kRALLibraryLibid] isKindOfClass:[NSNull class]]){
		self.libid = dictionary[kRALLibraryLibid];
	}	
	if(![dictionary[kRALLibraryLibkey] isKindOfClass:[NSNull class]]){
		self.libkey = dictionary[kRALLibraryLibkey];
	}	
	if(![dictionary[kRALLibraryPost] isKindOfClass:[NSNull class]]){
		self.post = dictionary[kRALLibraryPost];
	}	
	if(![dictionary[kRALLibraryPref] isKindOfClass:[NSNull class]]){
		self.pref = dictionary[kRALLibraryPref];
	}	
	if(![dictionary[kRALLibraryShortField] isKindOfClass:[NSNull class]]){
		self.shortField = dictionary[kRALLibraryShortField];
	}	
	if(![dictionary[kRALLibrarySystemid] isKindOfClass:[NSNull class]]){
		self.systemid = dictionary[kRALLibrarySystemid];
	}	
	if(![dictionary[kRALLibrarySystemname] isKindOfClass:[NSNull class]]){
		self.systemname = dictionary[kRALLibrarySystemname];
	}	
	if(![dictionary[kRALLibraryTel] isKindOfClass:[NSNull class]]){
		self.tel = dictionary[kRALLibraryTel];
	}	
	if(![dictionary[kRALLibraryUrlPc] isKindOfClass:[NSNull class]]){
		self.urlPc = dictionary[kRALLibraryUrlPc];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.address != nil){
		dictionary[kRALLibraryAddress] = self.address;
	}
	if(self.category != nil){
		dictionary[kRALLibraryCategory] = self.category;
	}
	if(self.city != nil){
		dictionary[kRALLibraryCity] = self.city;
	}
	if(self.formal != nil){
		dictionary[kRALLibraryFormal] = self.formal;
	}
	if(self.geocode != nil){
		dictionary[kRALLibraryGeocode] = self.geocode;
	}
	if(self.libid != nil){
		dictionary[kRALLibraryLibid] = self.libid;
	}
	if(self.libkey != nil){
		dictionary[kRALLibraryLibkey] = self.libkey;
	}
	if(self.post != nil){
		dictionary[kRALLibraryPost] = self.post;
	}
	if(self.pref != nil){
		dictionary[kRALLibraryPref] = self.pref;
	}
	if(self.shortField != nil){
		dictionary[kRALLibraryShortField] = self.shortField;
	}
	if(self.systemid != nil){
		dictionary[kRALLibrarySystemid] = self.systemid;
	}
	if(self.systemname != nil){
		dictionary[kRALLibrarySystemname] = self.systemname;
	}
	if(self.tel != nil){
		dictionary[kRALLibraryTel] = self.tel;
	}
	if(self.urlPc != nil){
		dictionary[kRALLibraryUrlPc] = self.urlPc;
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
	if(self.address != nil){
		[aCoder encodeObject:self.address forKey:kRALLibraryAddress];
	}
	if(self.category != nil){
		[aCoder encodeObject:self.category forKey:kRALLibraryCategory];
	}
	if(self.city != nil){
		[aCoder encodeObject:self.city forKey:kRALLibraryCity];
	}
	if(self.formal != nil){
		[aCoder encodeObject:self.formal forKey:kRALLibraryFormal];
	}
	if(self.geocode != nil){
		[aCoder encodeObject:self.geocode forKey:kRALLibraryGeocode];
	}
	if(self.libid != nil){
		[aCoder encodeObject:self.libid forKey:kRALLibraryLibid];
	}
	if(self.libkey != nil){
		[aCoder encodeObject:self.libkey forKey:kRALLibraryLibkey];
	}
	if(self.post != nil){
		[aCoder encodeObject:self.post forKey:kRALLibraryPost];
	}
	if(self.pref != nil){
		[aCoder encodeObject:self.pref forKey:kRALLibraryPref];
	}
	if(self.shortField != nil){
		[aCoder encodeObject:self.shortField forKey:kRALLibraryShortField];
	}
	if(self.systemid != nil){
		[aCoder encodeObject:self.systemid forKey:kRALLibrarySystemid];
	}
	if(self.systemname != nil){
		[aCoder encodeObject:self.systemname forKey:kRALLibrarySystemname];
	}
	if(self.tel != nil){
		[aCoder encodeObject:self.tel forKey:kRALLibraryTel];
	}
	if(self.urlPc != nil){
		[aCoder encodeObject:self.urlPc forKey:kRALLibraryUrlPc];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.address = [aDecoder decodeObjectForKey:kRALLibraryAddress];
	self.category = [aDecoder decodeObjectForKey:kRALLibraryCategory];
	self.city = [aDecoder decodeObjectForKey:kRALLibraryCity];
	self.formal = [aDecoder decodeObjectForKey:kRALLibraryFormal];
	self.geocode = [aDecoder decodeObjectForKey:kRALLibraryGeocode];
	self.libid = [aDecoder decodeObjectForKey:kRALLibraryLibid];
	self.libkey = [aDecoder decodeObjectForKey:kRALLibraryLibkey];
	self.post = [aDecoder decodeObjectForKey:kRALLibraryPost];
	self.pref = [aDecoder decodeObjectForKey:kRALLibraryPref];
	self.shortField = [aDecoder decodeObjectForKey:kRALLibraryShortField];
	self.systemid = [aDecoder decodeObjectForKey:kRALLibrarySystemid];
	self.systemname = [aDecoder decodeObjectForKey:kRALLibrarySystemname];
	self.tel = [aDecoder decodeObjectForKey:kRALLibraryTel];
	self.urlPc = [aDecoder decodeObjectForKey:kRALLibraryUrlPc];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	RALLibrary *copy = [RALLibrary new];

	copy.address = [self.address copyWithZone:zone];
	copy.category = [self.category copyWithZone:zone];
	copy.city = [self.city copyWithZone:zone];
	copy.formal = [self.formal copyWithZone:zone];
	copy.geocode = [self.geocode copyWithZone:zone];
	copy.libid = [self.libid copyWithZone:zone];
	copy.libkey = [self.libkey copyWithZone:zone];
	copy.post = [self.post copyWithZone:zone];
	copy.pref = [self.pref copyWithZone:zone];
	copy.shortField = [self.shortField copyWithZone:zone];
	copy.systemid = [self.systemid copyWithZone:zone];
	copy.systemname = [self.systemname copyWithZone:zone];
	copy.tel = [self.tel copyWithZone:zone];
	copy.urlPc = [self.urlPc copyWithZone:zone];

	return copy;
}
@end