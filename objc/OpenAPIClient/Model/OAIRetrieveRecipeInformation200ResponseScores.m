#import "OAIRetrieveRecipeInformation200ResponseScores.h"

@implementation OAIRetrieveRecipeInformation200ResponseScores

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"metaScore": @"meta_score", @"weightWatcherSmartPoints": @"weight_watcher_smart_points", @"healthScore": @"health_score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"metaScore", @"weightWatcherSmartPoints", @"healthScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
