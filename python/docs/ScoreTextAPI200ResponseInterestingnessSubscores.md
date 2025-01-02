# ScoreTextAPI200ResponseInterestingnessSubscores


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
from apileague.models.score_text_api200_response_interestingness_subscores import ScoreTextAPI200ResponseInterestingnessSubscores

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseInterestingnessSubscores from a JSON string
score_text_api200_response_interestingness_subscores_instance = ScoreTextAPI200ResponseInterestingnessSubscores.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseInterestingnessSubscores.to_json())

# convert the object into a dict
score_text_api200_response_interestingness_subscores_dict = score_text_api200_response_interestingness_subscores_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseInterestingnessSubscores from a dict
score_text_api200_response_interestingness_subscores_from_dict = ScoreTextAPI200ResponseInterestingnessSubscores.from_dict(score_text_api200_response_interestingness_subscores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


