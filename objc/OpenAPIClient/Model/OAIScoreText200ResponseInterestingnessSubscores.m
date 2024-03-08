#import "OAIScoreText200ResponseInterestingnessSubscores.h"

@implementation OAIScoreText200ResponseInterestingnessSubscores

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"titleRatingScore": @"title_rating_score", @"quoteScore": @"quote_score", @"lengthScore": @"length_score", @"linkScore": @"link_score", @"googleHitsScore": @"google_hits_score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"titleRatingScore", @"quoteScore", @"lengthScore", @"linkScore", @"googleHitsScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
