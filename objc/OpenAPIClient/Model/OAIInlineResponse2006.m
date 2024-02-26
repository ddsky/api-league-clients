#import "OAIInlineResponse2006.h"

@implementation OAIInlineResponse2006

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_description": @"description", @"url": @"url", @"type": @"type", @"width": @"width", @"height": @"height", @"ratio": @"ratio" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_description", @"url", @"type", @"width", @"height", @"ratio"];
  return [optionalProperties containsObject:propertyName];
}

@end
