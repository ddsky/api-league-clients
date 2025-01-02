# RandomMemeAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**width** | **int** |  | [optional] 
**height** | **int** |  | [optional] 
**ratio** | **float** |  | [optional] 

## Example

```python
from apileague.models.random_meme_api200_response import RandomMemeAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomMemeAPI200Response from a JSON string
random_meme_api200_response_instance = RandomMemeAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RandomMemeAPI200Response.to_json())

# convert the object into a dict
random_meme_api200_response_dict = random_meme_api200_response_instance.to_dict()
# create an instance of RandomMemeAPI200Response from a dict
random_meme_api200_response_from_dict = RandomMemeAPI200Response.from_dict(random_meme_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


