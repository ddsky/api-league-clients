# ExtractContentFromAWebPageAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**main_text** | **str** |  | [optional] 
**main_html** | **str** |  | [optional] 
**images** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from apileague.models.extract_content_from_a_web_page_api200_response import ExtractContentFromAWebPageAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractContentFromAWebPageAPI200Response from a JSON string
extract_content_from_a_web_page_api200_response_instance = ExtractContentFromAWebPageAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractContentFromAWebPageAPI200Response.to_json())

# convert the object into a dict
extract_content_from_a_web_page_api200_response_dict = extract_content_from_a_web_page_api200_response_instance.to_dict()
# create an instance of ExtractContentFromAWebPageAPI200Response from a dict
extract_content_from_a_web_page_api200_response_from_dict = ExtractContentFromAWebPageAPI200Response.from_dict(extract_content_from_a_web_page_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


