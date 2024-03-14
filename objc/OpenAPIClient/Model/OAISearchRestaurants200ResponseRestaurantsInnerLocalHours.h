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


#import "OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.h"
@protocol OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
@class OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;



@protocol OAISearchRestaurants200ResponseRestaurantsInnerLocalHours
@end

@interface OAISearchRestaurants200ResponseRestaurantsInnerLocalHours : OAIObject


@property(nonatomic) OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational* operational;

@property(nonatomic) OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational* delivery;

@property(nonatomic) OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational* pickup;

@property(nonatomic) OAISearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational* dineIn;

@end