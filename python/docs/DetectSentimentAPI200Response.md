# DetectSentimentAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document** | [**DetectSentimentAPI200ResponseDocument**](DetectSentimentAPI200ResponseDocument.md) |  | [optional] 
**sentences** | [**List[DetectSentimentAPI200ResponseSentencesInner]**](DetectSentimentAPI200ResponseSentencesInner.md) |  | [optional] 

## Example

```python
from apileague.models.detect_sentiment_api200_response import DetectSentimentAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DetectSentimentAPI200Response from a JSON string
detect_sentiment_api200_response_instance = DetectSentimentAPI200Response.from_json(json)
# print the JSON string representation of the object
print(DetectSentimentAPI200Response.to_json())

# convert the object into a dict
detect_sentiment_api200_response_dict = detect_sentiment_api200_response_instance.to_dict()
# create an instance of DetectSentimentAPI200Response from a dict
detect_sentiment_api200_response_from_dict = DetectSentimentAPI200Response.from_dict(detect_sentiment_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


