#import "OAIInlineResponse20026Entities.h"

@implementation OAIInlineResponse20026Entities

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"startPosition": @"start_position", @"image": @"image", @"type": @"type", @"value": @"value", @"endPosition": @"end_position" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"startPosition", @"image", @"type", @"value", @"endPosition"];
  return [optionalProperties containsObject:propertyName];
}

@end
