#import "OAIRetrieveRecipeInformation200ResponseTaste.h"

@implementation OAIRetrieveRecipeInformation200ResponseTaste

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fattiness": @"fattiness", @"spiciness": @"spiciness", @"saltiness": @"saltiness", @"bitterness": @"bitterness", @"savoriness": @"savoriness", @"sweetness": @"sweetness", @"sourness": @"sourness" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fattiness", @"spiciness", @"saltiness", @"bitterness", @"savoriness", @"sweetness", @"sourness"];
  return [optionalProperties containsObject:propertyName];
}

@end
