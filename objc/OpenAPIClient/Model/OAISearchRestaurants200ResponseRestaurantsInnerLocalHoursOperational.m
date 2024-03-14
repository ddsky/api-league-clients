#import "OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.h"

@implementation OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sunday": @"sunday", @"saturday": @"saturday", @"tuesday": @"tuesday", @"thursday": @"thursday", @"friday": @"friday", @"wednesday": @"wednesday", @"monday": @"monday" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sunday", @"saturday", @"tuesday", @"thursday", @"friday", @"wednesday", @"monday"];
  return [optionalProperties containsObject:propertyName];
}

@end
