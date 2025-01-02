# SearchJokesAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jokes** | Pointer to [**[]SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md) |  | [optional] 
**Available** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchJokesAPI200Response

`func NewSearchJokesAPI200Response() *SearchJokesAPI200Response`

NewSearchJokesAPI200Response instantiates a new SearchJokesAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchJokesAPI200ResponseWithDefaults

`func NewSearchJokesAPI200ResponseWithDefaults() *SearchJokesAPI200Response`

NewSearchJokesAPI200ResponseWithDefaults instantiates a new SearchJokesAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetJokes

`func (o *SearchJokesAPI200Response) GetJokes() []SearchJokesAPI200ResponseJokesInner`

GetJokes returns the Jokes field if non-nil, zero value otherwise.

### GetJokesOk

`func (o *SearchJokesAPI200Response) GetJokesOk() (*[]SearchJokesAPI200ResponseJokesInner, bool)`

GetJokesOk returns a tuple with the Jokes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJokes

`func (o *SearchJokesAPI200Response) SetJokes(v []SearchJokesAPI200ResponseJokesInner)`

SetJokes sets Jokes field to given value.

### HasJokes

`func (o *SearchJokesAPI200Response) HasJokes() bool`

HasJokes returns a boolean if a field has been set.

### GetAvailable

`func (o *SearchJokesAPI200Response) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *SearchJokesAPI200Response) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *SearchJokesAPI200Response) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *SearchJokesAPI200Response) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


