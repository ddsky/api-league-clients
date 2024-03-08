#import "OAIScoreText200ResponseReadabilitySubscores.h"

@implementation OAIScoreText200ResponseReadabilitySubscores

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"readingTimeSeconds": @"reading_time_seconds", @"forcast": @"forcast", @"flesch": @"flesch", @"smog": @"smog", @"ari": @"ari", @"lix": @"lix", @"colemanLiau": @"coleman_liau", @"kincaid": @"kincaid", @"fog": @"fog" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"readingTimeSeconds", @"forcast", @"flesch", @"smog", @"ari", @"lix", @"colemanLiau", @"kincaid", @"fog"];
  return [optionalProperties containsObject:propertyName];
}

@end
