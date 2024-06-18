#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.3.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAISearchNews200ResponseNewsInner.h"
@protocol OAISearchNews200ResponseNewsInner;
@class OAISearchNews200ResponseNewsInner;



@protocol OAISearchNews200Response
@end

@interface OAISearchNews200Response : OAIObject


@property(nonatomic) NSNumber* offset;

@property(nonatomic) NSNumber* number;

@property(nonatomic) NSNumber* available;

@property(nonatomic) NSArray<OAISearchNews200ResponseNewsInner>* varNews;

@end
