#import "OAIInlineResponse20028Images.h"

@implementation OAIInlineResponse20028Images

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"width": @"width", @"license": @"license", @"thumbnail": @"thumbnail", @"_id": @"id", @"url": @"url", @"height": @"height" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"width", @"license", @"thumbnail", @"_id", @"url", @"height"];
  return [optionalProperties containsObject:propertyName];
}

@end
