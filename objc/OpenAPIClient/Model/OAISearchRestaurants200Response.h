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


#import "OAISearchRestaurants200ResponseRestaurantsInner.h"
@protocol OAISearchRestaurants200ResponseRestaurantsInner;
@class OAISearchRestaurants200ResponseRestaurantsInner;



@protocol OAISearchRestaurants200Response
@end

@interface OAISearchRestaurants200Response : OAIObject


@property(nonatomic) NSArray<OAISearchRestaurants200ResponseRestaurantsInner>* restaurants;

@end