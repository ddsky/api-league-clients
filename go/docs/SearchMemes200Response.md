# SearchMemes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Memes** | Pointer to [**[]SearchMemes200ResponseMemesInner**](SearchMemes200ResponseMemesInner.md) |  | [optional] 
**Available** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchMemes200Response

`func NewSearchMemes200Response() *SearchMemes200Response`

NewSearchMemes200Response instantiates a new SearchMemes200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchMemes200ResponseWithDefaults

`func NewSearchMemes200ResponseWithDefaults() *SearchMemes200Response`

NewSearchMemes200ResponseWithDefaults instantiates a new SearchMemes200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMemes

`func (o *SearchMemes200Response) GetMemes() []SearchMemes200ResponseMemesInner`

GetMemes returns the Memes field if non-nil, zero value otherwise.

### GetMemesOk

`func (o *SearchMemes200Response) GetMemesOk() (*[]SearchMemes200ResponseMemesInner, bool)`

GetMemesOk returns a tuple with the Memes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemes

`func (o *SearchMemes200Response) SetMemes(v []SearchMemes200ResponseMemesInner)`

SetMemes sets Memes field to given value.

### HasMemes

`func (o *SearchMemes200Response) HasMemes() bool`

HasMemes returns a boolean if a field has been set.

### GetAvailable

`func (o *SearchMemes200Response) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *SearchMemes200Response) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *SearchMemes200Response) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *SearchMemes200Response) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


