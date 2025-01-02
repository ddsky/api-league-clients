# SearchMemesAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Memes** | Pointer to [**[]SearchMemesAPI200ResponseMemesInner**](SearchMemesAPI200ResponseMemesInner.md) |  | [optional] 
**Available** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchMemesAPI200Response

`func NewSearchMemesAPI200Response() *SearchMemesAPI200Response`

NewSearchMemesAPI200Response instantiates a new SearchMemesAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchMemesAPI200ResponseWithDefaults

`func NewSearchMemesAPI200ResponseWithDefaults() *SearchMemesAPI200Response`

NewSearchMemesAPI200ResponseWithDefaults instantiates a new SearchMemesAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMemes

`func (o *SearchMemesAPI200Response) GetMemes() []SearchMemesAPI200ResponseMemesInner`

GetMemes returns the Memes field if non-nil, zero value otherwise.

### GetMemesOk

`func (o *SearchMemesAPI200Response) GetMemesOk() (*[]SearchMemesAPI200ResponseMemesInner, bool)`

GetMemesOk returns a tuple with the Memes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemes

`func (o *SearchMemesAPI200Response) SetMemes(v []SearchMemesAPI200ResponseMemesInner)`

SetMemes sets Memes field to given value.

### HasMemes

`func (o *SearchMemesAPI200Response) HasMemes() bool`

HasMemes returns a boolean if a field has been set.

### GetAvailable

`func (o *SearchMemesAPI200Response) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *SearchMemesAPI200Response) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *SearchMemesAPI200Response) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *SearchMemesAPI200Response) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


