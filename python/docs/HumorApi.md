# openapi_client.HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word**](HumorApi.md#generate_nonsense_word) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**random_joke**](HumorApi.md#random_joke) | **GET** /retrieve-random-joke | Random Joke
[**random_meme**](HumorApi.md#random_meme) | **GET** /retrieve-random-meme | Random Meme
[**search_gifs**](HumorApi.md#search_gifs) | **GET** /search-gifs | Search Gifs
[**search_jokes**](HumorApi.md#search_jokes) | **GET** /search-jokes | Search Jokes
[**search_memes**](HumorApi.md#search_memes) | **GET** /search-memes | Search Memes


# **generate_nonsense_word**
> InlineResponse2008 generate_nonsense_word()

Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import humor_api
from openapi_client.model.inline_response2008 import InlineResponse2008
from pprint import pprint
# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humor_api.HumorApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Generate Nonsense Word
        api_response = api_instance.generate_nonsense_word()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->generate_nonsense_word: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

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

# **random_joke**
> InlineResponse2004Jokes random_joke()

Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import humor_api
from openapi_client.model.inline_response2004_jokes import InlineResponse2004Jokes
from pprint import pprint
# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humor_api.HumorApi(api_client)
    include_tags = "animal" # str | A comma-separated list of tags the jokes should have. (optional)
    exclude_tags = "nsfw,dark" # str | A comma-separated list of tags the jokes must not have. (optional)
    min_rating = 0 # float | The minimum rating in range [0.0,1.0] of the jokes. (optional)
    max_length = 140 # int | The maximum length of the joke in letters. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Random Joke
        api_response = api_instance.random_joke(include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->random_joke: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_tags** | **str**| A comma-separated list of tags the jokes should have. | [optional]
 **exclude_tags** | **str**| A comma-separated list of tags the jokes must not have. | [optional]
 **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the jokes. | [optional]
 **max_length** | **int**| The maximum length of the joke in letters. | [optional]

### Return type

[**InlineResponse2004Jokes**](InlineResponse2004Jokes.md)

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

# **random_meme**
> InlineResponse2006 random_meme()

Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import humor_api
from openapi_client.model.inline_response2006 import InlineResponse2006
from pprint import pprint
# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humor_api.HumorApi(api_client)
    keywords = "airplane" # str | A comma-separated list of words that must occur in the meme. (optional)
    keywords_in_image = True # bool | Whether the keywords must occur in the image. (optional)
    media_type = "image" # str | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
    min_rating = 0 # float | The minimum rating in range [0.0-1.0] of the meme. (optional)
    max_age_days = 30 # int | The maximum age of the meme in days. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Random Meme
        api_response = api_instance.random_meme(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, min_rating=min_rating, max_age_days=max_age_days)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->random_meme: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma-separated list of words that must occur in the meme. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional]
 **media_type** | **str**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]
 **min_rating** | **float**| The minimum rating in range [0.0-1.0] of the meme. | [optional]
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

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

# **search_gifs**
> InlineResponse2007 search_gifs(query)

Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import humor_api
from openapi_client.model.inline_response2007 import InlineResponse2007
from pprint import pprint
# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humor_api.HumorApi(api_client)
    query = "dogs" # str | The search query.
    number = 5 # int | The number of gifs to return in range [1,10] (optional)

    # example passing only required values which don't have defaults set
    try:
        # Search Gifs
        api_response = api_instance.search_gifs(query)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->search_gifs: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search Gifs
        api_response = api_instance.search_gifs(query, number=number)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->search_gifs: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. |
 **number** | **int**| The number of gifs to return in range [1,10] | [optional]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

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

# **search_jokes**
> InlineResponse2004 search_jokes()

Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import humor_api
from openapi_client.model.inline_response2004 import InlineResponse2004
from pprint import pprint
# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humor_api.HumorApi(api_client)
    keywords = "horse,man" # str | A comma-separated list of words that must occur in the joke. (optional)
    include_tags = "animal" # str | A comma-separated list of tags the jokes should have. (optional)
    exclude_tags = "nsfw,dark" # str | A comma-separated list of tags the jokes must not have. (optional)
    min_rating = 0 # float | The minimum rating (0-10) of the jokes. (optional)
    max_length = 140 # float | The maximum length of the joke in letters. (optional)
    offset = 0 # int | The number of jokes to skip, between 0 and 1000. (optional)
    number = 3 # int | The number of jokes, between 1 and 10. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search Jokes
        api_response = api_instance.search_jokes(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length, offset=offset, number=number)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->search_jokes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma-separated list of words that must occur in the joke. | [optional]
 **include_tags** | **str**| A comma-separated list of tags the jokes should have. | [optional]
 **exclude_tags** | **str**| A comma-separated list of tags the jokes must not have. | [optional]
 **min_rating** | **float**| The minimum rating (0-10) of the jokes. | [optional]
 **max_length** | **float**| The maximum length of the joke in letters. | [optional]
 **offset** | **int**| The number of jokes to skip, between 0 and 1000. | [optional]
 **number** | **int**| The number of jokes, between 1 and 10. | [optional]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

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

# **search_memes**
> InlineResponse2005 search_memes()

Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import humor_api
from openapi_client.model.inline_response2005 import InlineResponse2005
from pprint import pprint
# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = humor_api.HumorApi(api_client)
    keywords = "rocket" # str | A comma-separated list of words that must occur in the meme. (optional)
    keywords_in_image = True # bool | Whether the keywords must occur in the image. (optional)
    media_type = "image" # str | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
    min_rating = 0 # float | The minimum rating in range [0.0,1.0] of the meme. (optional)
    max_age_days = 30 # int | The maximum age of the meme in days. (optional)
    offset = 0 # int | The number of memes to skip, between 0 and 1000. (optional)
    number = 3 # int | The number of memes, between 0 and 10. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search Memes
        api_response = api_instance.search_memes(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, min_rating=min_rating, max_age_days=max_age_days, offset=offset, number=number)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling HumorApi->search_memes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma-separated list of words that must occur in the meme. | [optional]
 **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional]
 **media_type** | **str**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional]
 **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the meme. | [optional]
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional]
 **offset** | **int**| The number of memes to skip, between 0 and 1000. | [optional]
 **number** | **int**| The number of memes, between 0 and 10. | [optional]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

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

