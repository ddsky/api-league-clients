# GenerateNonsenseWordAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**word** | **str** |  | [optional] 
**rating** | **float** |  | [optional] 

## Example

```python
from apileague.models.generate_nonsense_word_api200_response import GenerateNonsenseWordAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GenerateNonsenseWordAPI200Response from a JSON string
generate_nonsense_word_api200_response_instance = GenerateNonsenseWordAPI200Response.from_json(json)
# print the JSON string representation of the object
print(GenerateNonsenseWordAPI200Response.to_json())

# convert the object into a dict
generate_nonsense_word_api200_response_dict = generate_nonsense_word_api200_response_instance.to_dict()
# create an instance of GenerateNonsenseWordAPI200Response from a dict
generate_nonsense_word_api200_response_from_dict = GenerateNonsenseWordAPI200Response.from_dict(generate_nonsense_word_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


