#import "OAIRetrieveRecipeInformation200ResponseNutrition.h"

@implementation OAIRetrieveRecipeInformation200ResponseNutrition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"weightPerServing": @"weight_per_serving", @"caloricBreakdown": @"caloric_breakdown", @"flavonoids": @"flavonoids", @"ingredientBreakdown": @"ingredient_breakdown", @"properties": @"properties", @"nutrients": @"nutrients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"weightPerServing", @"caloricBreakdown", @"flavonoids", @"ingredientBreakdown", @"properties", @"nutrients"];
  return [optionalProperties containsObject:propertyName];
}

@end
