#import "OAIRetrieveRecipeInformation200ResponseIngredientsInner.h"

@implementation OAIRetrieveRecipeInformation200ResponseIngredientsInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"image": @"image", @"nameClean": @"name_clean", @"amount": @"amount", @"unit": @"unit", @"measures": @"measures", @"original": @"original", @"meta": @"meta", @"originalName": @"original_name", @"name": @"name", @"_id": @"id", @"aisle": @"aisle", @"consistency": @"consistency" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"image", @"nameClean", @"amount", @"unit", @"measures", @"original", @"meta", @"originalName", @"name", @"_id", @"aisle", @"consistency"];
  return [optionalProperties containsObject:propertyName];
}

@end
