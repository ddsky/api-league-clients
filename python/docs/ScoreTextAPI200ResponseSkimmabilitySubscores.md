# ScoreTextAPI200ResponseSkimmabilitySubscores


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bullet_point_ratio_score** | **List[int]** |  | [optional] 
**image_score** | **List[int]** |  | [optional] 
**highlighted_word_ratio_score** | **List[int]** |  | [optional] 
**video_score** | **List[int]** |  | [optional] 
**paragraph_score** | **List[int]** |  | [optional] 
**paragraph_headline_ratio_score** | **List[int]** |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response_skimmability_subscores import ScoreTextAPI200ResponseSkimmabilitySubscores

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseSkimmabilitySubscores from a JSON string
score_text_api200_response_skimmability_subscores_instance = ScoreTextAPI200ResponseSkimmabilitySubscores.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseSkimmabilitySubscores.to_json())

# convert the object into a dict
score_text_api200_response_skimmability_subscores_dict = score_text_api200_response_skimmability_subscores_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseSkimmabilitySubscores from a dict
score_text_api200_response_skimmability_subscores_from_dict = ScoreTextAPI200ResponseSkimmabilitySubscores.from_dict(score_text_api200_response_skimmability_subscores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


