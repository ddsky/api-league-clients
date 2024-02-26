# InlineResponse2004

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jokes** | Pointer to [**[]InlineResponse2004Jokes**](InlineResponse2004Jokes.md) |  | [optional] 
**Available** | Pointer to **int32** |  | [optional] 

## Methods

### NewInlineResponse2004

`func NewInlineResponse2004() *InlineResponse2004`

NewInlineResponse2004 instantiates a new InlineResponse2004 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInlineResponse2004WithDefaults

`func NewInlineResponse2004WithDefaults() *InlineResponse2004`

NewInlineResponse2004WithDefaults instantiates a new InlineResponse2004 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetJokes

`func (o *InlineResponse2004) GetJokes() []InlineResponse2004Jokes`

GetJokes returns the Jokes field if non-nil, zero value otherwise.

### GetJokesOk

`func (o *InlineResponse2004) GetJokesOk() (*[]InlineResponse2004Jokes, bool)`

GetJokesOk returns a tuple with the Jokes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJokes

`func (o *InlineResponse2004) SetJokes(v []InlineResponse2004Jokes)`

SetJokes sets Jokes field to given value.

### HasJokes

`func (o *InlineResponse2004) HasJokes() bool`

HasJokes returns a boolean if a field has been set.

### GetAvailable

`func (o *InlineResponse2004) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *InlineResponse2004) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *InlineResponse2004) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *InlineResponse2004) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


