#import "OAIInlineResponse20019.h"

@implementation OAIInlineResponse20019

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"numberOfWords": @"number_of_words", @"numberOfSentences": @"number_of_sentences", @"readability": @"readability", @"skimmability": @"skimmability", @"interestingness": @"interestingness", @"style": @"style", @"totalScore": @"total_score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"numberOfWords", @"numberOfSentences", @"readability", @"skimmability", @"interestingness", @"style", @"totalScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
