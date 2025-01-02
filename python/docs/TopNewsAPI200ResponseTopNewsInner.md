# TopNewsAPI200ResponseTopNewsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**news** | [**List[TopNewsAPI200ResponseTopNewsInnerNewsInner]**](TopNewsAPI200ResponseTopNewsInnerNewsInner.md) |  | [optional] 

## Example

```python
from apileague.models.top_news_api200_response_top_news_inner import TopNewsAPI200ResponseTopNewsInner

# TODO update the JSON string below
json = "{}"
# create an instance of TopNewsAPI200ResponseTopNewsInner from a JSON string
top_news_api200_response_top_news_inner_instance = TopNewsAPI200ResponseTopNewsInner.from_json(json)
# print the JSON string representation of the object
print(TopNewsAPI200ResponseTopNewsInner.to_json())

# convert the object into a dict
top_news_api200_response_top_news_inner_dict = top_news_api200_response_top_news_inner_instance.to_dict()
# create an instance of TopNewsAPI200ResponseTopNewsInner from a dict
top_news_api200_response_top_news_inner_from_dict = TopNewsAPI200ResponseTopNewsInner.from_dict(top_news_api200_response_top_news_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


