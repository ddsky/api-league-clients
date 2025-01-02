# BooksApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**findSimilarBooksAPI**](BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API |
| [**searchBooksAPI**](BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API |


<a id="findSimilarBooksAPI"></a>
# **findSimilarBooksAPI**
> FindSimilarBooksAPI200Response findSimilarBooksAPI(id, number)

Find Similar Books API

Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.BooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    BooksApi apiInstance = new BooksApi(defaultClient);
    Integer id = 8302059; // Integer | The id of the book to which similar books should be found.
    Integer number = 10; // Integer | The number of similar books to return in range [1,100]
    try {
      FindSimilarBooksAPI200Response result = apiInstance.findSimilarBooksAPI(id, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BooksApi#findSimilarBooksAPI");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**| The id of the book to which similar books should be found. | |
| **number** | **Integer**| The number of similar books to return in range [1,100] | [optional] |

### Return type

[**FindSimilarBooksAPI200Response**](FindSimilarBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

<a id="searchBooksAPI"></a>
# **searchBooksAPI**
> SearchBooksAPI200Response searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books API

Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.BooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.apileague.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    BooksApi apiInstance = new BooksApi(defaultClient);
    String query = "books about wizards"; // String | The search query.
    Integer earliestPublishYear = 2022; // Integer | The books must have been published after this year.
    Integer latestPublishYear = 2023; // Integer | The books must have been published before this year.
    Double minRating = 0.8D; // Double | The minimum rating the book must have gotten in the interval [0,1].
    Double maxRating = 0.99D; // Double | The maximum rating the book must have gotten in the interval [0,1].
    String genres = "nonfiction"; // String | A comma-separated list of genres. Only books from any of the given genres will be returned.
    String authors = "J.K. Rowling"; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
    String isbn = "9781781257654"; // String | Only the book matching the ISBN-13 will be returned
    String oclc = "864418200"; // String | Only the book matching the OCLC will be returned
    String sort = "rating"; // String | The sorting criteria (publish-date or rating).
    String sortDirection = "DESC"; // String | Whether to sort ascending or descending (ASC or DESC).
    Boolean groupResults = false; // Boolean | Whether to group similar editions of the same book.
    Integer offset = 0; // Integer | The number of books to skip in range [0,1000]
    Integer number = 10; // Integer | The number of books to return in range [1,100]
    try {
      SearchBooksAPI200Response result = apiInstance.searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BooksApi#searchBooksAPI");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**| The search query. | [optional] |
| **earliestPublishYear** | **Integer**| The books must have been published after this year. | [optional] |
| **latestPublishYear** | **Integer**| The books must have been published before this year. | [optional] |
| **minRating** | **Double**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] |
| **maxRating** | **Double**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] |
| **genres** | **String**| A comma-separated list of genres. Only books from any of the given genres will be returned. | [optional] |
| **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] |
| **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] |
| **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] |
| **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] |
| **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional] |
| **offset** | **Integer**| The number of books to skip in range [0,1000] | [optional] |
| **number** | **Integer**| The number of books to return in range [1,100] | [optional] |

### Return type

[**SearchBooksAPI200Response**](SearchBooksAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **402** | Payment Required |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **406** | Not Acceptable |  -  |
| **429** | Too Many Requests |  -  |

