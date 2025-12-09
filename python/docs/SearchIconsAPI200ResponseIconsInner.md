# SearchIconsAPI200ResponseIconsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**thumbnail** | **str** |  | [optional] 
**width** | **int** |  | [optional] 
**height** | **int** |  | [optional] 
**license** | [**SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense**](SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.md) |  | [optional] 

## Example

```python
from apileague.models.search_icons_api200_response_icons_inner import SearchIconsAPI200ResponseIconsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchIconsAPI200ResponseIconsInner from a JSON string
search_icons_api200_response_icons_inner_instance = SearchIconsAPI200ResponseIconsInner.from_json(json)
# print the JSON string representation of the object
print(SearchIconsAPI200ResponseIconsInner.to_json())

# convert the object into a dict
search_icons_api200_response_icons_inner_dict = search_icons_api200_response_icons_inner_instance.to_dict()
# create an instance of SearchIconsAPI200ResponseIconsInner from a dict
search_icons_api200_response_icons_inner_from_dict = SearchIconsAPI200ResponseIconsInner.from_dict(search_icons_api200_response_icons_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


