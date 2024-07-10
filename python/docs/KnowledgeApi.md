# apileague.KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_quote**](KnowledgeApi.md#random_quote) | **GET** /retrieve-random-quote | Random Quote
[**random_riddle**](KnowledgeApi.md#random_riddle) | **GET** /retrieve-random-riddle | Random Riddle
[**random_trivia**](KnowledgeApi.md#random_trivia) | **GET** /retrieve-random-trivia | Random Trivia


# **random_quote**
> RandomQuote200Response random_quote(min_length=min_length, max_length=max_length)

Random Quote

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.random_quote200_response import RandomQuote200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.KnowledgeApi(api_client)
    min_length = 120 # int | The minimum length of the quote in letters. (optional)
    max_length = 300 # int | The maximum length of the quote in letters. (optional)

    try:
        # Random Quote
        api_response = api_instance.random_quote(min_length=min_length, max_length=max_length)
        print("The response of KnowledgeApi->random_quote:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KnowledgeApi->random_quote: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_length** | **int**| The minimum length of the quote in letters. | [optional] 
 **max_length** | **int**| The maximum length of the quote in letters. | [optional] 

### Return type

[**RandomQuote200Response**](RandomQuote200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_riddle**
> RandomRiddle200Response random_riddle(difficulty=difficulty)

Random Riddle

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.random_riddle200_response import RandomRiddle200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.KnowledgeApi(api_client)
    difficulty = 'easy' # str | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\". (optional)

    try:
        # Random Riddle
        api_response = api_instance.random_riddle(difficulty=difficulty)
        print("The response of KnowledgeApi->random_riddle:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KnowledgeApi->random_riddle: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | **str**| The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | [optional] 

### Return type

[**RandomRiddle200Response**](RandomRiddle200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_trivia**
> RandomTrivia200Response random_trivia(max_length=max_length)

Random Trivia

This endpoint returns a random piece of trivia.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.random_trivia200_response import RandomTrivia200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.KnowledgeApi(api_client)
    max_length = 300 # int | The maximum length of the trivia in letters. (optional)

    try:
        # Random Trivia
        api_response = api_instance.random_trivia(max_length=max_length)
        print("The response of KnowledgeApi->random_trivia:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling KnowledgeApi->random_trivia: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **max_length** | **int**| The maximum length of the trivia in letters. | [optional] 

### Return type

[**RandomTrivia200Response**](RandomTrivia200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

