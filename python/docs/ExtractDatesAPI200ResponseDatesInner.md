# ExtractDatesAPI200ResponseDatesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_position** | **int** |  | [optional] 
**var_date** | **str** |  | [optional] 
**normalized_date** | **float** |  | [optional] 
**tag** | **str** |  | [optional] 
**end_position** | **int** |  | [optional] 

## Example

```python
from apileague.models.extract_dates_api200_response_dates_inner import ExtractDatesAPI200ResponseDatesInner

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractDatesAPI200ResponseDatesInner from a JSON string
extract_dates_api200_response_dates_inner_instance = ExtractDatesAPI200ResponseDatesInner.from_json(json)
# print the JSON string representation of the object
print(ExtractDatesAPI200ResponseDatesInner.to_json())

# convert the object into a dict
extract_dates_api200_response_dates_inner_dict = extract_dates_api200_response_dates_inner_instance.to_dict()
# create an instance of ExtractDatesAPI200ResponseDatesInner from a dict
extract_dates_api200_response_dates_inner_from_dict = ExtractDatesAPI200ResponseDatesInner.from_dict(extract_dates_api200_response_dates_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


