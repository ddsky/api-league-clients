#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.0.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAISearchWeb200ResponseResultsInner.h"
@protocol OAISearchWeb200ResponseResultsInner;
@class OAISearchWeb200ResponseResultsInner;



@protocol OAISearchWeb200Response
@end

@interface OAISearchWeb200Response : OAIObject


@property(nonatomic) NSArray<OAISearchWeb200ResponseResultsInner>* results;

@end
