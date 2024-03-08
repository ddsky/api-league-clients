# SearchWeb200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchWeb200ResponseResultsInner]**](SearchWeb200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_web200_response import SearchWeb200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchWeb200Response from a JSON string
search_web200_response_instance = SearchWeb200Response.from_json(json)
# print the JSON string representation of the object
print SearchWeb200Response.to_json()

# convert the object into a dict
search_web200_response_dict = search_web200_response_instance.to_dict()
# create an instance of SearchWeb200Response from a dict
search_web200_response_form_dict = search_web200_response.from_dict(search_web200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


