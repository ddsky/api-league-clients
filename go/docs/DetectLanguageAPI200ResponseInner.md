# DetectLanguageAPI200ResponseInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Language** | Pointer to **NullableString** |  | [optional] 
**Confidence** | Pointer to **float32** |  | [optional] 

## Methods

### NewDetectLanguageAPI200ResponseInner

`func NewDetectLanguageAPI200ResponseInner() *DetectLanguageAPI200ResponseInner`

NewDetectLanguageAPI200ResponseInner instantiates a new DetectLanguageAPI200ResponseInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDetectLanguageAPI200ResponseInnerWithDefaults

`func NewDetectLanguageAPI200ResponseInnerWithDefaults() *DetectLanguageAPI200ResponseInner`

NewDetectLanguageAPI200ResponseInnerWithDefaults instantiates a new DetectLanguageAPI200ResponseInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguage

`func (o *DetectLanguageAPI200ResponseInner) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *DetectLanguageAPI200ResponseInner) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *DetectLanguageAPI200ResponseInner) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *DetectLanguageAPI200ResponseInner) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### SetLanguageNil

`func (o *DetectLanguageAPI200ResponseInner) SetLanguageNil(b bool)`

 SetLanguageNil sets the value for Language to be an explicit nil

### UnsetLanguage
`func (o *DetectLanguageAPI200ResponseInner) UnsetLanguage()`

UnsetLanguage ensures that no value is present for Language, not even an explicit nil
### GetConfidence

`func (o *DetectLanguageAPI200ResponseInner) GetConfidence() float32`

GetConfidence returns the Confidence field if non-nil, zero value otherwise.

### GetConfidenceOk

`func (o *DetectLanguageAPI200ResponseInner) GetConfidenceOk() (*float32, bool)`

GetConfidenceOk returns a tuple with the Confidence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfidence

`func (o *DetectLanguageAPI200ResponseInner) SetConfidence(v float32)`

SetConfidence sets Confidence field to given value.

### HasConfidence

`func (o *DetectLanguageAPI200ResponseInner) HasConfidence() bool`

HasConfidence returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


