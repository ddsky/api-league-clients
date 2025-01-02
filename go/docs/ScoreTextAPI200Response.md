# ScoreTextAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NumberOfWords** | Pointer to **int32** |  | [optional] 
**NumberOfSentences** | Pointer to **int32** |  | [optional] 
**Readability** | Pointer to [**ScoreTextAPI200ResponseReadability**](ScoreTextAPI200ResponseReadability.md) |  | [optional] 
**Skimmability** | Pointer to [**ScoreTextAPI200ResponseSkimmability**](ScoreTextAPI200ResponseSkimmability.md) |  | [optional] 
**Interestingness** | Pointer to [**ScoreTextAPI200ResponseInterestingness**](ScoreTextAPI200ResponseInterestingness.md) |  | [optional] 
**Style** | Pointer to [**ScoreTextAPI200ResponseStyle**](ScoreTextAPI200ResponseStyle.md) |  | [optional] 
**TotalScore** | Pointer to **float32** |  | [optional] 

## Methods

### NewScoreTextAPI200Response

`func NewScoreTextAPI200Response() *ScoreTextAPI200Response`

NewScoreTextAPI200Response instantiates a new ScoreTextAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewScoreTextAPI200ResponseWithDefaults

`func NewScoreTextAPI200ResponseWithDefaults() *ScoreTextAPI200Response`

NewScoreTextAPI200ResponseWithDefaults instantiates a new ScoreTextAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNumberOfWords

`func (o *ScoreTextAPI200Response) GetNumberOfWords() int32`

GetNumberOfWords returns the NumberOfWords field if non-nil, zero value otherwise.

### GetNumberOfWordsOk

`func (o *ScoreTextAPI200Response) GetNumberOfWordsOk() (*int32, bool)`

GetNumberOfWordsOk returns a tuple with the NumberOfWords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfWords

`func (o *ScoreTextAPI200Response) SetNumberOfWords(v int32)`

SetNumberOfWords sets NumberOfWords field to given value.

### HasNumberOfWords

`func (o *ScoreTextAPI200Response) HasNumberOfWords() bool`

HasNumberOfWords returns a boolean if a field has been set.

### GetNumberOfSentences

`func (o *ScoreTextAPI200Response) GetNumberOfSentences() int32`

GetNumberOfSentences returns the NumberOfSentences field if non-nil, zero value otherwise.

### GetNumberOfSentencesOk

`func (o *ScoreTextAPI200Response) GetNumberOfSentencesOk() (*int32, bool)`

GetNumberOfSentencesOk returns a tuple with the NumberOfSentences field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfSentences

`func (o *ScoreTextAPI200Response) SetNumberOfSentences(v int32)`

SetNumberOfSentences sets NumberOfSentences field to given value.

### HasNumberOfSentences

`func (o *ScoreTextAPI200Response) HasNumberOfSentences() bool`

HasNumberOfSentences returns a boolean if a field has been set.

### GetReadability

`func (o *ScoreTextAPI200Response) GetReadability() ScoreTextAPI200ResponseReadability`

GetReadability returns the Readability field if non-nil, zero value otherwise.

### GetReadabilityOk

`func (o *ScoreTextAPI200Response) GetReadabilityOk() (*ScoreTextAPI200ResponseReadability, bool)`

GetReadabilityOk returns a tuple with the Readability field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadability

`func (o *ScoreTextAPI200Response) SetReadability(v ScoreTextAPI200ResponseReadability)`

SetReadability sets Readability field to given value.

### HasReadability

`func (o *ScoreTextAPI200Response) HasReadability() bool`

HasReadability returns a boolean if a field has been set.

### GetSkimmability

`func (o *ScoreTextAPI200Response) GetSkimmability() ScoreTextAPI200ResponseSkimmability`

GetSkimmability returns the Skimmability field if non-nil, zero value otherwise.

### GetSkimmabilityOk

`func (o *ScoreTextAPI200Response) GetSkimmabilityOk() (*ScoreTextAPI200ResponseSkimmability, bool)`

GetSkimmabilityOk returns a tuple with the Skimmability field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkimmability

`func (o *ScoreTextAPI200Response) SetSkimmability(v ScoreTextAPI200ResponseSkimmability)`

SetSkimmability sets Skimmability field to given value.

### HasSkimmability

`func (o *ScoreTextAPI200Response) HasSkimmability() bool`

HasSkimmability returns a boolean if a field has been set.

### GetInterestingness

`func (o *ScoreTextAPI200Response) GetInterestingness() ScoreTextAPI200ResponseInterestingness`

GetInterestingness returns the Interestingness field if non-nil, zero value otherwise.

### GetInterestingnessOk

`func (o *ScoreTextAPI200Response) GetInterestingnessOk() (*ScoreTextAPI200ResponseInterestingness, bool)`

GetInterestingnessOk returns a tuple with the Interestingness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterestingness

`func (o *ScoreTextAPI200Response) SetInterestingness(v ScoreTextAPI200ResponseInterestingness)`

SetInterestingness sets Interestingness field to given value.

### HasInterestingness

`func (o *ScoreTextAPI200Response) HasInterestingness() bool`

HasInterestingness returns a boolean if a field has been set.

### GetStyle

`func (o *ScoreTextAPI200Response) GetStyle() ScoreTextAPI200ResponseStyle`

GetStyle returns the Style field if non-nil, zero value otherwise.

### GetStyleOk

`func (o *ScoreTextAPI200Response) GetStyleOk() (*ScoreTextAPI200ResponseStyle, bool)`

GetStyleOk returns a tuple with the Style field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStyle

`func (o *ScoreTextAPI200Response) SetStyle(v ScoreTextAPI200ResponseStyle)`

SetStyle sets Style field to given value.

### HasStyle

`func (o *ScoreTextAPI200Response) HasStyle() bool`

HasStyle returns a boolean if a field has been set.

### GetTotalScore

`func (o *ScoreTextAPI200Response) GetTotalScore() float32`

GetTotalScore returns the TotalScore field if non-nil, zero value otherwise.

### GetTotalScoreOk

`func (o *ScoreTextAPI200Response) GetTotalScoreOk() (*float32, bool)`

GetTotalScoreOk returns a tuple with the TotalScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalScore

`func (o *ScoreTextAPI200Response) SetTotalScore(v float32)`

SetTotalScore sets TotalScore field to given value.

### HasTotalScore

`func (o *ScoreTextAPI200Response) HasTotalScore() bool`

HasTotalScore returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


