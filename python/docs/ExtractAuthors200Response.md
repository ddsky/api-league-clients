# ExtractAuthors200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authors** | [**List[ExtractAuthors200ResponseAuthorsInner]**](ExtractAuthors200ResponseAuthorsInner.md) |  | [optional] 

## Example

```python
from apileague.models.extract_authors200_response import ExtractAuthors200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractAuthors200Response from a JSON string
extract_authors200_response_instance = ExtractAuthors200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractAuthors200Response.to_json())

# convert the object into a dict
extract_authors200_response_dict = extract_authors200_response_instance.to_dict()
# create an instance of ExtractAuthors200Response from a dict
extract_authors200_response_from_dict = ExtractAuthors200Response.from_dict(extract_authors200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


