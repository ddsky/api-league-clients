# SearchRecipes200ResponseRecipesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Images** | Pointer to **[]string** |  | [optional] 
**Nutrition** | Pointer to [**SearchRecipes200ResponseRecipesInnerNutrition**](SearchRecipes200ResponseRecipesInnerNutrition.md) |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Title** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewSearchRecipes200ResponseRecipesInner

`func NewSearchRecipes200ResponseRecipesInner() *SearchRecipes200ResponseRecipesInner`

NewSearchRecipes200ResponseRecipesInner instantiates a new SearchRecipes200ResponseRecipesInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchRecipes200ResponseRecipesInnerWithDefaults

`func NewSearchRecipes200ResponseRecipesInnerWithDefaults() *SearchRecipes200ResponseRecipesInner`

NewSearchRecipes200ResponseRecipesInnerWithDefaults instantiates a new SearchRecipes200ResponseRecipesInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetImages

`func (o *SearchRecipes200ResponseRecipesInner) GetImages() []*string`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *SearchRecipes200ResponseRecipesInner) GetImagesOk() (*[]*string, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *SearchRecipes200ResponseRecipesInner) SetImages(v []*string)`

SetImages sets Images field to given value.

### HasImages

`func (o *SearchRecipes200ResponseRecipesInner) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetNutrition

`func (o *SearchRecipes200ResponseRecipesInner) GetNutrition() SearchRecipes200ResponseRecipesInnerNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *SearchRecipes200ResponseRecipesInner) GetNutritionOk() (*SearchRecipes200ResponseRecipesInnerNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *SearchRecipes200ResponseRecipesInner) SetNutrition(v SearchRecipes200ResponseRecipesInnerNutrition)`

SetNutrition sets Nutrition field to given value.

### HasNutrition

`func (o *SearchRecipes200ResponseRecipesInner) HasNutrition() bool`

HasNutrition returns a boolean if a field has been set.

### GetId

`func (o *SearchRecipes200ResponseRecipesInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchRecipes200ResponseRecipesInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchRecipes200ResponseRecipesInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchRecipes200ResponseRecipesInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetTitle

`func (o *SearchRecipes200ResponseRecipesInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *SearchRecipes200ResponseRecipesInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *SearchRecipes200ResponseRecipesInner) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *SearchRecipes200ResponseRecipesInner) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *SearchRecipes200ResponseRecipesInner) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *SearchRecipes200ResponseRecipesInner) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


