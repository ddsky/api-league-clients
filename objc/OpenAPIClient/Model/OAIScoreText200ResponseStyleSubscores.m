#import "OAIScoreText200ResponseStyleSubscores.h"

@implementation OAIScoreText200ResponseStyleSubscores

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"abbreviationScore": @"abbreviation_score", @"styleScore": @"style_score", @"spellingScore": @"spelling_score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"abbreviationScore", @"styleScore", @"spellingScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
