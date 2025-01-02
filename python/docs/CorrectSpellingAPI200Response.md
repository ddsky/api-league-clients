# CorrectSpellingAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**corrected_text** | **str** |  | [optional] 

## Example

```python
from apileague.models.correct_spelling_api200_response import CorrectSpellingAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CorrectSpellingAPI200Response from a JSON string
correct_spelling_api200_response_instance = CorrectSpellingAPI200Response.from_json(json)
# print the JSON string representation of the object
print(CorrectSpellingAPI200Response.to_json())

# convert the object into a dict
correct_spelling_api200_response_dict = correct_spelling_api200_response_instance.to_dict()
# create an instance of CorrectSpellingAPI200Response from a dict
correct_spelling_api200_response_from_dict = CorrectSpellingAPI200Response.from_dict(correct_spelling_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


