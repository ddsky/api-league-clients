# DetectSentiment200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document** | [**DetectSentiment200ResponseDocument**](DetectSentiment200ResponseDocument.md) |  | [optional] 
**sentences** | [**List[DetectSentiment200ResponseSentencesInner]**](DetectSentiment200ResponseSentencesInner.md) |  | [optional] 

## Example

```python
from apileague.models.detect_sentiment200_response import DetectSentiment200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DetectSentiment200Response from a JSON string
detect_sentiment200_response_instance = DetectSentiment200Response.from_json(json)
# print the JSON string representation of the object
print DetectSentiment200Response.to_json()

# convert the object into a dict
detect_sentiment200_response_dict = detect_sentiment200_response_instance.to_dict()
# create an instance of DetectSentiment200Response from a dict
detect_sentiment200_response_form_dict = detect_sentiment200_response.from_dict(detect_sentiment200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


