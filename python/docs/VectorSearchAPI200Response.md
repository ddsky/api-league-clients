# VectorSearchAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vectors** | [**List[VectorSearchAPI200ResponseVectorsInner]**](VectorSearchAPI200ResponseVectorsInner.md) |  | [optional] 

## Example

```python
from apileague.models.vector_search_api200_response import VectorSearchAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of VectorSearchAPI200Response from a JSON string
vector_search_api200_response_instance = VectorSearchAPI200Response.from_json(json)
# print the JSON string representation of the object
print(VectorSearchAPI200Response.to_json())

# convert the object into a dict
vector_search_api200_response_dict = vector_search_api200_response_instance.to_dict()
# create an instance of VectorSearchAPI200Response from a dict
vector_search_api200_response_from_dict = VectorSearchAPI200Response.from_dict(vector_search_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


