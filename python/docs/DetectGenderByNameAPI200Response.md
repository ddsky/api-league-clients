# DetectGenderByNameAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**probability_male** | **float** |  | [optional] 
**probability_female** | **float** |  | [optional] 
**popularity** | **float** |  | [optional] 

## Example

```python
from apileague.models.detect_gender_by_name_api200_response import DetectGenderByNameAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DetectGenderByNameAPI200Response from a JSON string
detect_gender_by_name_api200_response_instance = DetectGenderByNameAPI200Response.from_json(json)
# print the JSON string representation of the object
print(DetectGenderByNameAPI200Response.to_json())

# convert the object into a dict
detect_gender_by_name_api200_response_dict = detect_gender_by_name_api200_response_instance.to_dict()
# create an instance of DetectGenderByNameAPI200Response from a dict
detect_gender_by_name_api200_response_from_dict = DetectGenderByNameAPI200Response.from_dict(detect_gender_by_name_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


