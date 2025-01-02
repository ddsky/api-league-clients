# SearchMemesAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memes** | [**List[SearchMemesAPI200ResponseMemesInner]**](SearchMemesAPI200ResponseMemesInner.md) |  | [optional] 
**available** | **int** |  | [optional] 

## Example

```python
from apileague.models.search_memes_api200_response import SearchMemesAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchMemesAPI200Response from a JSON string
search_memes_api200_response_instance = SearchMemesAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SearchMemesAPI200Response.to_json())

# convert the object into a dict
search_memes_api200_response_dict = search_memes_api200_response_instance.to_dict()
# create an instance of SearchMemesAPI200Response from a dict
search_memes_api200_response_from_dict = SearchMemesAPI200Response.from_dict(search_memes_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


