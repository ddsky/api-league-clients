# FindSimilarBooks200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**similar_books** | [**List[SearchBooks200ResponseBooksInner]**](SearchBooks200ResponseBooksInner.md) |  | [optional] 

## Example

```python
from apileague.models.find_similar_books200_response import FindSimilarBooks200Response

# TODO update the JSON string below
json = "{}"
# create an instance of FindSimilarBooks200Response from a JSON string
find_similar_books200_response_instance = FindSimilarBooks200Response.from_json(json)
# print the JSON string representation of the object
print(FindSimilarBooks200Response.to_json())

# convert the object into a dict
find_similar_books200_response_dict = find_similar_books200_response_instance.to_dict()
# create an instance of FindSimilarBooks200Response from a dict
find_similar_books200_response_from_dict = FindSimilarBooks200Response.from_dict(find_similar_books200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


