# ScoreTextAPI200ResponseReadabilitySubscores


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reading_time_seconds** | **int** |  | [optional] 
**forcast** | **float** |  | [optional] 
**flesch** | **float** |  | [optional] 
**smog** | **float** |  | [optional] 
**ari** | **float** |  | [optional] 
**lix** | **float** |  | [optional] 
**coleman_liau** | **float** |  | [optional] 
**kincaid** | **float** |  | [optional] 
**fog** | **float** |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response_readability_subscores import ScoreTextAPI200ResponseReadabilitySubscores

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseReadabilitySubscores from a JSON string
score_text_api200_response_readability_subscores_instance = ScoreTextAPI200ResponseReadabilitySubscores.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseReadabilitySubscores.to_json())

# convert the object into a dict
score_text_api200_response_readability_subscores_dict = score_text_api200_response_readability_subscores_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseReadabilitySubscores from a dict
score_text_api200_response_readability_subscores_from_dict = ScoreTextAPI200ResponseReadabilitySubscores.from_dict(score_text_api200_response_readability_subscores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


