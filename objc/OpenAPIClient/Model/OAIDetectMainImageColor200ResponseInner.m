#import "OAIDetectMainImageColor200ResponseInner.h"

@implementation OAIDetectMainImageColor200ResponseInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"specificColor": @"specific_color", @"mainColor": @"main_color", @"hexCode": @"hex_code" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"specificColor", @"mainColor", @"hexCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
