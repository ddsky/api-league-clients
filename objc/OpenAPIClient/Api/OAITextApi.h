#import <Foundation/Foundation.h>
#import "OAICorrectSpelling200Response.h"
#import "OAIDetectLanguage200ResponseInner.h"
#import "OAIDetectSentiment200Response.h"
#import "OAIExtractDates200Response.h"
#import "OAIExtractEntities200Response.h"
#import "OAIListWordSynonyms200Response.h"
#import "OAIPluralizeWord200Response.h"
#import "OAIScoreReadability200Response.h"
#import "OAIScoreText200Response.h"
#import "OAISingularizeWord200Response.h"
#import "OAIStemText200Response.h"
#import "OAITagPartOfSpeech200Response.h"
#import "OAIApi.h"

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



@interface OAITextApi: NSObject <OAIApi>

extern NSString* kOAITextApiErrorDomain;
extern NSInteger kOAITextApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Correct Spelling
/// The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
///
/// @param text The text to be corrected.
/// @param language The language of the text, one of en, de, es, fr, or it.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAICorrectSpelling200Response*
-(NSURLSessionTask*) correctSpellingWithText: (NSString*) text
    language: (NSString*) language
    completionHandler: (void (^)(OAICorrectSpelling200Response* output, NSError* error)) handler;


/// Detect Language
/// Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
///
/// @param text The text for which the language should be detected.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return NSArray<OAIDetectLanguage200ResponseInner>*
-(NSURLSessionTask*) detectLanguageWithText: (NSString*) text
    completionHandler: (void (^)(NSArray<OAIDetectLanguage200ResponseInner>* output, NSError* error)) handler;


/// Detect Sentiment
/// Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
///
/// @param text The text for which the sentiment should be detected.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIDetectSentiment200Response*
-(NSURLSessionTask*) detectSentimentWithText: (NSString*) text
    completionHandler: (void (^)(OAIDetectSentiment200Response* output, NSError* error)) handler;


/// Extract Dates
/// Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
///
/// @param text The text from which dates should be extracted.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIExtractDates200Response*
-(NSURLSessionTask*) extractDatesWithText: (NSString*) text
    completionHandler: (void (^)(OAIExtractDates200Response* output, NSError* error)) handler;


/// Extract Entities
/// Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
///
/// @param text The text from which entities should be extracted.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIExtractEntities200Response*
-(NSURLSessionTask*) extractEntitiesWithText: (NSString*) text
    completionHandler: (void (^)(OAIExtractEntities200Response* output, NSError* error)) handler;


/// List Word Synonyms
/// Return synonyms of a word.
///
/// @param word The (noun) word for which a list of synonyms should be returned.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIListWordSynonyms200Response*
-(NSURLSessionTask*) listWordSynonymsWithWord: (NSString*) word
    completionHandler: (void (^)(OAIListWordSynonyms200Response* output, NSError* error)) handler;


/// Pluralize Word
/// Find the plural form of a word.
///
/// @param word The (noun) word for which the plural form should be found.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIPluralizeWord200Response*
-(NSURLSessionTask*) pluralizeWordWithWord: (NSString*) word
    completionHandler: (void (^)(OAIPluralizeWord200Response* output, NSError* error)) handler;


/// Score Readability
/// Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
///
/// @param text The text to score for readability.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIScoreReadability200Response*
-(NSURLSessionTask*) scoreReadabilityWithText: (NSString*) text
    completionHandler: (void (^)(OAIScoreReadability200Response* output, NSError* error)) handler;


/// Score Text
/// Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
///
/// @param title The title of the text to score.
/// @param text The text to score for multiple metrics.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIScoreText200Response*
-(NSURLSessionTask*) scoreTextWithTitle: (NSString*) title
    text: (NSString*) text
    completionHandler: (void (^)(OAIScoreText200Response* output, NSError* error)) handler;


/// Singularize Word
/// Find the singular form of a word.
///
/// @param word The (noun) word for which the singular form should be found.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAISingularizeWord200Response*
-(NSURLSessionTask*) singularizeWordWithWord: (NSString*) word
    completionHandler: (void (^)(OAISingularizeWord200Response* output, NSError* error)) handler;


/// Stem Text
/// The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
///
/// @param text The text to be stemmed.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIStemText200Response*
-(NSURLSessionTask*) stemTextWithText: (NSString*) text
    completionHandler: (void (^)(OAIStemText200Response* output, NSError* error)) handler;


/// Tag Part of Speech
/// Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
///
/// @param text The text to tag the part of speech.
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAITagPartOfSpeech200Response*
-(NSURLSessionTask*) tagPartOfSpeechWithText: (NSString*) text
    completionHandler: (void (^)(OAITagPartOfSpeech200Response* output, NSError* error)) handler;



@end
