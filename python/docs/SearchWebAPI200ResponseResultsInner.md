# SearchWebAPI200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from apileague.models.search_web_api200_response_results_inner import SearchWebAPI200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchWebAPI200ResponseResultsInner from a JSON string
search_web_api200_response_results_inner_instance = SearchWebAPI200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchWebAPI200ResponseResultsInner.to_json())

# convert the object into a dict
search_web_api200_response_results_inner_dict = search_web_api200_response_results_inner_instance.to_dict()
# create an instance of SearchWebAPI200ResponseResultsInner from a dict
search_web_api200_response_results_inner_from_dict = SearchWebAPI200ResponseResultsInner.from_dict(search_web_api200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


