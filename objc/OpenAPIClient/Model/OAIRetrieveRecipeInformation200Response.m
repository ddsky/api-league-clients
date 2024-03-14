#import "OAIRetrieveRecipeInformation200Response.h"

@implementation OAIRetrieveRecipeInformation200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"servings": @"servings", @"images": @"images", @"dietaryProperties": @"dietary_properties", @"pricePerServing": @"price_per_serving", @"times": @"times", @"nutrition": @"nutrition", @"taste": @"taste", @"cuisines": @"cuisines", @"mealTypes": @"meal_types", @"occasions": @"occasions", @"ingredients": @"ingredients", @"instructions": @"instructions", @"credits": @"credits", @"scores": @"scores" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"title", @"servings", @"images", @"dietaryProperties", @"pricePerServing", @"times", @"nutrition", @"taste", @"cuisines", @"mealTypes", @"occasions", @"ingredients", @"instructions", @"credits", @"scores"];
  return [optionalProperties containsObject:propertyName];
}

@end
