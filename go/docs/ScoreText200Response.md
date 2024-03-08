# ScoreText200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NumberOfWords** | Pointer to **int32** |  | [optional] 
**NumberOfSentences** | Pointer to **int32** |  | [optional] 
**Readability** | Pointer to [**ScoreText200ResponseReadability**](ScoreText200ResponseReadability.md) |  | [optional] 
**Skimmability** | Pointer to [**ScoreText200ResponseSkimmability**](ScoreText200ResponseSkimmability.md) |  | [optional] 
**Interestingness** | Pointer to [**ScoreText200ResponseInterestingness**](ScoreText200ResponseInterestingness.md) |  | [optional] 
**Style** | Pointer to [**ScoreText200ResponseStyle**](ScoreText200ResponseStyle.md) |  | [optional] 
**TotalScore** | Pointer to **float32** |  | [optional] 

## Methods

### NewScoreText200Response

`func NewScoreText200Response() *ScoreText200Response`

NewScoreText200Response instantiates a new ScoreText200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewScoreText200ResponseWithDefaults

`func NewScoreText200ResponseWithDefaults() *ScoreText200Response`

NewScoreText200ResponseWithDefaults instantiates a new ScoreText200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNumberOfWords

`func (o *ScoreText200Response) GetNumberOfWords() int32`

GetNumberOfWords returns the NumberOfWords field if non-nil, zero value otherwise.

### GetNumberOfWordsOk

`func (o *ScoreText200Response) GetNumberOfWordsOk() (*int32, bool)`

GetNumberOfWordsOk returns a tuple with the NumberOfWords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfWords

`func (o *ScoreText200Response) SetNumberOfWords(v int32)`

SetNumberOfWords sets NumberOfWords field to given value.

### HasNumberOfWords

`func (o *ScoreText200Response) HasNumberOfWords() bool`

HasNumberOfWords returns a boolean if a field has been set.

### GetNumberOfSentences

`func (o *ScoreText200Response) GetNumberOfSentences() int32`

GetNumberOfSentences returns the NumberOfSentences field if non-nil, zero value otherwise.

### GetNumberOfSentencesOk

`func (o *ScoreText200Response) GetNumberOfSentencesOk() (*int32, bool)`

GetNumberOfSentencesOk returns a tuple with the NumberOfSentences field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfSentences

`func (o *ScoreText200Response) SetNumberOfSentences(v int32)`

SetNumberOfSentences sets NumberOfSentences field to given value.

### HasNumberOfSentences

`func (o *ScoreText200Response) HasNumberOfSentences() bool`

HasNumberOfSentences returns a boolean if a field has been set.

### GetReadability

`func (o *ScoreText200Response) GetReadability() ScoreText200ResponseReadability`

GetReadability returns the Readability field if non-nil, zero value otherwise.

### GetReadabilityOk

`func (o *ScoreText200Response) GetReadabilityOk() (*ScoreText200ResponseReadability, bool)`

GetReadabilityOk returns a tuple with the Readability field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadability

`func (o *ScoreText200Response) SetReadability(v ScoreText200ResponseReadability)`

SetReadability sets Readability field to given value.

### HasReadability

`func (o *ScoreText200Response) HasReadability() bool`

HasReadability returns a boolean if a field has been set.

### GetSkimmability

`func (o *ScoreText200Response) GetSkimmability() ScoreText200ResponseSkimmability`

GetSkimmability returns the Skimmability field if non-nil, zero value otherwise.

### GetSkimmabilityOk

`func (o *ScoreText200Response) GetSkimmabilityOk() (*ScoreText200ResponseSkimmability, bool)`

GetSkimmabilityOk returns a tuple with the Skimmability field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkimmability

`func (o *ScoreText200Response) SetSkimmability(v ScoreText200ResponseSkimmability)`

SetSkimmability sets Skimmability field to given value.

### HasSkimmability

`func (o *ScoreText200Response) HasSkimmability() bool`

HasSkimmability returns a boolean if a field has been set.

### GetInterestingness

`func (o *ScoreText200Response) GetInterestingness() ScoreText200ResponseInterestingness`

GetInterestingness returns the Interestingness field if non-nil, zero value otherwise.

### GetInterestingnessOk

`func (o *ScoreText200Response) GetInterestingnessOk() (*ScoreText200ResponseInterestingness, bool)`

GetInterestingnessOk returns a tuple with the Interestingness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterestingness

`func (o *ScoreText200Response) SetInterestingness(v ScoreText200ResponseInterestingness)`

SetInterestingness sets Interestingness field to given value.

### HasInterestingness

`func (o *ScoreText200Response) HasInterestingness() bool`

HasInterestingness returns a boolean if a field has been set.

### GetStyle

`func (o *ScoreText200Response) GetStyle() ScoreText200ResponseStyle`

GetStyle returns the Style field if non-nil, zero value otherwise.

### GetStyleOk

`func (o *ScoreText200Response) GetStyleOk() (*ScoreText200ResponseStyle, bool)`

GetStyleOk returns a tuple with the Style field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStyle

`func (o *ScoreText200Response) SetStyle(v ScoreText200ResponseStyle)`

SetStyle sets Style field to given value.

### HasStyle

`func (o *ScoreText200Response) HasStyle() bool`

HasStyle returns a boolean if a field has been set.

### GetTotalScore

`func (o *ScoreText200Response) GetTotalScore() float32`

GetTotalScore returns the TotalScore field if non-nil, zero value otherwise.

### GetTotalScoreOk

`func (o *ScoreText200Response) GetTotalScoreOk() (*float32, bool)`

GetTotalScoreOk returns a tuple with the TotalScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalScore

`func (o *ScoreText200Response) SetTotalScore(v float32)`

SetTotalScore sets TotalScore field to given value.

### HasTotalScore

`func (o *ScoreText200Response) HasTotalScore() bool`

HasTotalScore returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


