# ApileagueJs.BooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooksAPI**](BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API
[**searchBooksAPI**](BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API



## findSimilarBooksAPI

> FindSimilarBooksAPI200Response findSimilarBooksAPI(id, opts)

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.BooksApi();
let id = 8302059; // Number | The id of the book to which similar books should be found.
let opts = {
  'number': 10 // Number | The number of similar books to return in range [1,100]
};
apiInstance.findSimilarBooksAPI(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the book to which similar books should be found. | 
 **number** | **Number**| The number of similar books to return in range [1,100] | [optional] 

### Return type

[**FindSimilarBooksAPI200Response**](FindSimilarBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchBooksAPI

> SearchBooksAPI200Response searchBooksAPI(opts)

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example

```javascript
import ApileagueJs from 'apileague-js';
let defaultClient = ApileagueJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new ApileagueJs.BooksApi();
let opts = {
  'query': "books about wizards", // String | The search query.
  'earliestPublishYear': 2022, // Number | The books must have been published after this year.
  'latestPublishYear': 2023, // Number | The books must have been published before this year.
  'minRating': 0.8, // Number | The minimum rating the book must have gotten in the interval [0,1].
  'maxRating': 0.99, // Number | The maximum rating the book must have gotten in the interval [0,1].
  'genres': "nonfiction", // String | A comma-separated list of genres. Only books from any of the given genres will be returned.
  'authors': "J.K. Rowling", // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
  'isbn': "9781781257654", // String | Only the book matching the ISBN-13 will be returned
  'oclc': "864418200", // String | Only the book matching the OCLC will be returned
  'sort': "rating", // String | The sorting criteria (publish-date or rating).
  'sortDirection': "DESC", // String | Whether to sort ascending or descending (ASC or DESC).
  'groupResults': false, // Boolean | Whether to group similar editions of the same book.
  'offset': 0, // Number | The number of books to skip in range [0,1000]
  'number': 10 // Number | The number of books to return in range [1,100]
};
apiInstance.searchBooksAPI(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **earliestPublishYear** | **Number**| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **Number**| The books must have been published before this year. | [optional] 
 **minRating** | **Number**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **Number**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **String**| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional] 
 **offset** | **Number**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **Number**| The number of books to return in range [1,100] | [optional] 

### Return type

[**SearchBooksAPI200Response**](SearchBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

