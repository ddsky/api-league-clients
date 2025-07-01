# GamesApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**findSimilarGamesAPI**](GamesApi.md#findSimilarGamesAPI) | **GET** /list-similar-games | Find Similar Games API |
| [**retrieveGameById**](GamesApi.md#retrieveGameById) | **GET** /retrieve-game | Retrieve Game by Id |
| [**searchGamesAPI**](GamesApi.md#searchGamesAPI) | **GET** /search-games | Search Games API |


<a id="findSimilarGamesAPI"></a>
# **findSimilarGamesAPI**
> FindSimilarGamesAPI200Response findSimilarGamesAPI(id, limit)

Find Similar Games API

Find similar games based on a given game using AI. This API allows you to retrieve a list of games that are similar to a specified game, providing recommendations based on various factors such as genre, gameplay mechanics, and user preferences.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.GamesApi;

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

    GamesApi apiInstance = new GamesApi(defaultClient);
    Integer id = 1273796; // Integer | The id of the game.
    Integer limit = 10; // Integer | Number of results to return between 1 and 10.
    try {
      FindSimilarGamesAPI200Response result = apiInstance.findSimilarGamesAPI(id, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GamesApi#findSimilarGamesAPI");
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
| **id** | **Integer**| The id of the game. | |
| **limit** | **Integer**| Number of results to return between 1 and 10. | [optional] |

### Return type

[**FindSimilarGamesAPI200Response**](FindSimilarGamesAPI200Response.md)

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

<a id="retrieveGameById"></a>
# **retrieveGameById**
> RetrieveGameById200Response retrieveGameById(id)

Retrieve Game by Id

This API allows you to retrieve detailed information about a specific game by its unique identifier. Game details include the game&#39;s name, description, release date, developer, platforms, genres, tags, ratings, screenshots, videos, and more.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.GamesApi;

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

    GamesApi apiInstance = new GamesApi(defaultClient);
    Integer id = 1273796; // Integer | The id of the game.
    try {
      RetrieveGameById200Response result = apiInstance.retrieveGameById(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GamesApi#retrieveGameById");
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
| **id** | **Integer**| The id of the game. | |

### Return type

[**RetrieveGameById200Response**](RetrieveGameById200Response.md)

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

<a id="searchGamesAPI"></a>
# **searchGamesAPI**
> SearchGamesAPI200Response searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions)

Search Games API

Search through a vast database of over half a million video games from more than 50 platforms. This API allows you to find games based on various criteria such as genre, platform, release date, and more. The results include detailed information about each game, including ratings, descriptions, and images.

### Example
```java
// Import classes:
import com.apileague.client.ApiClient;
import com.apileague.client.ApiException;
import com.apileague.client.Configuration;
import com.apileague.client.auth.*;
import com.apileague.client.models.*;
import com.apileague.GamesApi;

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

    GamesApi apiInstance = new GamesApi(defaultClient);
    String query = "strategy games"; // String | The search query.
    Integer offset = 0; // Integer | Pagination offset (start index) between 0 and 1000.
    Integer limit = 10; // Integer | Number of results to return between 1 and 100.
    String filters = "[]"; // String | JSON array of filters
    String sort = "rating"; // String | Field to sort by
    String sortOrder = "asc"; // String | Sort order (asc or desc)
    Boolean generateFilterOptions = true; // Boolean | Whether to generate filter options
    try {
      SearchGamesAPI200Response result = apiInstance.searchGamesAPI(query, offset, limit, filters, sort, sortOrder, generateFilterOptions);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GamesApi#searchGamesAPI");
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
| **offset** | **Integer**| Pagination offset (start index) between 0 and 1000. | [optional] |
| **limit** | **Integer**| Number of results to return between 1 and 100. | [optional] |
| **filters** | **String**| JSON array of filters | [optional] |
| **sort** | **String**| Field to sort by | [optional] |
| **sortOrder** | **String**| Sort order (asc or desc) | [optional] |
| **generateFilterOptions** | **Boolean**| Whether to generate filter options | [optional] |

### Return type

[**SearchGamesAPI200Response**](SearchGamesAPI200Response.md)

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

