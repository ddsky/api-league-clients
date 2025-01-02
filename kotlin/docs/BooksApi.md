# BooksApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findSimilarBooksAPI**](BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API |
| [**searchBooksAPI**](BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API |


<a id="findSimilarBooksAPI"></a>
# **findSimilarBooksAPI**
> FindSimilarBooksAPI200Response findSimilarBooksAPI(id, number)

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = BooksApi()
val id : kotlin.Int = 8302059 // kotlin.Int | The id of the book to which similar books should be found.
val number : kotlin.Int = 10 // kotlin.Int | The number of similar books to return in range [1,100]
try {
    val result : FindSimilarBooksAPI200Response = apiInstance.findSimilarBooksAPI(id, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BooksApi#findSimilarBooksAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BooksApi#findSimilarBooksAPI")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.Int**| The id of the book to which similar books should be found. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of similar books to return in range [1,100] | [optional] |

### Return type

[**FindSimilarBooksAPI200Response**](FindSimilarBooksAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchBooksAPI"></a>
# **searchBooksAPI**
> SearchBooksAPI200Response searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = BooksApi()
val query : kotlin.String = books about wizards // kotlin.String | The search query.
val earliestPublishYear : kotlin.Int = 2022 // kotlin.Int | The books must have been published after this year.
val latestPublishYear : kotlin.Int = 2023 // kotlin.Int | The books must have been published before this year.
val minRating : kotlin.Double = 0.8 // kotlin.Double | The minimum rating the book must have gotten in the interval [0,1].
val maxRating : kotlin.Double = 0.99 // kotlin.Double | The maximum rating the book must have gotten in the interval [0,1].
val genres : kotlin.String = nonfiction // kotlin.String | A comma-separated list of genres. Only books from any of the given genres will be returned.
val authors : kotlin.String = J.K. Rowling // kotlin.String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
val isbn : kotlin.String = 9781781257654 // kotlin.String | Only the book matching the ISBN-13 will be returned
val oclc : kotlin.String = 864418200 // kotlin.String | Only the book matching the OCLC will be returned
val sort : kotlin.String = rating // kotlin.String | The sorting criteria (publish-date or rating).
val sortDirection : kotlin.String = DESC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
val groupResults : kotlin.Boolean = false // kotlin.Boolean | Whether to group similar editions of the same book.
val offset : kotlin.Int = 0 // kotlin.Int | The number of books to skip in range [0,1000]
val number : kotlin.Int = 10 // kotlin.Int | The number of books to return in range [1,100]
try {
    val result : SearchBooksAPI200Response = apiInstance.searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BooksApi#searchBooksAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BooksApi#searchBooksAPI")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | [optional] |
| **earliestPublishYear** | **kotlin.Int**| The books must have been published after this year. | [optional] |
| **latestPublishYear** | **kotlin.Int**| The books must have been published before this year. | [optional] |
| **minRating** | **kotlin.Double**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] |
| **maxRating** | **kotlin.Double**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] |
| **genres** | **kotlin.String**| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] |
| **authors** | **kotlin.String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] |
| **isbn** | **kotlin.String**| Only the book matching the ISBN-13 will be returned | [optional] |
| **oclc** | **kotlin.String**| Only the book matching the OCLC will be returned | [optional] |
| **sort** | **kotlin.String**| The sorting criteria (publish-date or rating). | [optional] |
| **sortDirection** | **kotlin.String**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **groupResults** | **kotlin.Boolean**| Whether to group similar editions of the same book. | [optional] |
| **offset** | **kotlin.Int**| The number of books to skip in range [0,1000] | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of books to return in range [1,100] | [optional] |

### Return type

[**SearchBooksAPI200Response**](SearchBooksAPI200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

