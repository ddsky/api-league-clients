# SearchBooks200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalResults** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Offset** | Pointer to **int32** |  | [optional] 
**Books** | Pointer to [**[][]SearchBooks200ResponseBooksInnerInner**]([]SearchBooks200ResponseBooksInnerInner.md) |  | [optional] 

## Methods

### NewSearchBooks200Response

`func NewSearchBooks200Response() *SearchBooks200Response`

NewSearchBooks200Response instantiates a new SearchBooks200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchBooks200ResponseWithDefaults

`func NewSearchBooks200ResponseWithDefaults() *SearchBooks200Response`

NewSearchBooks200ResponseWithDefaults instantiates a new SearchBooks200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalResults

`func (o *SearchBooks200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchBooks200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchBooks200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchBooks200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.

### GetNumber

`func (o *SearchBooks200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchBooks200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchBooks200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchBooks200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetOffset

`func (o *SearchBooks200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchBooks200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchBooks200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchBooks200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetBooks

`func (o *SearchBooks200Response) GetBooks() [][]SearchBooks200ResponseBooksInnerInner`

GetBooks returns the Books field if non-nil, zero value otherwise.

### GetBooksOk

`func (o *SearchBooks200Response) GetBooksOk() (*[][]SearchBooks200ResponseBooksInnerInner, bool)`

GetBooksOk returns a tuple with the Books field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBooks

`func (o *SearchBooks200Response) SetBooks(v [][]SearchBooks200ResponseBooksInnerInner)`

SetBooks sets Books field to given value.

### HasBooks

`func (o *SearchBooks200Response) HasBooks() bool`

HasBooks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


