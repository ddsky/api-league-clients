# DetectLanguage200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**language** | **str** |  | [optional] 
**confidence** | **float** |  | [optional] 

## Example

```python
from apileague.models.detect_language200_response_inner import DetectLanguage200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of DetectLanguage200ResponseInner from a JSON string
detect_language200_response_inner_instance = DetectLanguage200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(DetectLanguage200ResponseInner.to_json())

# convert the object into a dict
detect_language200_response_inner_dict = detect_language200_response_inner_instance.to_dict()
# create an instance of DetectLanguage200ResponseInner from a dict
detect_language200_response_inner_from_dict = DetectLanguage200ResponseInner.from_dict(detect_language200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


