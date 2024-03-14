#import "OAIRetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.h"

@implementation OAIRetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"unitShort": @"unit_short", @"amount": @"amount", @"unitLong": @"unit_long" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"unitShort", @"amount", @"unitLong"];
  return [optionalProperties containsObject:propertyName];
}

@end
