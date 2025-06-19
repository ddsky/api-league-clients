# ArtSearchAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Available** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Offset** | Pointer to **int32** |  | [optional] 
**Artworks** | Pointer to [**[]SearchBooksAPI200ResponseBooksInnerInner**](SearchBooksAPI200ResponseBooksInnerInner.md) |  | [optional] 

## Methods

### NewArtSearchAPI200Response

`func NewArtSearchAPI200Response() *ArtSearchAPI200Response`

NewArtSearchAPI200Response instantiates a new ArtSearchAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewArtSearchAPI200ResponseWithDefaults

`func NewArtSearchAPI200ResponseWithDefaults() *ArtSearchAPI200Response`

NewArtSearchAPI200ResponseWithDefaults instantiates a new ArtSearchAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAvailable

`func (o *ArtSearchAPI200Response) GetAvailable() int32`

GetAvailable returns the Available field if non-nil, zero value otherwise.

### GetAvailableOk

`func (o *ArtSearchAPI200Response) GetAvailableOk() (*int32, bool)`

GetAvailableOk returns a tuple with the Available field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailable

`func (o *ArtSearchAPI200Response) SetAvailable(v int32)`

SetAvailable sets Available field to given value.

### HasAvailable

`func (o *ArtSearchAPI200Response) HasAvailable() bool`

HasAvailable returns a boolean if a field has been set.

### GetNumber

`func (o *ArtSearchAPI200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *ArtSearchAPI200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *ArtSearchAPI200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *ArtSearchAPI200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetOffset

`func (o *ArtSearchAPI200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *ArtSearchAPI200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *ArtSearchAPI200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *ArtSearchAPI200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetArtworks

`func (o *ArtSearchAPI200Response) GetArtworks() []SearchBooksAPI200ResponseBooksInnerInner`

GetArtworks returns the Artworks field if non-nil, zero value otherwise.

### GetArtworksOk

`func (o *ArtSearchAPI200Response) GetArtworksOk() (*[]SearchBooksAPI200ResponseBooksInnerInner, bool)`

GetArtworksOk returns a tuple with the Artworks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArtworks

`func (o *ArtSearchAPI200Response) SetArtworks(v []SearchBooksAPI200ResponseBooksInnerInner)`

SetArtworks sets Artworks field to given value.

### HasArtworks

`func (o *ArtSearchAPI200Response) HasArtworks() bool`

HasArtworks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


