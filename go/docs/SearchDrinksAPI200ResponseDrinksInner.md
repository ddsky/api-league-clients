# SearchDrinksAPI200ResponseDrinksInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Flavors** | Pointer to **[]string** |  | [optional] 
**Instructions** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerInstructionsInner**](SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md) |  | [optional] 
**Images** | Pointer to **[]string** |  | [optional] 
**Nutrition** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutrition**](SearchDrinksAPI200ResponseDrinksInnerNutrition.md) |  | [optional] 
**GlassType** | Pointer to **NullableString** |  | [optional] 
**Credits** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerCredits**](SearchDrinksAPI200ResponseDrinksInnerCredits.md) |  | [optional] 
**PricePerServing** | Pointer to **float32** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**Ingredients** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerIngredientsInner**](SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md) |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Title** | Pointer to **NullableString** |  | [optional] 
**Cuisines** | Pointer to **[]string** |  | [optional] 

## Methods

### NewSearchDrinksAPI200ResponseDrinksInner

`func NewSearchDrinksAPI200ResponseDrinksInner() *SearchDrinksAPI200ResponseDrinksInner`

NewSearchDrinksAPI200ResponseDrinksInner instantiates a new SearchDrinksAPI200ResponseDrinksInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchDrinksAPI200ResponseDrinksInnerWithDefaults

`func NewSearchDrinksAPI200ResponseDrinksInnerWithDefaults() *SearchDrinksAPI200ResponseDrinksInner`

NewSearchDrinksAPI200ResponseDrinksInnerWithDefaults instantiates a new SearchDrinksAPI200ResponseDrinksInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFlavors

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetFlavors() []*string`

GetFlavors returns the Flavors field if non-nil, zero value otherwise.

### GetFlavorsOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetFlavorsOk() (*[]*string, bool)`

GetFlavorsOk returns a tuple with the Flavors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlavors

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetFlavors(v []*string)`

SetFlavors sets Flavors field to given value.

### HasFlavors

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasFlavors() bool`

HasFlavors returns a boolean if a field has been set.

### GetInstructions

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetInstructions() []SearchDrinksAPI200ResponseDrinksInnerInstructionsInner`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetInstructionsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerInstructionsInner, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetInstructions(v []SearchDrinksAPI200ResponseDrinksInnerInstructionsInner)`

SetInstructions sets Instructions field to given value.

### HasInstructions

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasInstructions() bool`

HasInstructions returns a boolean if a field has been set.

### GetImages

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetImages() []*string`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetImagesOk() (*[]*string, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetImages(v []*string)`

SetImages sets Images field to given value.

### HasImages

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetNutrition

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetNutrition() SearchDrinksAPI200ResponseDrinksInnerNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetNutritionOk() (*SearchDrinksAPI200ResponseDrinksInnerNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetNutrition(v SearchDrinksAPI200ResponseDrinksInnerNutrition)`

SetNutrition sets Nutrition field to given value.

### HasNutrition

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasNutrition() bool`

HasNutrition returns a boolean if a field has been set.

### GetGlassType

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetGlassType() string`

GetGlassType returns the GlassType field if non-nil, zero value otherwise.

### GetGlassTypeOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetGlassTypeOk() (*string, bool)`

GetGlassTypeOk returns a tuple with the GlassType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGlassType

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetGlassType(v string)`

SetGlassType sets GlassType field to given value.

### HasGlassType

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasGlassType() bool`

HasGlassType returns a boolean if a field has been set.

### SetGlassTypeNil

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetGlassTypeNil(b bool)`

 SetGlassTypeNil sets the value for GlassType to be an explicit nil

### UnsetGlassType
`func (o *SearchDrinksAPI200ResponseDrinksInner) UnsetGlassType()`

UnsetGlassType ensures that no value is present for GlassType, not even an explicit nil
### GetCredits

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetCredits() SearchDrinksAPI200ResponseDrinksInnerCredits`

GetCredits returns the Credits field if non-nil, zero value otherwise.

### GetCreditsOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetCreditsOk() (*SearchDrinksAPI200ResponseDrinksInnerCredits, bool)`

GetCreditsOk returns a tuple with the Credits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCredits

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetCredits(v SearchDrinksAPI200ResponseDrinksInnerCredits)`

SetCredits sets Credits field to given value.

### HasCredits

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasCredits() bool`

HasCredits returns a boolean if a field has been set.

### GetPricePerServing

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.

### HasPricePerServing

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasPricePerServing() bool`

HasPricePerServing returns a boolean if a field has been set.

### GetDescription

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *SearchDrinksAPI200ResponseDrinksInner) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetIngredients

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetIngredients() []SearchDrinksAPI200ResponseDrinksInnerIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetIngredientsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetIngredients(v []SearchDrinksAPI200ResponseDrinksInnerIngredientsInner)`

SetIngredients sets Ingredients field to given value.

### HasIngredients

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasIngredients() bool`

HasIngredients returns a boolean if a field has been set.

### GetId

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetTitle

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *SearchDrinksAPI200ResponseDrinksInner) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetCuisines

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetCuisines() []*string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *SearchDrinksAPI200ResponseDrinksInner) GetCuisinesOk() (*[]*string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *SearchDrinksAPI200ResponseDrinksInner) SetCuisines(v []*string)`

SetCuisines sets Cuisines field to given value.

### HasCuisines

`func (o *SearchDrinksAPI200ResponseDrinksInner) HasCuisines() bool`

HasCuisines returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


