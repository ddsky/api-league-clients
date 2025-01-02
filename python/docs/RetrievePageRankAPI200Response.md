# RetrievePageRankAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page_rank** | **float** |  | [optional] 
**position** | **int** |  | [optional] 
**percentile** | **float** |  | [optional] 

## Example

```python
from apileague.models.retrieve_page_rank_api200_response import RetrievePageRankAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrievePageRankAPI200Response from a JSON string
retrieve_page_rank_api200_response_instance = RetrievePageRankAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RetrievePageRankAPI200Response.to_json())

# convert the object into a dict
retrieve_page_rank_api200_response_dict = retrieve_page_rank_api200_response_instance.to_dict()
# create an instance of RetrievePageRankAPI200Response from a dict
retrieve_page_rank_api200_response_from_dict = RetrievePageRankAPI200Response.from_dict(retrieve_page_rank_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


