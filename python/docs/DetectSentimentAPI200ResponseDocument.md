# DetectSentimentAPI200ResponseDocument


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sentiment** | **str** |  | [optional] 
**confidence** | **int** |  | [optional] 
**average_confidence** | **int** |  | [optional] 

## Example

```python
from apileague.models.detect_sentiment_api200_response_document import DetectSentimentAPI200ResponseDocument

# TODO update the JSON string below
json = "{}"
# create an instance of DetectSentimentAPI200ResponseDocument from a JSON string
detect_sentiment_api200_response_document_instance = DetectSentimentAPI200ResponseDocument.from_json(json)
# print the JSON string representation of the object
print(DetectSentimentAPI200ResponseDocument.to_json())

# convert the object into a dict
detect_sentiment_api200_response_document_dict = detect_sentiment_api200_response_document_instance.to_dict()
# create an instance of DetectSentimentAPI200ResponseDocument from a dict
detect_sentiment_api200_response_document_from_dict = DetectSentimentAPI200ResponseDocument.from_dict(detect_sentiment_api200_response_document_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


