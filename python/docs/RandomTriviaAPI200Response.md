# RandomTriviaAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trivia** | **str** |  | [optional] 

## Example

```python
from apileague.models.random_trivia_api200_response import RandomTriviaAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomTriviaAPI200Response from a JSON string
random_trivia_api200_response_instance = RandomTriviaAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RandomTriviaAPI200Response.to_json())

# convert the object into a dict
random_trivia_api200_response_dict = random_trivia_api200_response_instance.to_dict()
# create an instance of RandomTriviaAPI200Response from a dict
random_trivia_api200_response_from_dict = RandomTriviaAPI200Response.from_dict(random_trivia_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


