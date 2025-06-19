# ArtSearchAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 
**artworks** | [**List[SearchBooksAPI200ResponseBooksInnerInner]**](SearchBooksAPI200ResponseBooksInnerInner.md) |  | [optional] 

## Example

```python
from apileague.models.art_search_api200_response import ArtSearchAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ArtSearchAPI200Response from a JSON string
art_search_api200_response_instance = ArtSearchAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ArtSearchAPI200Response.to_json())

# convert the object into a dict
art_search_api200_response_dict = art_search_api200_response_instance.to_dict()
# create an instance of ArtSearchAPI200Response from a dict
art_search_api200_response_from_dict = ArtSearchAPI200Response.from_dict(art_search_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


