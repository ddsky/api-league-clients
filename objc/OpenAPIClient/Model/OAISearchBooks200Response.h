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


#import "OAISearchBooks200ResponseBooksInner.h"
@protocol OAISearchBooks200ResponseBooksInner;
@class OAISearchBooks200ResponseBooksInner;



@protocol OAISearchBooks200Response
@end

@interface OAISearchBooks200Response : OAIObject


@property(nonatomic) NSNumber* available;

@property(nonatomic) NSNumber* number;

@property(nonatomic) NSNumber* offset;

@property(nonatomic) NSArray<OAISearchBooks200ResponseBooksInner>* books;

@end
