# SearchNewsAPI200ResponseNewsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **str** |  | [optional] 
**text** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**video** | **str** |  | [optional] 
**publish_date** | **str** |  | [optional] 
**authors** | **List[Optional[str]]** |  | [optional] 
**category** | **str** |  | [optional] 
**language** | **str** |  | [optional] 
**source_country** | **str** |  | [optional] 
**sentiment** | **float** |  | [optional] 

## Example

```python
from apileague.models.search_news_api200_response_news_inner import SearchNewsAPI200ResponseNewsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchNewsAPI200ResponseNewsInner from a JSON string
search_news_api200_response_news_inner_instance = SearchNewsAPI200ResponseNewsInner.from_json(json)
# print the JSON string representation of the object
print(SearchNewsAPI200ResponseNewsInner.to_json())

# convert the object into a dict
search_news_api200_response_news_inner_dict = search_news_api200_response_news_inner_instance.to_dict()
# create an instance of SearchNewsAPI200ResponseNewsInner from a dict
search_news_api200_response_news_inner_from_dict = SearchNewsAPI200ResponseNewsInner.from_dict(search_news_api200_response_news_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


