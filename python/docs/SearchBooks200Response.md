# SearchBooks200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 
**books** | [**List[SearchBooks200ResponseBooksInner]**](SearchBooks200ResponseBooksInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_books200_response import SearchBooks200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBooks200Response from a JSON string
search_books200_response_instance = SearchBooks200Response.from_json(json)
# print the JSON string representation of the object
print(SearchBooks200Response.to_json())

# convert the object into a dict
search_books200_response_dict = search_books200_response_instance.to_dict()
# create an instance of SearchBooks200Response from a dict
search_books200_response_from_dict = SearchBooks200Response.from_dict(search_books200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


