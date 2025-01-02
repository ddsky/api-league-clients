# SearchBooksAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_results** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 
**books** | **List[List[SearchBooksAPI200ResponseBooksInnerInner]]** |  | [optional] 

## Example

```python
from apileague.models.search_books_api200_response import SearchBooksAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchBooksAPI200Response from a JSON string
search_books_api200_response_instance = SearchBooksAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SearchBooksAPI200Response.to_json())

# convert the object into a dict
search_books_api200_response_dict = search_books_api200_response_instance.to_dict()
# create an instance of SearchBooksAPI200Response from a dict
search_books_api200_response_from_dict = SearchBooksAPI200Response.from_dict(search_books_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


