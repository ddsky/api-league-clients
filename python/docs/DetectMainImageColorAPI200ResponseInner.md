# DetectMainImageColorAPI200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specific_color** | **str** |  | [optional] 
**main_color** | **str** |  | [optional] 
**hex_code** | **str** |  | [optional] 

## Example

```python
from apileague.models.detect_main_image_color_api200_response_inner import DetectMainImageColorAPI200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of DetectMainImageColorAPI200ResponseInner from a JSON string
detect_main_image_color_api200_response_inner_instance = DetectMainImageColorAPI200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(DetectMainImageColorAPI200ResponseInner.to_json())

# convert the object into a dict
detect_main_image_color_api200_response_inner_dict = detect_main_image_color_api200_response_inner_instance.to_dict()
# create an instance of DetectMainImageColorAPI200ResponseInner from a dict
detect_main_image_color_api200_response_inner_from_dict = DetectMainImageColorAPI200ResponseInner.from_dict(detect_main_image_color_api200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


