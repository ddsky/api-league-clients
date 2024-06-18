#import "OAIExtractNews200Response.h"

@implementation OAIExtractNews200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"title", @"text": @"text", @"url": @"url", @"images": @"images", @"videos": @"videos", @"publishDate": @"publish_date", @"authors": @"authors", @"language": @"language" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"text", @"url", @"images", @"videos", @"publishDate", @"authors", @"language"];
  return [optionalProperties containsObject:propertyName];
}

@end
