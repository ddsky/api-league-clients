# ScoreText200ResponseReadabilitySubscores


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
from apileague.models.score_text200_response_readability_subscores import ScoreText200ResponseReadabilitySubscores

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseReadabilitySubscores from a JSON string
score_text200_response_readability_subscores_instance = ScoreText200ResponseReadabilitySubscores.from_json(json)
# print the JSON string representation of the object
print(ScoreText200ResponseReadabilitySubscores.to_json())

# convert the object into a dict
score_text200_response_readability_subscores_dict = score_text200_response_readability_subscores_instance.to_dict()
# create an instance of ScoreText200ResponseReadabilitySubscores from a dict
score_text200_response_readability_subscores_from_dict = ScoreText200ResponseReadabilitySubscores.from_dict(score_text200_response_readability_subscores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


