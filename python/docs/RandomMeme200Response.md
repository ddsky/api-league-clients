# RandomMeme200Response


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
from apileague.models.random_meme200_response import RandomMeme200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomMeme200Response from a JSON string
random_meme200_response_instance = RandomMeme200Response.from_json(json)
# print the JSON string representation of the object
print(RandomMeme200Response.to_json())

# convert the object into a dict
random_meme200_response_dict = random_meme200_response_instance.to_dict()
# create an instance of RandomMeme200Response from a dict
random_meme200_response_from_dict = RandomMeme200Response.from_dict(random_meme200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


