#import "OAISearchRestaurants200ResponseRestaurantsInner.h"

@implementation OAISearchRestaurants200ResponseRestaurantsInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"offersThirdPartyDelivery": @"offers_third_party_delivery", @"address": @"address", @"supportsUpcCodes": @"supports_upc_codes", @"isOpen": @"is_open", @"_description": @"description", @"weightedRatingValue": @"weighted_rating_value", @"type": @"type", @"offersFirstPartyDelivery": @"offers_first_party_delivery", @"aggregatedRatingCount": @"aggregated_rating_count", @"pickupEnabled": @"pickup_enabled", @"cuisines": @"cuisines", @"miles": @"miles", @"dollarSigns": @"dollar_signs", @"deliveryEnabled": @"delivery_enabled", @"name": @"name", @"phoneNumber": @"phone_number", @"_id": @"_id", @"localHours": @"local_hours" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"offersThirdPartyDelivery", @"address", @"supportsUpcCodes", @"isOpen", @"_description", @"weightedRatingValue", @"type", @"offersFirstPartyDelivery", @"aggregatedRatingCount", @"pickupEnabled", @"cuisines", @"miles", @"dollarSigns", @"deliveryEnabled", @"name", @"phoneNumber", @"_id", @"localHours"];
  return [optionalProperties containsObject:propertyName];
}

@end
