# SearchRecipes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Recipes** | Pointer to [**[]SearchRecipes200ResponseRecipesInner**](SearchRecipes200ResponseRecipesInner.md) |  | [optional] 
**TotalResults** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchRecipes200Response

`func NewSearchRecipes200Response() *SearchRecipes200Response`

NewSearchRecipes200Response instantiates a new SearchRecipes200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchRecipes200ResponseWithDefaults

`func NewSearchRecipes200ResponseWithDefaults() *SearchRecipes200Response`

NewSearchRecipes200ResponseWithDefaults instantiates a new SearchRecipes200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *SearchRecipes200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchRecipes200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchRecipes200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchRecipes200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetNumber

`func (o *SearchRecipes200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchRecipes200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchRecipes200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchRecipes200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetRecipes

`func (o *SearchRecipes200Response) GetRecipes() []SearchRecipes200ResponseRecipesInner`

GetRecipes returns the Recipes field if non-nil, zero value otherwise.

### GetRecipesOk

`func (o *SearchRecipes200Response) GetRecipesOk() (*[]SearchRecipes200ResponseRecipesInner, bool)`

GetRecipesOk returns a tuple with the Recipes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipes

`func (o *SearchRecipes200Response) SetRecipes(v []SearchRecipes200ResponseRecipesInner)`

SetRecipes sets Recipes field to given value.

### HasRecipes

`func (o *SearchRecipes200Response) HasRecipes() bool`

HasRecipes returns a boolean if a field has been set.

### GetTotalResults

`func (o *SearchRecipes200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchRecipes200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchRecipes200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchRecipes200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


