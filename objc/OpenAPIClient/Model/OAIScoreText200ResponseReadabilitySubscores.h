#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* API League
* API League is a Hub for World Class APIs.
*
* The version of the OpenAPI document: 1.2.0
* Contact: mail@apileague.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIScoreText200ResponseReadabilitySubscores
@end

@interface OAIScoreText200ResponseReadabilitySubscores : OAIObject


@property(nonatomic) NSNumber* readingTimeSeconds;

@property(nonatomic) NSNumber* forcast;

@property(nonatomic) NSNumber* flesch;

@property(nonatomic) NSNumber* smog;

@property(nonatomic) NSNumber* ari;

@property(nonatomic) NSNumber* lix;

@property(nonatomic) NSNumber* colemanLiau;

@property(nonatomic) NSNumber* kincaid;

@property(nonatomic) NSNumber* fog;

@end
