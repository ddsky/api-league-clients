#import "OAISearchRecipes200Response.h"

@implementation OAISearchRecipes200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"offset": @"offset", @"number": @"number", @"recipes": @"recipes", @"totalResults": @"total_results" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"offset", @"number", @"recipes", @"totalResults"];
  return [optionalProperties containsObject:propertyName];
}

@end
