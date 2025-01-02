# ScoreReadabilityAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**readability** | [**ScoreTextAPI200ResponseReadability**](ScoreTextAPI200ResponseReadability.md) |  | [optional] 

## Example

```python
from apileague.models.score_readability_api200_response import ScoreReadabilityAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreReadabilityAPI200Response from a JSON string
score_readability_api200_response_instance = ScoreReadabilityAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ScoreReadabilityAPI200Response.to_json())

# convert the object into a dict
score_readability_api200_response_dict = score_readability_api200_response_instance.to_dict()
# create an instance of ScoreReadabilityAPI200Response from a dict
score_readability_api200_response_from_dict = ScoreReadabilityAPI200Response.from_dict(score_readability_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


