# openapi_client.MathApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_units**](MathApi.md#convert_units) | **GET** /convert-units | Convert Units


# **convert_units**
> InlineResponse20030 convert_units(source_amount, source_unit, target_unit)

Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import time
import openapi_client
from com.apileague import math_api
from openapi_client.model.inline_response20030 import InlineResponse20030
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
    api_instance = math_api.MathApi(api_client)
    source_amount = 100 # float | The source amount.
    source_unit = "kg" # str | The source unit.
    target_unit = "lb" # str | The unit to which should be converted.
    food_name = "flour" # str | An optional food name. For converting foods the food is relevant as they have different densities. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Convert Units
        api_response = api_instance.convert_units(source_amount, source_unit, target_unit)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling MathApi->convert_units: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Convert Units
        api_response = api_instance.convert_units(source_amount, source_unit, target_unit, food_name=food_name)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling MathApi->convert_units: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_amount** | **float**| The source amount. |
 **source_unit** | **str**| The source unit. |
 **target_unit** | **str**| The unit to which should be converted. |
 **food_name** | **str**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional]

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

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

