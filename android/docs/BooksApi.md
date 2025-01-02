# BooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooksAPI**](BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API
[**searchBooksAPI**](BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API



## findSimilarBooksAPI

> FindSimilarBooksAPI200Response findSimilarBooksAPI(id, number)

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example

```java
// Import classes:
//import com.apileague.BooksApi;

BooksApi apiInstance = new BooksApi();
Integer id = 8302059; // Integer | The id of the book to which similar books should be found.
Integer number = 10; // Integer | The number of similar books to return in range [1,100]
try {
    FindSimilarBooksAPI200Response result = apiInstance.findSimilarBooksAPI(id, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BooksApi#findSimilarBooksAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the book to which similar books should be found. | [default to null]
 **number** | **Integer**| The number of similar books to return in range [1,100] | [optional] [default to null]

### Return type

[**FindSimilarBooksAPI200Response**](FindSimilarBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchBooksAPI

> SearchBooksAPI200Response searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example

```java
// Import classes:
//import com.apileague.BooksApi;

BooksApi apiInstance = new BooksApi();
String query = books about wizards; // String | The search query.
Integer earliestPublishYear = 2022; // Integer | The books must have been published after this year.
Integer latestPublishYear = 2023; // Integer | The books must have been published before this year.
Double minRating = 0.8; // Double | The minimum rating the book must have gotten in the interval [0,1].
Double maxRating = 0.99; // Double | The maximum rating the book must have gotten in the interval [0,1].
String genres = nonfiction; // String | A comma-separated list of genres. Only books from any of the given genres will be returned.
String authors = J.K. Rowling; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
String isbn = 9781781257654; // String | Only the book matching the ISBN-13 will be returned
String oclc = 864418200; // String | Only the book matching the OCLC will be returned
String sort = rating; // String | The sorting criteria (publish-date or rating).
String sortDirection = DESC; // String | Whether to sort ascending or descending (ASC or DESC).
Boolean groupResults = false; // Boolean | Whether to group similar editions of the same book.
Integer offset = 0; // Integer | The number of books to skip in range [0,1000]
Integer number = 10; // Integer | The number of books to return in range [1,100]
try {
    SearchBooksAPI200Response result = apiInstance.searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BooksApi#searchBooksAPI");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] [default to null]
 **earliestPublishYear** | **Integer**| The books must have been published after this year. | [optional] [default to null]
 **latestPublishYear** | **Integer**| The books must have been published before this year. | [optional] [default to null]
 **minRating** | **Double**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] [default to null]
 **maxRating** | **Double**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] [default to null]
 **genres** | **String**| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] [default to null]
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] [default to null]
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] [default to null]
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] [default to null]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] [default to null]
 **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional] [default to null]
 **offset** | **Integer**| The number of books to skip in range [0,1000] | [optional] [default to null]
 **number** | **Integer**| The number of books to return in range [1,100] | [optional] [default to null]

### Return type

[**SearchBooksAPI200Response**](SearchBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

