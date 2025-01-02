# SearchGifsAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**images** | [**List[SearchGifsAPI200ResponseImagesInner]**](SearchGifsAPI200ResponseImagesInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_gifs_api200_response import SearchGifsAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGifsAPI200Response from a JSON string
search_gifs_api200_response_instance = SearchGifsAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SearchGifsAPI200Response.to_json())

# convert the object into a dict
search_gifs_api200_response_dict = search_gifs_api200_response_instance.to_dict()
# create an instance of SearchGifsAPI200Response from a dict
search_gifs_api200_response_from_dict = SearchGifsAPI200Response.from_dict(search_gifs_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


