# ExtractEntitiesAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entities** | [**List[ExtractEntitiesAPI200ResponseEntitiesInner]**](ExtractEntitiesAPI200ResponseEntitiesInner.md) |  | [optional] 

## Example

```python
from apileague.models.extract_entities_api200_response import ExtractEntitiesAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractEntitiesAPI200Response from a JSON string
extract_entities_api200_response_instance = ExtractEntitiesAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractEntitiesAPI200Response.to_json())

# convert the object into a dict
extract_entities_api200_response_dict = extract_entities_api200_response_instance.to_dict()
# create an instance of ExtractEntitiesAPI200Response from a dict
extract_entities_api200_response_from_dict = ExtractEntitiesAPI200Response.from_dict(extract_entities_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


