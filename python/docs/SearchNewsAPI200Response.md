# SearchNewsAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**available** | **int** |  | [optional] 
**news** | [**List[SearchNewsAPI200ResponseNewsInner]**](SearchNewsAPI200ResponseNewsInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_news_api200_response import SearchNewsAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNewsAPI200Response from a JSON string
search_news_api200_response_instance = SearchNewsAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SearchNewsAPI200Response.to_json())

# convert the object into a dict
search_news_api200_response_dict = search_news_api200_response_instance.to_dict()
# create an instance of SearchNewsAPI200Response from a dict
search_news_api200_response_from_dict = SearchNewsAPI200Response.from_dict(search_news_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


