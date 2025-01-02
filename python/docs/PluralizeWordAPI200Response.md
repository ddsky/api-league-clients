# PluralizeWordAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **str** |  | [optional] 
**plural** | **str** |  | [optional] 

## Example

```python
from apileague.models.pluralize_word_api200_response import PluralizeWordAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of PluralizeWordAPI200Response from a JSON string
pluralize_word_api200_response_instance = PluralizeWordAPI200Response.from_json(json)
# print the JSON string representation of the object
print(PluralizeWordAPI200Response.to_json())

# convert the object into a dict
pluralize_word_api200_response_dict = pluralize_word_api200_response_instance.to_dict()
# create an instance of PluralizeWordAPI200Response from a dict
pluralize_word_api200_response_from_dict = PluralizeWordAPI200Response.from_dict(pluralize_word_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


