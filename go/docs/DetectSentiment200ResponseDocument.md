# DetectSentiment200ResponseDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sentiment** | Pointer to **NullableString** |  | [optional] 
**Confidence** | Pointer to **int32** |  | [optional] 
**AverageConfidence** | Pointer to **int32** |  | [optional] 

## Methods

### NewDetectSentiment200ResponseDocument

`func NewDetectSentiment200ResponseDocument() *DetectSentiment200ResponseDocument`

NewDetectSentiment200ResponseDocument instantiates a new DetectSentiment200ResponseDocument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDetectSentiment200ResponseDocumentWithDefaults

`func NewDetectSentiment200ResponseDocumentWithDefaults() *DetectSentiment200ResponseDocument`

NewDetectSentiment200ResponseDocumentWithDefaults instantiates a new DetectSentiment200ResponseDocument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSentiment

`func (o *DetectSentiment200ResponseDocument) GetSentiment() string`

GetSentiment returns the Sentiment field if non-nil, zero value otherwise.

### GetSentimentOk

`func (o *DetectSentiment200ResponseDocument) GetSentimentOk() (*string, bool)`

GetSentimentOk returns a tuple with the Sentiment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSentiment

`func (o *DetectSentiment200ResponseDocument) SetSentiment(v string)`

SetSentiment sets Sentiment field to given value.

### HasSentiment

`func (o *DetectSentiment200ResponseDocument) HasSentiment() bool`

HasSentiment returns a boolean if a field has been set.

### SetSentimentNil

`func (o *DetectSentiment200ResponseDocument) SetSentimentNil(b bool)`

 SetSentimentNil sets the value for Sentiment to be an explicit nil

### UnsetSentiment
`func (o *DetectSentiment200ResponseDocument) UnsetSentiment()`

UnsetSentiment ensures that no value is present for Sentiment, not even an explicit nil
### GetConfidence

`func (o *DetectSentiment200ResponseDocument) GetConfidence() int32`

GetConfidence returns the Confidence field if non-nil, zero value otherwise.

### GetConfidenceOk

`func (o *DetectSentiment200ResponseDocument) GetConfidenceOk() (*int32, bool)`

GetConfidenceOk returns a tuple with the Confidence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfidence

`func (o *DetectSentiment200ResponseDocument) SetConfidence(v int32)`

SetConfidence sets Confidence field to given value.

### HasConfidence

`func (o *DetectSentiment200ResponseDocument) HasConfidence() bool`

HasConfidence returns a boolean if a field has been set.

### GetAverageConfidence

`func (o *DetectSentiment200ResponseDocument) GetAverageConfidence() int32`

GetAverageConfidence returns the AverageConfidence field if non-nil, zero value otherwise.

### GetAverageConfidenceOk

`func (o *DetectSentiment200ResponseDocument) GetAverageConfidenceOk() (*int32, bool)`

GetAverageConfidenceOk returns a tuple with the AverageConfidence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAverageConfidence

`func (o *DetectSentiment200ResponseDocument) SetAverageConfidence(v int32)`

SetAverageConfidence sets AverageConfidence field to given value.

### HasAverageConfidence

`func (o *DetectSentiment200ResponseDocument) HasAverageConfidence() bool`

HasAverageConfidence returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


