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





@protocol OAISearchNews200ResponseNewsInner
@end

@interface OAISearchNews200ResponseNewsInner : OAIObject


@property(nonatomic) NSString* summary;

@property(nonatomic) NSString* image;

@property(nonatomic) NSNumber* sentiment;

@property(nonatomic) NSString* sourceCountry;

@property(nonatomic) NSString* language;

@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* text;

@property(nonatomic) NSString* title;

@property(nonatomic) NSString* publishDate;

@property(nonatomic) NSString* url;

@property(nonatomic) NSArray<NSString*>* authors;

@end
