# RandomQuoteAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | **str** |  | [optional] 
**quote** | **str** |  | [optional] 

## Example

```python
from apileague.models.random_quote_api200_response import RandomQuoteAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomQuoteAPI200Response from a JSON string
random_quote_api200_response_instance = RandomQuoteAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RandomQuoteAPI200Response.to_json())

# convert the object into a dict
random_quote_api200_response_dict = random_quote_api200_response_instance.to_dict()
# create an instance of RandomQuoteAPI200Response from a dict
random_quote_api200_response_from_dict = RandomQuoteAPI200Response.from_dict(random_quote_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


