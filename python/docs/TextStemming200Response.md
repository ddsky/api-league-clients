# TextStemming200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **str** |  | [optional] 
**stemmed** | **str** |  | [optional] 

## Example

```python
from apileague.models.text_stemming200_response import TextStemming200Response

# TODO update the JSON string below
json = "{}"
# create an instance of TextStemming200Response from a JSON string
text_stemming200_response_instance = TextStemming200Response.from_json(json)
# print the JSON string representation of the object
print TextStemming200Response.to_json()

# convert the object into a dict
text_stemming200_response_dict = text_stemming200_response_instance.to_dict()
# create an instance of TextStemming200Response from a dict
text_stemming200_response_form_dict = text_stemming200_response.from_dict(text_stemming200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


