# ConvertUnitsAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target_amount** | **float** |  | [optional] 
**target_unit** | **str** |  | [optional] 

## Example

```python
from apileague.models.convert_units_api200_response import ConvertUnitsAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ConvertUnitsAPI200Response from a JSON string
convert_units_api200_response_instance = ConvertUnitsAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ConvertUnitsAPI200Response.to_json())

# convert the object into a dict
convert_units_api200_response_dict = convert_units_api200_response_instance.to_dict()
# create an instance of ConvertUnitsAPI200Response from a dict
convert_units_api200_response_from_dict = ConvertUnitsAPI200Response.from_dict(convert_units_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


