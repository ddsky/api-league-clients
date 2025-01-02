# WWW::OpenAPIClient::MathApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MathApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_units_api**](MathApi.md#convert_units_api) | **GET** /convert-units | Convert Units API


# **convert_units_api**
> ConvertUnitsAPI200Response convert_units_api(source_amount => $source_amount, source_unit => $source_unit, target_unit => $target_unit, food_name => $food_name)

Convert Units API

Convert units from one to another. The API returns the amount and the unit of the target unit.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MathApi;
my $api_instance = WWW::OpenAPIClient::MathApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $source_amount = 100; # double | The source amount.
my $source_unit = kg; # string | The source unit.
my $target_unit = lb; # string | The unit to which should be converted.
my $food_name = flour; # string | An optional food name. For converting foods the food is relevant as they have different densities.

eval {
    my $result = $api_instance->convert_units_api(source_amount => $source_amount, source_unit => $source_unit, target_unit => $target_unit, food_name => $food_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MathApi->convert_units_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_amount** | **double**| The source amount. | 
 **source_unit** | **string**| The source unit. | 
 **target_unit** | **string**| The unit to which should be converted. | 
 **food_name** | **string**| An optional food name. For converting foods the food is relevant as they have different densities. | [optional] 

### Return type

[**ConvertUnitsAPI200Response**](ConvertUnitsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

