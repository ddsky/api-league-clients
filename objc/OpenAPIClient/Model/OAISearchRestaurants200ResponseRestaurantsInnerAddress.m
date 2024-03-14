#import "OAISearchRestaurants200ResponseRestaurantsInnerAddress.h"

@implementation OAISearchRestaurants200ResponseRestaurantsInnerAddress

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"zipcode": @"zipcode", @"country": @"country", @"city": @"city", @"latitude": @"latitude", @"lon": @"lon", @"streetAddr2": @"street_addr_2", @"state": @"state", @"streetAddr": @"street_addr", @"lat": @"lat", @"longitude": @"longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"zipcode", @"country", @"city", @"latitude", @"lon", @"streetAddr2", @"state", @"streetAddr", @"lat", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
