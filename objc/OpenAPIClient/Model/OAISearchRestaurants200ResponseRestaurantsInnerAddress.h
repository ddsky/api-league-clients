#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAISearchRestaurants200ResponseRestaurantsInnerAddress
@end

@interface OAISearchRestaurants200ResponseRestaurantsInnerAddress : OAIObject


@property(nonatomic) NSString* zipcode;

@property(nonatomic) NSString* country;

@property(nonatomic) NSString* city;

@property(nonatomic) NSNumber* latitude;

@property(nonatomic) NSNumber* lon;

@property(nonatomic) NSString* streetAddr2;

@property(nonatomic) NSString* state;

@property(nonatomic) NSString* streetAddr;

@property(nonatomic) NSNumber* lat;

@property(nonatomic) NSNumber* longitude;

@end
