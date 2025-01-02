# ExtractNewsAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**text** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**images** | [**List[ExtractNewsAPI200ResponseImagesInner]**](ExtractNewsAPI200ResponseImagesInner.md) |  | [optional] 
**videos** | [**List[ExtractNewsAPI200ResponseVideosInner]**](ExtractNewsAPI200ResponseVideosInner.md) |  | [optional] 
**publish_date** | **str** |  | [optional] 
**authors** | **List[Optional[str]]** |  | [optional] 
**language** | **str** |  | [optional] 

## Example

```python
from apileague.models.extract_news_api200_response import ExtractNewsAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ExtractNewsAPI200Response from a JSON string
extract_news_api200_response_instance = ExtractNewsAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ExtractNewsAPI200Response.to_json())

# convert the object into a dict
extract_news_api200_response_dict = extract_news_api200_response_instance.to_dict()
# create an instance of ExtractNewsAPI200Response from a dict
extract_news_api200_response_from_dict = ExtractNewsAPI200Response.from_dict(extract_news_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


