# DetectSentimentAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Document** | Pointer to [**DetectSentimentAPI200ResponseDocument**](DetectSentimentAPI200ResponseDocument.md) |  | [optional] 
**Sentences** | Pointer to [**[]DetectSentimentAPI200ResponseSentencesInner**](DetectSentimentAPI200ResponseSentencesInner.md) |  | [optional] 

## Methods

### NewDetectSentimentAPI200Response

`func NewDetectSentimentAPI200Response() *DetectSentimentAPI200Response`

NewDetectSentimentAPI200Response instantiates a new DetectSentimentAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDetectSentimentAPI200ResponseWithDefaults

`func NewDetectSentimentAPI200ResponseWithDefaults() *DetectSentimentAPI200Response`

NewDetectSentimentAPI200ResponseWithDefaults instantiates a new DetectSentimentAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDocument

`func (o *DetectSentimentAPI200Response) GetDocument() DetectSentimentAPI200ResponseDocument`

GetDocument returns the Document field if non-nil, zero value otherwise.

### GetDocumentOk

`func (o *DetectSentimentAPI200Response) GetDocumentOk() (*DetectSentimentAPI200ResponseDocument, bool)`

GetDocumentOk returns a tuple with the Document field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocument

`func (o *DetectSentimentAPI200Response) SetDocument(v DetectSentimentAPI200ResponseDocument)`

SetDocument sets Document field to given value.

### HasDocument

`func (o *DetectSentimentAPI200Response) HasDocument() bool`

HasDocument returns a boolean if a field has been set.

### GetSentences

`func (o *DetectSentimentAPI200Response) GetSentences() []DetectSentimentAPI200ResponseSentencesInner`

GetSentences returns the Sentences field if non-nil, zero value otherwise.

### GetSentencesOk

`func (o *DetectSentimentAPI200Response) GetSentencesOk() (*[]DetectSentimentAPI200ResponseSentencesInner, bool)`

GetSentencesOk returns a tuple with the Sentences field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSentences

`func (o *DetectSentimentAPI200Response) SetSentences(v []DetectSentimentAPI200ResponseSentencesInner)`

SetSentences sets Sentences field to given value.

### HasSentences

`func (o *DetectSentimentAPI200Response) HasSentences() bool`

HasSentences returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


