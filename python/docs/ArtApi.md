# openapi_client.ArtApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**image_to_ascii_art_by_url**](ArtApi.md#image_to_ascii_art_by_url) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
[**random_poem**](ArtApi.md#random_poem) | **GET** /retrieve-random-poem | Random Poem


# **image_to_ascii_art_by_url**
> str image_to_ascii_art_by_url(url)

Image to Ascii Art by URL

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import art_api
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
    api_instance = art_api.ArtApi(api_client)
    url = "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png" # str | The URL to the image.
    width = 200 # int | The maximum width of the image (default 400, max. 500). (optional)
    height = 200 # int | The maximum height of the image (default 400, max. 500). (optional)

    # example passing only required values which don't have defaults set
    try:
        # Image to Ascii Art by URL
        api_response = api_instance.image_to_ascii_art_by_url(url)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ArtApi->image_to_ascii_art_by_url: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Image to Ascii Art by URL
        api_response = api_instance.image_to_ascii_art_by_url(url, width=width, height=height)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ArtApi->image_to_ascii_art_by_url: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **str**| The URL to the image. |
 **width** | **int**| The maximum width of the image (default 400, max. 500). | [optional]
 **height** | **int**| The maximum height of the image (default 400, max. 500). | [optional]

### Return type

**str**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain


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

# **random_poem**
> InlineResponse20011 random_poem()

Random Poem

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import art_api
from openapi_client.model.inline_response20011 import InlineResponse20011
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
    api_instance = art_api.ArtApi(api_client)
    min_lines = 5 # int | The minimum number of lines of the poem. (optional)
    max_lines = 20 # int | The maximum number of lines of the poem. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Random Poem
        api_response = api_instance.random_poem(min_lines=min_lines, max_lines=max_lines)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ArtApi->random_poem: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_lines** | **int**| The minimum number of lines of the poem. | [optional]
 **max_lines** | **int**| The maximum number of lines of the poem. | [optional]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

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

