# DetectSentimentAPI200ResponseSentencesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**length** | **int** |  | [optional] 
**sentiment** | **str** |  | [optional] 
**offset** | **int** |  | [optional] 
**confidence** | **int** |  | [optional] 

## Example

```python
from apileague.models.detect_sentiment_api200_response_sentences_inner import DetectSentimentAPI200ResponseSentencesInner

# TODO update the JSON string below
json = "{}"
# create an instance of DetectSentimentAPI200ResponseSentencesInner from a JSON string
detect_sentiment_api200_response_sentences_inner_instance = DetectSentimentAPI200ResponseSentencesInner.from_json(json)
# print the JSON string representation of the object
print(DetectSentimentAPI200ResponseSentencesInner.to_json())

# convert the object into a dict
detect_sentiment_api200_response_sentences_inner_dict = detect_sentiment_api200_response_sentences_inner_instance.to_dict()
# create an instance of DetectSentimentAPI200ResponseSentencesInner from a dict
detect_sentiment_api200_response_sentences_inner_from_dict = DetectSentimentAPI200ResponseSentencesInner.from_dict(detect_sentiment_api200_response_sentences_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


