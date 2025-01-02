# .BooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooksAPI**](BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API
[**searchBooksAPI**](BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API


# **findSimilarBooksAPI**
> FindSimilarBooksAPI200Response findSimilarBooksAPI()

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BooksApi(configuration);

let body:.BooksApiFindSimilarBooksAPIRequest = {
  // number | The id of the book to which similar books should be found.
  id: 8302059,
  // number | The number of similar books to return in range [1,100] (optional)
  number: 10,
};

apiInstance.findSimilarBooksAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the book to which similar books should be found. | defaults to undefined
 **number** | [**number**] | The number of similar books to return in range [1,100] | (optional) defaults to undefined


### Return type

**FindSimilarBooksAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchBooksAPI**
> SearchBooksAPI200Response searchBooksAPI()

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BooksApi(configuration);

let body:.BooksApiSearchBooksAPIRequest = {
  // string | The search query. (optional)
  query: "books about wizards",
  // number | The books must have been published after this year. (optional)
  earliestPublishYear: 2022,
  // number | The books must have been published before this year. (optional)
  latestPublishYear: 2023,
  // number | The minimum rating the book must have gotten in the interval [0,1]. (optional)
  minRating: 0.8,
  // number | The maximum rating the book must have gotten in the interval [0,1]. (optional)
  maxRating: 0.99,
  // string | A comma-separated list of genres. Only books from any of the given genres will be returned. (optional)
  genres: "nonfiction",
  // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\'t disambiguate. (optional)
  authors: "J.K. Rowling",
  // string | Only the book matching the ISBN-13 will be returned (optional)
  isbn: "9781781257654",
  // string | Only the book matching the OCLC will be returned (optional)
  oclc: "864418200",
  // string | The sorting criteria (publish-date or rating). (optional)
  sort: "rating",
  // string | Whether to sort ascending or descending (ASC or DESC). (optional)
  sortDirection: "DESC",
  // boolean | Whether to group similar editions of the same book. (optional)
  groupResults: false,
  // number | The number of books to skip in range [0,1000] (optional)
  offset: 0,
  // number | The number of books to return in range [1,100] (optional)
  number: 10,
};

apiInstance.searchBooksAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **earliestPublishYear** | [**number**] | The books must have been published after this year. | (optional) defaults to undefined
 **latestPublishYear** | [**number**] | The books must have been published before this year. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating the book must have gotten in the interval [0,1]. | (optional) defaults to undefined
 **maxRating** | [**number**] | The maximum rating the book must have gotten in the interval [0,1]. | (optional) defaults to undefined
 **genres** | [**string**] | A comma-separated list of genres. Only books from any of the given genres will be returned. | (optional) defaults to undefined
 **authors** | [**string**] | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate. | (optional) defaults to undefined
 **isbn** | [**string**] | Only the book matching the ISBN-13 will be returned | (optional) defaults to undefined
 **oclc** | [**string**] | Only the book matching the OCLC will be returned | (optional) defaults to undefined
 **sort** | [**string**] | The sorting criteria (publish-date or rating). | (optional) defaults to undefined
 **sortDirection** | [**string**] | Whether to sort ascending or descending (ASC or DESC). | (optional) defaults to undefined
 **groupResults** | [**boolean**] | Whether to group similar editions of the same book. | (optional) defaults to undefined
 **offset** | [**number**] | The number of books to skip in range [0,1000] | (optional) defaults to undefined
 **number** | [**number**] | The number of books to return in range [1,100] | (optional) defaults to undefined


### Return type

**SearchBooksAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


