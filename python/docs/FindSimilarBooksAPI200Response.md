# FindSimilarBooksAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**similar_books** | [**List[SearchBooksAPI200ResponseBooksInnerInner]**](SearchBooksAPI200ResponseBooksInnerInner.md) |  | [optional] 

## Example

```python
from apileague.models.find_similar_books_api200_response import FindSimilarBooksAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of FindSimilarBooksAPI200Response from a JSON string
find_similar_books_api200_response_instance = FindSimilarBooksAPI200Response.from_json(json)
# print the JSON string representation of the object
print(FindSimilarBooksAPI200Response.to_json())

# convert the object into a dict
find_similar_books_api200_response_dict = find_similar_books_api200_response_instance.to_dict()
# create an instance of FindSimilarBooksAPI200Response from a dict
find_similar_books_api200_response_from_dict = FindSimilarBooksAPI200Response.from_dict(find_similar_books_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


