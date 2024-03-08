# ScoreText200ResponseStyleSubscores


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**abbreviation_score** | **List[int]** |  | [optional] 
**style_score** | **List[int]** |  | [optional] 
**spelling_score** | **List[int]** |  | [optional] 

## Example

```python
from apileague.models.score_text200_response_style_subscores import ScoreText200ResponseStyleSubscores

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseStyleSubscores from a JSON string
score_text200_response_style_subscores_instance = ScoreText200ResponseStyleSubscores.from_json(json)
# print the JSON string representation of the object
print ScoreText200ResponseStyleSubscores.to_json()

# convert the object into a dict
score_text200_response_style_subscores_dict = score_text200_response_style_subscores_instance.to_dict()
# create an instance of ScoreText200ResponseStyleSubscores from a dict
score_text200_response_style_subscores_form_dict = score_text200_response_style_subscores.from_dict(score_text200_response_style_subscores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


