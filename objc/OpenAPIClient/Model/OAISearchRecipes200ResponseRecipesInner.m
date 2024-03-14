#import "OAISearchRecipes200ResponseRecipesInner.h"

@implementation OAISearchRecipes200ResponseRecipesInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"images": @"images", @"nutrition": @"nutrition", @"_id": @"id", @"title": @"title" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"images", @"nutrition", @"_id", @"title"];
  return [optionalProperties containsObject:propertyName];
}

@end
