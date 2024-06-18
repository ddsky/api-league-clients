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





@protocol OAIVerifyEmailAddress200Response
@end

@interface OAIVerifyEmailAddress200Response : OAIObject


@property(nonatomic) NSString* email;

@property(nonatomic) NSString* domain;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSString* middleName;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* fullName;

@property(nonatomic) NSString* username;

@property(nonatomic) NSString* image;

@property(nonatomic) NSString* result;

@property(nonatomic) NSNumber* disposable;

@property(nonatomic) NSNumber* acceptAll;

@property(nonatomic) NSNumber* freeProvider;

@end