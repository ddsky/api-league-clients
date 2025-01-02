# ListWordSynonymsAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**synonyms** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from apileague.models.list_word_synonyms_api200_response import ListWordSynonymsAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListWordSynonymsAPI200Response from a JSON string
list_word_synonyms_api200_response_instance = ListWordSynonymsAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ListWordSynonymsAPI200Response.to_json())

# convert the object into a dict
list_word_synonyms_api200_response_dict = list_word_synonyms_api200_response_instance.to_dict()
# create an instance of ListWordSynonymsAPI200Response from a dict
list_word_synonyms_api200_response_from_dict = ListWordSynonymsAPI200Response.from_dict(list_word_synonyms_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


