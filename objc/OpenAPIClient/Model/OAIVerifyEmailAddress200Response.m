#import "OAIVerifyEmailAddress200Response.h"

@implementation OAIVerifyEmailAddress200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"email": @"email", @"domain": @"domain", @"firstName": @"first_name", @"middleName": @"middle_name", @"lastName": @"last_name", @"fullName": @"full_name", @"username": @"username", @"image": @"image", @"result": @"result", @"disposable": @"disposable", @"acceptAll": @"accept_all", @"freeProvider": @"free_provider" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"email", @"domain", @"firstName", @"middleName", @"lastName", @"fullName", @"username", @"image", @"result", @"disposable", @"acceptAll", @"freeProvider"];
  return [optionalProperties containsObject:propertyName];
}

@end
