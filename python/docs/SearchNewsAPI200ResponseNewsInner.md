# SearchNewsAPI200ResponseNewsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**summary** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**sentiment** | **float** |  | [optional] 
**language** | **str** |  | [optional] 
**video** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**source_country** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**text** | **str** |  | [optional] 
**category** | **str** |  | [optional] 
**publish_date** | **str** |  | [optional] 
**authors** | **List[Optional[str]]** |  | [optional] 

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


