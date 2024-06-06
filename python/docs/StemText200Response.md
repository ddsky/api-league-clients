# StemText200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **str** |  | [optional] 
**stemmed** | **str** |  | [optional] 

## Example

```python
from apileague.models.stem_text200_response import StemText200Response

# TODO update the JSON string below
json = "{}"
# create an instance of StemText200Response from a JSON string
stem_text200_response_instance = StemText200Response.from_json(json)
# print the JSON string representation of the object
print(StemText200Response.to_json())

# convert the object into a dict
stem_text200_response_dict = stem_text200_response_instance.to_dict()
# create an instance of StemText200Response from a dict
stem_text200_response_from_dict = StemText200Response.from_dict(stem_text200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


