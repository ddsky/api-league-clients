# RandomRiddleAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**riddle** | **str** |  | [optional] 
**answer** | **str** |  | [optional] 
**difficulty** | **str** |  | [optional] 

## Example

```python
from apileague.models.random_riddle_api200_response import RandomRiddleAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomRiddleAPI200Response from a JSON string
random_riddle_api200_response_instance = RandomRiddleAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RandomRiddleAPI200Response.to_json())

# convert the object into a dict
random_riddle_api200_response_dict = random_riddle_api200_response_instance.to_dict()
# create an instance of RandomRiddleAPI200Response from a dict
random_riddle_api200_response_from_dict = RandomRiddleAPI200Response.from_dict(random_riddle_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


