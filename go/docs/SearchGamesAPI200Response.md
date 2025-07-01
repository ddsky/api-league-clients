# SearchGamesAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sorting** | Pointer to **map[string]interface{}** |  | [optional] 
**ActiveFilterOptions** | Pointer to [**[]SearchGamesAPI200ResponseActiveFilterOptionsInner**](SearchGamesAPI200ResponseActiveFilterOptionsInner.md) |  | [optional] 
**Query** | Pointer to **NullableString** |  | [optional] 
**TotalResults** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**Offset** | Pointer to **int32** |  | [optional] 
**Results** | Pointer to [**[]SearchGamesAPI200ResponseResultsInner**](SearchGamesAPI200ResponseResultsInner.md) |  | [optional] 
**FilterOptions** | Pointer to [**[]SearchGamesAPI200ResponseFilterOptionsInner**](SearchGamesAPI200ResponseFilterOptionsInner.md) |  | [optional] 
**SortingOptions** | Pointer to [**[]SearchGamesAPI200ResponseSortingOptionsInner**](SearchGamesAPI200ResponseSortingOptionsInner.md) |  | [optional] 

## Methods

### NewSearchGamesAPI200Response

`func NewSearchGamesAPI200Response() *SearchGamesAPI200Response`

NewSearchGamesAPI200Response instantiates a new SearchGamesAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchGamesAPI200ResponseWithDefaults

`func NewSearchGamesAPI200ResponseWithDefaults() *SearchGamesAPI200Response`

NewSearchGamesAPI200ResponseWithDefaults instantiates a new SearchGamesAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSorting

`func (o *SearchGamesAPI200Response) GetSorting() map[string]interface{}`

GetSorting returns the Sorting field if non-nil, zero value otherwise.

### GetSortingOk

`func (o *SearchGamesAPI200Response) GetSortingOk() (*map[string]interface{}, bool)`

GetSortingOk returns a tuple with the Sorting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSorting

`func (o *SearchGamesAPI200Response) SetSorting(v map[string]interface{})`

SetSorting sets Sorting field to given value.

### HasSorting

`func (o *SearchGamesAPI200Response) HasSorting() bool`

HasSorting returns a boolean if a field has been set.

### GetActiveFilterOptions

`func (o *SearchGamesAPI200Response) GetActiveFilterOptions() []SearchGamesAPI200ResponseActiveFilterOptionsInner`

GetActiveFilterOptions returns the ActiveFilterOptions field if non-nil, zero value otherwise.

### GetActiveFilterOptionsOk

`func (o *SearchGamesAPI200Response) GetActiveFilterOptionsOk() (*[]SearchGamesAPI200ResponseActiveFilterOptionsInner, bool)`

GetActiveFilterOptionsOk returns a tuple with the ActiveFilterOptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActiveFilterOptions

`func (o *SearchGamesAPI200Response) SetActiveFilterOptions(v []SearchGamesAPI200ResponseActiveFilterOptionsInner)`

SetActiveFilterOptions sets ActiveFilterOptions field to given value.

### HasActiveFilterOptions

`func (o *SearchGamesAPI200Response) HasActiveFilterOptions() bool`

HasActiveFilterOptions returns a boolean if a field has been set.

### GetQuery

`func (o *SearchGamesAPI200Response) GetQuery() string`

GetQuery returns the Query field if non-nil, zero value otherwise.

### GetQueryOk

`func (o *SearchGamesAPI200Response) GetQueryOk() (*string, bool)`

GetQueryOk returns a tuple with the Query field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuery

`func (o *SearchGamesAPI200Response) SetQuery(v string)`

SetQuery sets Query field to given value.

### HasQuery

`func (o *SearchGamesAPI200Response) HasQuery() bool`

HasQuery returns a boolean if a field has been set.

### SetQueryNil

`func (o *SearchGamesAPI200Response) SetQueryNil(b bool)`

 SetQueryNil sets the value for Query to be an explicit nil

### UnsetQuery
`func (o *SearchGamesAPI200Response) UnsetQuery()`

UnsetQuery ensures that no value is present for Query, not even an explicit nil
### GetTotalResults

`func (o *SearchGamesAPI200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchGamesAPI200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchGamesAPI200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchGamesAPI200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.

### GetLimit

`func (o *SearchGamesAPI200Response) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *SearchGamesAPI200Response) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *SearchGamesAPI200Response) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *SearchGamesAPI200Response) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetOffset

`func (o *SearchGamesAPI200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchGamesAPI200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchGamesAPI200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchGamesAPI200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetResults

`func (o *SearchGamesAPI200Response) GetResults() []SearchGamesAPI200ResponseResultsInner`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *SearchGamesAPI200Response) GetResultsOk() (*[]SearchGamesAPI200ResponseResultsInner, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *SearchGamesAPI200Response) SetResults(v []SearchGamesAPI200ResponseResultsInner)`

SetResults sets Results field to given value.

### HasResults

`func (o *SearchGamesAPI200Response) HasResults() bool`

HasResults returns a boolean if a field has been set.

### GetFilterOptions

`func (o *SearchGamesAPI200Response) GetFilterOptions() []SearchGamesAPI200ResponseFilterOptionsInner`

GetFilterOptions returns the FilterOptions field if non-nil, zero value otherwise.

### GetFilterOptionsOk

`func (o *SearchGamesAPI200Response) GetFilterOptionsOk() (*[]SearchGamesAPI200ResponseFilterOptionsInner, bool)`

GetFilterOptionsOk returns a tuple with the FilterOptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilterOptions

`func (o *SearchGamesAPI200Response) SetFilterOptions(v []SearchGamesAPI200ResponseFilterOptionsInner)`

SetFilterOptions sets FilterOptions field to given value.

### HasFilterOptions

`func (o *SearchGamesAPI200Response) HasFilterOptions() bool`

HasFilterOptions returns a boolean if a field has been set.

### GetSortingOptions

`func (o *SearchGamesAPI200Response) GetSortingOptions() []SearchGamesAPI200ResponseSortingOptionsInner`

GetSortingOptions returns the SortingOptions field if non-nil, zero value otherwise.

### GetSortingOptionsOk

`func (o *SearchGamesAPI200Response) GetSortingOptionsOk() (*[]SearchGamesAPI200ResponseSortingOptionsInner, bool)`

GetSortingOptionsOk returns a tuple with the SortingOptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortingOptions

`func (o *SearchGamesAPI200Response) SetSortingOptions(v []SearchGamesAPI200ResponseSortingOptionsInner)`

SetSortingOptions sets SortingOptions field to given value.

### HasSortingOptions

`func (o *SearchGamesAPI200Response) HasSortingOptions() bool`

HasSortingOptions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


