# SearchBooks200ResponseBooksInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**id** | **int** |  | [optional] 

## Example

```python
from apileague.models.search_books200_response_books_inner import SearchBooks200ResponseBooksInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBooks200ResponseBooksInner from a JSON string
search_books200_response_books_inner_instance = SearchBooks200ResponseBooksInner.from_json(json)
# print the JSON string representation of the object
print(SearchBooks200ResponseBooksInner.to_json())

# convert the object into a dict
search_books200_response_books_inner_dict = search_books200_response_books_inner_instance.to_dict()
# create an instance of SearchBooks200ResponseBooksInner from a dict
search_books200_response_books_inner_from_dict = SearchBooks200ResponseBooksInner.from_dict(search_books200_response_books_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


