# RandomPoem200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**author** | **str** |  | [optional] 
**poem** | **str** |  | [optional] 

## Example

```python
from apileague.models.random_poem200_response import RandomPoem200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomPoem200Response from a JSON string
random_poem200_response_instance = RandomPoem200Response.from_json(json)
# print the JSON string representation of the object
print(RandomPoem200Response.to_json())

# convert the object into a dict
random_poem200_response_dict = random_poem200_response_instance.to_dict()
# create an instance of RandomPoem200Response from a dict
random_poem200_response_from_dict = RandomPoem200Response.from_dict(random_poem200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


