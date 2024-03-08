# ExtractContentFromAWebPage200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**main_text** | **str** |  | [optional] 
**main_html** | **str** |  | [optional] 
**images** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from apileague.models.extract_content_from_a_web_page200_response import ExtractContentFromAWebPage200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractContentFromAWebPage200Response from a JSON string
extract_content_from_a_web_page200_response_instance = ExtractContentFromAWebPage200Response.from_json(json)
# print the JSON string representation of the object
print ExtractContentFromAWebPage200Response.to_json()

# convert the object into a dict
extract_content_from_a_web_page200_response_dict = extract_content_from_a_web_page200_response_instance.to_dict()
# create an instance of ExtractContentFromAWebPage200Response from a dict
extract_content_from_a_web_page200_response_form_dict = extract_content_from_a_web_page200_response.from_dict(extract_content_from_a_web_page200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


