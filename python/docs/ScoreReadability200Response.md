# ScoreReadability200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**readability** | [**ScoreText200ResponseReadability**](ScoreText200ResponseReadability.md) |  | [optional] 

## Example

```python
from apileague.models.score_readability200_response import ScoreReadability200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreReadability200Response from a JSON string
score_readability200_response_instance = ScoreReadability200Response.from_json(json)
# print the JSON string representation of the object
print(ScoreReadability200Response.to_json())

# convert the object into a dict
score_readability200_response_dict = score_readability200_response_instance.to_dict()
# create an instance of ScoreReadability200Response from a dict
score_readability200_response_from_dict = ScoreReadability200Response.from_dict(score_readability200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


