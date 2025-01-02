# SearchBooksAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalResults** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Offset** | Pointer to **int32** |  | [optional] 
**Books** | Pointer to [**[][]SearchBooksAPI200ResponseBooksInnerInner**]([]SearchBooksAPI200ResponseBooksInnerInner.md) |  | [optional] 

## Methods

### NewSearchBooksAPI200Response

`func NewSearchBooksAPI200Response() *SearchBooksAPI200Response`

NewSearchBooksAPI200Response instantiates a new SearchBooksAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchBooksAPI200ResponseWithDefaults

`func NewSearchBooksAPI200ResponseWithDefaults() *SearchBooksAPI200Response`

NewSearchBooksAPI200ResponseWithDefaults instantiates a new SearchBooksAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalResults

`func (o *SearchBooksAPI200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchBooksAPI200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchBooksAPI200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchBooksAPI200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.

### GetNumber

`func (o *SearchBooksAPI200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchBooksAPI200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchBooksAPI200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchBooksAPI200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetOffset

`func (o *SearchBooksAPI200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchBooksAPI200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchBooksAPI200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchBooksAPI200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetBooks

`func (o *SearchBooksAPI200Response) GetBooks() [][]SearchBooksAPI200ResponseBooksInnerInner`

GetBooks returns the Books field if non-nil, zero value otherwise.

### GetBooksOk

`func (o *SearchBooksAPI200Response) GetBooksOk() (*[][]SearchBooksAPI200ResponseBooksInnerInner, bool)`

GetBooksOk returns a tuple with the Books field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBooks

`func (o *SearchBooksAPI200Response) SetBooks(v [][]SearchBooksAPI200ResponseBooksInnerInner)`

SetBooks sets Books field to given value.

### HasBooks

`func (o *SearchBooksAPI200Response) HasBooks() bool`

HasBooks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


