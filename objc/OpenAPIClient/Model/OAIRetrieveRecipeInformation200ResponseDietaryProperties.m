#import "OAIRetrieveRecipeInformation200ResponseDietaryProperties.h"

@implementation OAIRetrieveRecipeInformation200ResponseDietaryProperties

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"lowFodmap": @"low_fodmap", @"vegetarian": @"vegetarian", @"vegan": @"vegan", @"glutenFree": @"gluten_free", @"dairyFree": @"dairy_free", @"gaps": @"gaps", @"diets": @"diets" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"lowFodmap", @"vegetarian", @"vegan", @"glutenFree", @"dairyFree", @"gaps", @"diets"];
  return [optionalProperties containsObject:propertyName];
}

@end
