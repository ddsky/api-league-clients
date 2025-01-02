# ScoreTextAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_words** | **int** |  | [optional] 
**number_of_sentences** | **int** |  | [optional] 
**readability** | [**ScoreTextAPI200ResponseReadability**](ScoreTextAPI200ResponseReadability.md) |  | [optional] 
**skimmability** | [**ScoreTextAPI200ResponseSkimmability**](ScoreTextAPI200ResponseSkimmability.md) |  | [optional] 
**interestingness** | [**ScoreTextAPI200ResponseInterestingness**](ScoreTextAPI200ResponseInterestingness.md) |  | [optional] 
**style** | [**ScoreTextAPI200ResponseStyle**](ScoreTextAPI200ResponseStyle.md) |  | [optional] 
**total_score** | **float** |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response import ScoreTextAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200Response from a JSON string
score_text_api200_response_instance = ScoreTextAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200Response.to_json())

# convert the object into a dict
score_text_api200_response_dict = score_text_api200_response_instance.to_dict()
# create an instance of ScoreTextAPI200Response from a dict
score_text_api200_response_from_dict = ScoreTextAPI200Response.from_dict(score_text_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


