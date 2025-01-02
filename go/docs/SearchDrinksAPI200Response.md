# SearchDrinksAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Drinks** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInner**](SearchDrinksAPI200ResponseDrinksInner.md) |  | [optional] 
**TotalResults** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchDrinksAPI200Response

`func NewSearchDrinksAPI200Response() *SearchDrinksAPI200Response`

NewSearchDrinksAPI200Response instantiates a new SearchDrinksAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchDrinksAPI200ResponseWithDefaults

`func NewSearchDrinksAPI200ResponseWithDefaults() *SearchDrinksAPI200Response`

NewSearchDrinksAPI200ResponseWithDefaults instantiates a new SearchDrinksAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *SearchDrinksAPI200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchDrinksAPI200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchDrinksAPI200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchDrinksAPI200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetNumber

`func (o *SearchDrinksAPI200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchDrinksAPI200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchDrinksAPI200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchDrinksAPI200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetDrinks

`func (o *SearchDrinksAPI200Response) GetDrinks() []SearchDrinksAPI200ResponseDrinksInner`

GetDrinks returns the Drinks field if non-nil, zero value otherwise.

### GetDrinksOk

`func (o *SearchDrinksAPI200Response) GetDrinksOk() (*[]SearchDrinksAPI200ResponseDrinksInner, bool)`

GetDrinksOk returns a tuple with the Drinks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDrinks

`func (o *SearchDrinksAPI200Response) SetDrinks(v []SearchDrinksAPI200ResponseDrinksInner)`

SetDrinks sets Drinks field to given value.

### HasDrinks

`func (o *SearchDrinksAPI200Response) HasDrinks() bool`

HasDrinks returns a boolean if a field has been set.

### GetTotalResults

`func (o *SearchDrinksAPI200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchDrinksAPI200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchDrinksAPI200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchDrinksAPI200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


