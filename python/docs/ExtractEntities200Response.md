# ExtractEntities200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entities** | [**List[ExtractEntities200ResponseEntitiesInner]**](ExtractEntities200ResponseEntitiesInner.md) |  | [optional] 

## Example

```python
from apileague.models.extract_entities200_response import ExtractEntities200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractEntities200Response from a JSON string
extract_entities200_response_instance = ExtractEntities200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractEntities200Response.to_json())

# convert the object into a dict
extract_entities200_response_dict = extract_entities200_response_instance.to_dict()
# create an instance of ExtractEntities200Response from a dict
extract_entities200_response_from_dict = ExtractEntities200Response.from_dict(extract_entities200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


