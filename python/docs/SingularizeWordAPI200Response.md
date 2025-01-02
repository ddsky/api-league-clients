# SingularizeWordAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **str** |  | [optional] 
**singular** | **str** |  | [optional] 

## Example

```python
from apileague.models.singularize_word_api200_response import SingularizeWordAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SingularizeWordAPI200Response from a JSON string
singularize_word_api200_response_instance = SingularizeWordAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SingularizeWordAPI200Response.to_json())

# convert the object into a dict
singularize_word_api200_response_dict = singularize_word_api200_response_instance.to_dict()
# create an instance of SingularizeWordAPI200Response from a dict
singularize_word_api200_response_from_dict = SingularizeWordAPI200Response.from_dict(singularize_word_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


