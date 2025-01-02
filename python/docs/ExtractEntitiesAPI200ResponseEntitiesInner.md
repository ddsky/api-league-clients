# ExtractEntitiesAPI200ResponseEntitiesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_position** | **int** |  | [optional] 
**image** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**value** | **str** |  | [optional] 
**end_position** | **int** |  | [optional] 

## Example

```python
from apileague.models.extract_entities_api200_response_entities_inner import ExtractEntitiesAPI200ResponseEntitiesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractEntitiesAPI200ResponseEntitiesInner from a JSON string
extract_entities_api200_response_entities_inner_instance = ExtractEntitiesAPI200ResponseEntitiesInner.from_json(json)
# print the JSON string representation of the object
print(ExtractEntitiesAPI200ResponseEntitiesInner.to_json())

# convert the object into a dict
extract_entities_api200_response_entities_inner_dict = extract_entities_api200_response_entities_inner_instance.to_dict()
# create an instance of ExtractEntitiesAPI200ResponseEntitiesInner from a dict
extract_entities_api200_response_entities_inner_from_dict = ExtractEntitiesAPI200ResponseEntitiesInner.from_dict(extract_entities_api200_response_entities_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


