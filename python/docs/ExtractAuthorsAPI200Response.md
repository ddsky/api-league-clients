# ExtractAuthorsAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authors** | [**List[ExtractAuthorsAPI200ResponseAuthorsInner]**](ExtractAuthorsAPI200ResponseAuthorsInner.md) |  | [optional] 

## Example

```python
from apileague.models.extract_authors_api200_response import ExtractAuthorsAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractAuthorsAPI200Response from a JSON string
extract_authors_api200_response_instance = ExtractAuthorsAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractAuthorsAPI200Response.to_json())

# convert the object into a dict
extract_authors_api200_response_dict = extract_authors_api200_response_instance.to_dict()
# create an instance of ExtractAuthorsAPI200Response from a dict
extract_authors_api200_response_from_dict = ExtractAuthorsAPI200Response.from_dict(extract_authors_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


