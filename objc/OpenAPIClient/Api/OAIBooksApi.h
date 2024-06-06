#import <Foundation/Foundation.h>
#import "OAIFindSimilarBooks200Response.h"
#import "OAISearchBooks200Response.h"
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



@interface OAIBooksApi: NSObject <OAIApi>

extern NSString* kOAIBooksApiErrorDomain;
extern NSInteger kOAIBooksApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Find Similar Books
/// Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
///
/// @param _id The id of the book to which similar books should be found.
/// @param number The number of similar books to return in range [1,100] (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAIFindSimilarBooks200Response*
-(NSURLSessionTask*) findSimilarBooksWithId: (NSNumber*) _id
    number: (NSNumber*) number
    completionHandler: (void (^)(OAIFindSimilarBooks200Response* output, NSError* error)) handler;


/// Search Books
/// Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
///
/// @param query The search query. (optional)
/// @param earliestPublishYear The books must have been published after this year. (optional)
/// @param latestPublishYear The books must have been published before this year. (optional)
/// @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
/// @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
/// @param genres A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
/// @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
/// @param isbn Only the book matching the ISBN-13 will be returned (optional)
/// @param oclc Only the book matching the OCLC will be returned (optional)
/// @param sort The sorting criteria (publish-date or rating). (optional)
/// @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
/// @param groupResults Whether to group similar editions of the same book. (optional)
/// @param offset The number of books to skip in range [0,1000] (optional)
/// @param number The number of books to return in range [1,100] (optional)
/// 
///  code:200 message:"Success",
///  code:401 message:"Unauthorized",
///  code:402 message:"Payment Required",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found",
///  code:406 message:"Not Acceptable",
///  code:429 message:"Too Many Requests"
///
/// @return OAISearchBooks200Response*
-(NSURLSessionTask*) searchBooksWithQuery: (NSString*) query
    earliestPublishYear: (NSNumber*) earliestPublishYear
    latestPublishYear: (NSNumber*) latestPublishYear
    minRating: (NSNumber*) minRating
    maxRating: (NSNumber*) maxRating
    genres: (NSString*) genres
    authors: (NSString*) authors
    isbn: (NSString*) isbn
    oclc: (NSString*) oclc
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    groupResults: (NSNumber*) groupResults
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(OAISearchBooks200Response* output, NSError* error)) handler;



@end
