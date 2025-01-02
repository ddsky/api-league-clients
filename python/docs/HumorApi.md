# apileague.HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word_api**](HumorApi.md#generate_nonsense_word_api) | **GET** /generate-nonsense-word | Generate Nonsense Word API
[**random_joke_api**](HumorApi.md#random_joke_api) | **GET** /retrieve-random-joke | Random Joke API
[**random_meme_api**](HumorApi.md#random_meme_api) | **GET** /retrieve-random-meme | Random Meme API
[**search_gifs_api**](HumorApi.md#search_gifs_api) | **GET** /search-gifs | Search Gifs API
[**search_jokes_api**](HumorApi.md#search_jokes_api) | **GET** /search-jokes | Search Jokes API
[**search_memes_api**](HumorApi.md#search_memes_api) | **GET** /search-memes | Search Memes API


# **generate_nonsense_word_api**
> GenerateNonsenseWordAPI200Response generate_nonsense_word_api()

Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.generate_nonsense_word_api200_response import GenerateNonsenseWordAPI200Response
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
    api_instance = apileague.HumorApi(api_client)

    try:
        # Generate Nonsense Word API
        api_response = api_instance.generate_nonsense_word_api()
        print("The response of HumorApi->generate_nonsense_word_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HumorApi->generate_nonsense_word_api: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

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

# **random_joke_api**
> SearchJokesAPI200ResponseJokesInner random_joke_api(include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)

Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_jokes_api200_response_jokes_inner import SearchJokesAPI200ResponseJokesInner
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
    api_instance = apileague.HumorApi(api_client)
    include_tags = 'animal' # str | A comma-separated list of tags the jokes should have. (optional)
    exclude_tags = 'nsfw,dark' # str | A comma-separated list of tags the jokes must not have. (optional)
    min_rating = 0 # float | The minimum rating in range [0.0,1.0] of the jokes. (optional)
    max_length = 140 # int | The maximum length of the joke in letters. (optional)

    try:
        # Random Joke API
        api_response = api_instance.random_joke_api(include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length)
        print("The response of HumorApi->random_joke_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HumorApi->random_joke_api: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_tags** | **str**| A comma-separated list of tags the jokes should have. | [optional] 
 **exclude_tags** | **str**| A comma-separated list of tags the jokes must not have. | [optional] 
 **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **max_length** | **int**| The maximum length of the joke in letters. | [optional] 

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

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

# **random_meme_api**
> RandomMemeAPI200Response random_meme_api(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, min_rating=min_rating, max_age_days=max_age_days)

Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.random_meme_api200_response import RandomMemeAPI200Response
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
    api_instance = apileague.HumorApi(api_client)
    keywords = 'airplane' # str | A comma-separated list of words that must occur in the meme. (optional)
    keywords_in_image = true # bool | Whether the keywords must occur in the image. (optional)
    media_type = 'image' # str | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
    min_rating = 0 # float | The minimum rating in range [0.0,1.0] of the meme. (optional)
    max_age_days = 30 # int | The maximum age of the meme in days. (optional)

    try:
        # Random Meme API
        api_response = api_instance.random_meme_api(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, min_rating=min_rating, max_age_days=max_age_days)
        print("The response of HumorApi->random_meme_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HumorApi->random_meme_api: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma-separated list of words that must occur in the meme. | [optional] 
 **keywords_in_image** | **bool**| Whether the keywords must occur in the image. | [optional] 
 **media_type** | **str**| The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | [optional] 
 **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the meme. | [optional] 
 **max_age_days** | **int**| The maximum age of the meme in days. | [optional] 

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

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

# **search_gifs_api**
> SearchGifsAPI200Response search_gifs_api(query, number=number)

Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_gifs_api200_response import SearchGifsAPI200Response
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
    api_instance = apileague.HumorApi(api_client)
    query = 'dogs' # str | The search query.
    number = 5 # int | The number of gifs to return in range [1,10] (optional)

    try:
        # Search Gifs API
        api_response = api_instance.search_gifs_api(query, number=number)
        print("The response of HumorApi->search_gifs_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HumorApi->search_gifs_api: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | 
 **number** | **int**| The number of gifs to return in range [1,10] | [optional] 

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

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

# **search_jokes_api**
> SearchJokesAPI200Response search_jokes_api(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length, offset=offset, number=number)

Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_jokes_api200_response import SearchJokesAPI200Response
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
    api_instance = apileague.HumorApi(api_client)
    keywords = 'horse,man' # str | A comma-separated list of words that must occur in the joke. (optional)
    include_tags = 'animal' # str | A comma-separated list of tags the jokes should have. (optional)
    exclude_tags = 'nsfw,dark' # str | A comma-separated list of tags the jokes must not have. (optional)
    min_rating = 0 # float | The minimum rating in range [0.0,1.0] of the jokes. (optional)
    max_length = 140 # float | The maximum length of the joke in letters. (optional)
    offset = 0 # int | The number of jokes to skip, between 0 and 1000. (optional)
    number = 3 # int | The number of jokes, between 1 and 10. (optional)

    try:
        # Search Jokes API
        api_response = api_instance.search_jokes_api(keywords=keywords, include_tags=include_tags, exclude_tags=exclude_tags, min_rating=min_rating, max_length=max_length, offset=offset, number=number)
        print("The response of HumorApi->search_jokes_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HumorApi->search_jokes_api: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **str**| A comma-separated list of words that must occur in the joke. | [optional] 
 **include_tags** | **str**| A comma-separated list of tags the jokes should have. | [optional] 
 **exclude_tags** | **str**| A comma-separated list of tags the jokes must not have. | [optional] 
 **min_rating** | **float**| The minimum rating in range [0.0,1.0] of the jokes. | [optional] 
 **max_length** | **float**| The maximum length of the joke in letters. | [optional] 
 **offset** | **int**| The number of jokes to skip, between 0 and 1000. | [optional] 
 **number** | **int**| The number of jokes, between 1 and 10. | [optional] 

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

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

# **search_memes_api**
> SearchMemesAPI200Response search_memes_api(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, min_rating=min_rating, max_age_days=max_age_days, offset=offset, number=number)

Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.search_memes_api200_response import SearchMemesAPI200Response
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
    api_instance = apileague.HumorApi(api_client)
    keywords = 'rocket' # str | A comma-separated list of words that must occur in the meme. (optional)
    keywords_in_image = true # bool | Whether the keywords must occur in the image. (optional)
    media_type = 'image' # str | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
    min_rating = 0 # float | The minimum rating in range [0.0,1.0] of the meme. (optional)
    max_age_days = 30 # int | The maximum age of the meme in days. (optional)
    offset = 0 # int | The number of memes to skip, between 0 and 1000. (optional)
    number = 3 # int | The number of memes, between 1 and 10. (optional)

    try:
        # Search Memes API
        api_response = api_instance.search_memes_api(keywords=keywords, keywords_in_image=keywords_in_image, media_type=media_type, min_rating=min_rating, max_age_days=max_age_days, offset=offset, number=number)
        print("The response of HumorApi->search_memes_api:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HumorApi->search_memes_api: %s\n" % e)
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
 **number** | **int**| The number of memes, between 1 and 10. | [optional] 

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

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

