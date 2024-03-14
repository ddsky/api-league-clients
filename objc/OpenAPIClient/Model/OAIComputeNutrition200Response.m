#import "OAIComputeNutrition200Response.h"

@implementation OAIComputeNutrition200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"nutrients": @"nutrients", @"properties": @"properties", @"flavonoids": @"flavonoids", @"ingredientBreakdown": @"ingredient_breakdown", @"caloricBreakdown": @"caloric_breakdown", @"weightPerServing": @"weight_per_serving" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"nutrients", @"properties", @"flavonoids", @"ingredientBreakdown", @"caloricBreakdown", @"weightPerServing"];
  return [optionalProperties containsObject:propertyName];
}

@end
