# RetrieveRecipeInformation200ResponseNutrition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WeightPerServing** | Pointer to [**RetrieveRecipeInformation200ResponseNutritionWeightPerServing**](RetrieveRecipeInformation200ResponseNutritionWeightPerServing.md) |  | [optional] 
**CaloricBreakdown** | Pointer to [**RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown**](RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.md) |  | [optional] 
**Flavonoids** | Pointer to [**[]RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner**](RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.md) |  | [optional] 
**IngredientBreakdown** | Pointer to [**[]RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] 
**Properties** | Pointer to [**[]SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**Nutrients** | Pointer to [**[]RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 

## Methods

### NewRetrieveRecipeInformation200ResponseNutrition

`func NewRetrieveRecipeInformation200ResponseNutrition() *RetrieveRecipeInformation200ResponseNutrition`

NewRetrieveRecipeInformation200ResponseNutrition instantiates a new RetrieveRecipeInformation200ResponseNutrition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformation200ResponseNutritionWithDefaults

`func NewRetrieveRecipeInformation200ResponseNutritionWithDefaults() *RetrieveRecipeInformation200ResponseNutrition`

NewRetrieveRecipeInformation200ResponseNutritionWithDefaults instantiates a new RetrieveRecipeInformation200ResponseNutrition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetWeightPerServing

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetWeightPerServing() RetrieveRecipeInformation200ResponseNutritionWeightPerServing`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetWeightPerServingOk() (*RetrieveRecipeInformation200ResponseNutritionWeightPerServing, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *RetrieveRecipeInformation200ResponseNutrition) SetWeightPerServing(v RetrieveRecipeInformation200ResponseNutritionWeightPerServing)`

SetWeightPerServing sets WeightPerServing field to given value.

### HasWeightPerServing

`func (o *RetrieveRecipeInformation200ResponseNutrition) HasWeightPerServing() bool`

HasWeightPerServing returns a boolean if a field has been set.

### GetCaloricBreakdown

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetCaloricBreakdown() RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetCaloricBreakdownOk() (*RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *RetrieveRecipeInformation200ResponseNutrition) SetCaloricBreakdown(v RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.

### HasCaloricBreakdown

`func (o *RetrieveRecipeInformation200ResponseNutrition) HasCaloricBreakdown() bool`

HasCaloricBreakdown returns a boolean if a field has been set.

### GetFlavonoids

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetFlavonoids() []RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner`

GetFlavonoids returns the Flavonoids field if non-nil, zero value otherwise.

### GetFlavonoidsOk

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetFlavonoidsOk() (*[]RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner, bool)`

GetFlavonoidsOk returns a tuple with the Flavonoids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlavonoids

`func (o *RetrieveRecipeInformation200ResponseNutrition) SetFlavonoids(v []RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner)`

SetFlavonoids sets Flavonoids field to given value.

### HasFlavonoids

`func (o *RetrieveRecipeInformation200ResponseNutrition) HasFlavonoids() bool`

HasFlavonoids returns a boolean if a field has been set.

### GetIngredientBreakdown

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetIngredientBreakdown() []RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner`

GetIngredientBreakdown returns the IngredientBreakdown field if non-nil, zero value otherwise.

### GetIngredientBreakdownOk

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetIngredientBreakdownOk() (*[]RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner, bool)`

GetIngredientBreakdownOk returns a tuple with the IngredientBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientBreakdown

`func (o *RetrieveRecipeInformation200ResponseNutrition) SetIngredientBreakdown(v []RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner)`

SetIngredientBreakdown sets IngredientBreakdown field to given value.

### HasIngredientBreakdown

`func (o *RetrieveRecipeInformation200ResponseNutrition) HasIngredientBreakdown() bool`

HasIngredientBreakdown returns a boolean if a field has been set.

### GetProperties

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetProperties() []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetPropertiesOk() (*[]SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RetrieveRecipeInformation200ResponseNutrition) SetProperties(v []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *RetrieveRecipeInformation200ResponseNutrition) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetNutrients

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetNutrients() []RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *RetrieveRecipeInformation200ResponseNutrition) GetNutrientsOk() (*[]RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *RetrieveRecipeInformation200ResponseNutrition) SetNutrients(v []RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *RetrieveRecipeInformation200ResponseNutrition) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


