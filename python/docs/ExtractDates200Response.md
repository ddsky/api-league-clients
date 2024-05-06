# ExtractDates200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dates** | [**List[ExtractDates200ResponseDatesInner]**](ExtractDates200ResponseDatesInner.md) |  | [optional] 

## Example

```python
from apileague.models.extract_dates200_response import ExtractDates200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractDates200Response from a JSON string
extract_dates200_response_instance = ExtractDates200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractDates200Response.to_json())

# convert the object into a dict
extract_dates200_response_dict = extract_dates200_response_instance.to_dict()
# create an instance of ExtractDates200Response from a dict
extract_dates200_response_from_dict = ExtractDates200Response.from_dict(extract_dates200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


