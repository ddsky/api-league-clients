# ScoreText200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_words** | **int** |  | [optional] 
**number_of_sentences** | **int** |  | [optional] 
**readability** | [**ScoreText200ResponseReadability**](ScoreText200ResponseReadability.md) |  | [optional] 
**skimmability** | [**ScoreText200ResponseSkimmability**](ScoreText200ResponseSkimmability.md) |  | [optional] 
**interestingness** | [**ScoreText200ResponseInterestingness**](ScoreText200ResponseInterestingness.md) |  | [optional] 
**style** | [**ScoreText200ResponseStyle**](ScoreText200ResponseStyle.md) |  | [optional] 
**total_score** | **float** |  | [optional] 

## Example

```python
from apileague.models.score_text200_response import ScoreText200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200Response from a JSON string
score_text200_response_instance = ScoreText200Response.from_json(json)
# print the JSON string representation of the object
print ScoreText200Response.to_json()

# convert the object into a dict
score_text200_response_dict = score_text200_response_instance.to_dict()
# create an instance of ScoreText200Response from a dict
score_text200_response_form_dict = score_text200_response.from_dict(score_text200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


