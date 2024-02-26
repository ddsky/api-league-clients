#import "OAIInlineResponse20019SkimmabilitySubscores.h"

@implementation OAIInlineResponse20019SkimmabilitySubscores

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bulletPointRatioScore": @"bullet_point_ratio_score", @"imageScore": @"image_score", @"highlightedWordRatioScore": @"highlighted_word_ratio_score", @"videoScore": @"video_score", @"paragraphScore": @"paragraph_score", @"paragraphHeadlineRatioScore": @"paragraph_headline_ratio_score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bulletPointRatioScore", @"imageScore", @"highlightedWordRatioScore", @"videoScore", @"paragraphScore", @"paragraphHeadlineRatioScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
