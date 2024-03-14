#import "OAIComputeNutrition200ResponseIngredientBreakdownInner.h"

@implementation OAIComputeNutrition200ResponseIngredientBreakdownInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"amount": @"amount", @"unit": @"unit", @"_id": @"id", @"nutrients": @"nutrients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"amount", @"unit", @"_id", @"nutrients"];
  return [optionalProperties containsObject:propertyName];
}

@end
