# SearchDrinks200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Drinks** | Pointer to [**[]SearchDrinks200ResponseDrinksInner**](SearchDrinks200ResponseDrinksInner.md) |  | [optional] 
**TotalResults** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchDrinks200Response

`func NewSearchDrinks200Response() *SearchDrinks200Response`

NewSearchDrinks200Response instantiates a new SearchDrinks200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchDrinks200ResponseWithDefaults

`func NewSearchDrinks200ResponseWithDefaults() *SearchDrinks200Response`

NewSearchDrinks200ResponseWithDefaults instantiates a new SearchDrinks200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *SearchDrinks200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchDrinks200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchDrinks200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchDrinks200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetNumber

`func (o *SearchDrinks200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchDrinks200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchDrinks200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchDrinks200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetDrinks

`func (o *SearchDrinks200Response) GetDrinks() []SearchDrinks200ResponseDrinksInner`

GetDrinks returns the Drinks field if non-nil, zero value otherwise.

### GetDrinksOk

`func (o *SearchDrinks200Response) GetDrinksOk() (*[]SearchDrinks200ResponseDrinksInner, bool)`

GetDrinksOk returns a tuple with the Drinks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDrinks

`func (o *SearchDrinks200Response) SetDrinks(v []SearchDrinks200ResponseDrinksInner)`

SetDrinks sets Drinks field to given value.

### HasDrinks

`func (o *SearchDrinks200Response) HasDrinks() bool`

HasDrinks returns a boolean if a field has been set.

### GetTotalResults

`func (o *SearchDrinks200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchDrinks200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchDrinks200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchDrinks200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


