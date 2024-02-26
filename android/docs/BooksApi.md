# BooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](BooksApi.md#findSimilarBooks) | **GET** /list-similar-books | Find Similar Books
[**searchBooks**](BooksApi.md#searchBooks) | **GET** /search-books | Search Books



## findSimilarBooks

> InlineResponse2001 findSimilarBooks(id, number)

Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example

```java
// Import classes:
//import com.apileague.BooksApi;

BooksApi apiInstance = new BooksApi();
Integer id = 8302059; // Integer | The id of the book to which similar books should be found.
Integer number = 10; // Integer | The number of similar books to return in range [1,100]
try {
    InlineResponse2001 result = apiInstance.findSimilarBooks(id, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BooksApi#findSimilarBooks");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the book to which similar books should be found. | [default to null]
 **number** | **Integer**| The number of similar books to return in range [1,100] | [optional] [default to null]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchBooks

> InlineResponse200 searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query.

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
String genres = nonfiction; // String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
String authors = J.K. Rowling; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
String isbn = 9781781257654; // String | Only the book matching the ISBN-13 will be returned
String oclc = 864418200; // String | Only the book matching the OCLC will be returned
String sort = rating; // String | The sorting criteria (publish-date or rating).
String sortDirection = DESC; // String | Whether to sort ascending or descending (ASC or DESC).
Boolean groupResults = false; // Boolean | Whether to group similar editions of the same book.
Integer offset = 0; // Integer | The number of books to skip in range [0,1000]
Integer number = 10; // Integer | The number of books to return in range [1,100]
try {
    InlineResponse200 result = apiInstance.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BooksApi#searchBooks");
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
 **genres** | **String**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] [default to null]
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] [default to null]
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] [default to null]
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] [default to null]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] [default to null]
 **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional] [default to null]
 **offset** | **Integer**| The number of books to skip in range [0,1000] | [optional] [default to null]
 **number** | **Integer**| The number of books to return in range [1,100] | [optional] [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

