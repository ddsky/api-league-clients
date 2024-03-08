# ScoreText200ResponseInterestingnessSubscores


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title_rating_score** | **List[int]** |  | [optional] 
**quote_score** | **List[int]** |  | [optional] 
**length_score** | **List[int]** |  | [optional] 
**link_score** | **List[int]** |  | [optional] 
**google_hits_score** | **List[int]** |  | [optional] 

## Example

```python
from apileague.models.score_text200_response_interestingness_subscores import ScoreText200ResponseInterestingnessSubscores

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseInterestingnessSubscores from a JSON string
score_text200_response_interestingness_subscores_instance = ScoreText200ResponseInterestingnessSubscores.from_json(json)
# print the JSON string representation of the object
print ScoreText200ResponseInterestingnessSubscores.to_json()

# convert the object into a dict
score_text200_response_interestingness_subscores_dict = score_text200_response_interestingness_subscores_instance.to_dict()
# create an instance of ScoreText200ResponseInterestingnessSubscores from a dict
score_text200_response_interestingness_subscores_form_dict = score_text200_response_interestingness_subscores.from_dict(score_text200_response_interestingness_subscores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


