# SearchRecipesAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | Pointer to **int32** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Recipes** | Pointer to [**[]SearchRecipesAPI200ResponseRecipesInner**](SearchRecipesAPI200ResponseRecipesInner.md) |  | [optional] 
**TotalResults** | Pointer to **int32** |  | [optional] 

## Methods

### NewSearchRecipesAPI200Response

`func NewSearchRecipesAPI200Response() *SearchRecipesAPI200Response`

NewSearchRecipesAPI200Response instantiates a new SearchRecipesAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchRecipesAPI200ResponseWithDefaults

`func NewSearchRecipesAPI200ResponseWithDefaults() *SearchRecipesAPI200Response`

NewSearchRecipesAPI200ResponseWithDefaults instantiates a new SearchRecipesAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffset

`func (o *SearchRecipesAPI200Response) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchRecipesAPI200Response) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchRecipesAPI200Response) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchRecipesAPI200Response) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetNumber

`func (o *SearchRecipesAPI200Response) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SearchRecipesAPI200Response) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SearchRecipesAPI200Response) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SearchRecipesAPI200Response) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetRecipes

`func (o *SearchRecipesAPI200Response) GetRecipes() []SearchRecipesAPI200ResponseRecipesInner`

GetRecipes returns the Recipes field if non-nil, zero value otherwise.

### GetRecipesOk

`func (o *SearchRecipesAPI200Response) GetRecipesOk() (*[]SearchRecipesAPI200ResponseRecipesInner, bool)`

GetRecipesOk returns a tuple with the Recipes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipes

`func (o *SearchRecipesAPI200Response) SetRecipes(v []SearchRecipesAPI200ResponseRecipesInner)`

SetRecipes sets Recipes field to given value.

### HasRecipes

`func (o *SearchRecipesAPI200Response) HasRecipes() bool`

HasRecipes returns a boolean if a field has been set.

### GetTotalResults

`func (o *SearchRecipesAPI200Response) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchRecipesAPI200Response) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchRecipesAPI200Response) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchRecipesAPI200Response) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


