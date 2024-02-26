# openapi_client.StorageApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**read_key_value_from_store**](StorageApi.md#read_key_value_from_store) | **GET** /read-key-value | Read Key Value from Store
[**store_key_value_get**](StorageApi.md#store_key_value_get) | **GET** /store-key-value | Store Key Value (GET)


# **read_key_value_from_store**
> InlineResponse20031 read_key_value_from_store(key)

Read Key Value from Store

Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import storage_api
from openapi_client.model.inline_response20031 import InlineResponse20031
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
    api_instance = storage_api.StorageApi(api_client)
    key = "visitors24h" # str | The key for which the value is stored (max length 255 characters).

    # example passing only required values which don't have defaults set
    try:
        # Read Key Value from Store
        api_response = api_instance.read_key_value_from_store(key)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling StorageApi->read_key_value_from_store: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **str**| The key for which the value is stored (max length 255 characters). |

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

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

# **store_key_value_get**
> InlineResponse20032 store_key_value_get(key, value)

Store Key Value (GET)

Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import storage_api
from openapi_client.model.inline_response20032 import InlineResponse20032
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
    api_instance = storage_api.StorageApi(api_client)
    key = "visitors24h" # str | The key for which the value is stored (max length 255 characters).
    value = "23578 visitors" # str | The value that is supposed to be stored (max length 10,000 characters).

    # example passing only required values which don't have defaults set
    try:
        # Store Key Value (GET)
        api_response = api_instance.store_key_value_get(key, value)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling StorageApi->store_key_value_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **str**| The key for which the value is stored (max length 255 characters). |
 **value** | **str**| The value that is supposed to be stored (max length 10,000 characters). |

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

