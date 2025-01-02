# RandomPoemAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**author** | **str** |  | [optional] 
**poem** | **str** |  | [optional] 

## Example

```python
from apileague.models.random_poem_api200_response import RandomPoemAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomPoemAPI200Response from a JSON string
random_poem_api200_response_instance = RandomPoemAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RandomPoemAPI200Response.to_json())

# convert the object into a dict
random_poem_api200_response_dict = random_poem_api200_response_instance.to_dict()
# create an instance of RandomPoemAPI200Response from a dict
random_poem_api200_response_from_dict = RandomPoemAPI200Response.from_dict(random_poem_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


