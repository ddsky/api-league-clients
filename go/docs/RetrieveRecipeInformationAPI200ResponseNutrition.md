# RetrieveRecipeInformationAPI200ResponseNutrition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WeightPerServing** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 
**CaloricBreakdown** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**Flavonoids** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**IngredientBreakdown** | Pointer to [**[]RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner**](RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] 
**Properties** | Pointer to [**[]SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**Nutrients** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Methods

### NewRetrieveRecipeInformationAPI200ResponseNutrition

`func NewRetrieveRecipeInformationAPI200ResponseNutrition() *RetrieveRecipeInformationAPI200ResponseNutrition`

NewRetrieveRecipeInformationAPI200ResponseNutrition instantiates a new RetrieveRecipeInformationAPI200ResponseNutrition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformationAPI200ResponseNutritionWithDefaults

`func NewRetrieveRecipeInformationAPI200ResponseNutritionWithDefaults() *RetrieveRecipeInformationAPI200ResponseNutrition`

NewRetrieveRecipeInformationAPI200ResponseNutritionWithDefaults instantiates a new RetrieveRecipeInformationAPI200ResponseNutrition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetWeightPerServing

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetWeightPerServing() SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetWeightPerServingOk() (*SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) SetWeightPerServing(v SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing)`

SetWeightPerServing sets WeightPerServing field to given value.

### HasWeightPerServing

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) HasWeightPerServing() bool`

HasWeightPerServing returns a boolean if a field has been set.

### GetCaloricBreakdown

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetCaloricBreakdown() SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetCaloricBreakdownOk() (*SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) SetCaloricBreakdown(v SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.

### HasCaloricBreakdown

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) HasCaloricBreakdown() bool`

HasCaloricBreakdown returns a boolean if a field has been set.

### GetFlavonoids

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetFlavonoids() []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner`

GetFlavonoids returns the Flavonoids field if non-nil, zero value otherwise.

### GetFlavonoidsOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetFlavonoidsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner, bool)`

GetFlavonoidsOk returns a tuple with the Flavonoids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlavonoids

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) SetFlavonoids(v []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner)`

SetFlavonoids sets Flavonoids field to given value.

### HasFlavonoids

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) HasFlavonoids() bool`

HasFlavonoids returns a boolean if a field has been set.

### GetIngredientBreakdown

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetIngredientBreakdown() []RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner`

GetIngredientBreakdown returns the IngredientBreakdown field if non-nil, zero value otherwise.

### GetIngredientBreakdownOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetIngredientBreakdownOk() (*[]RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner, bool)`

GetIngredientBreakdownOk returns a tuple with the IngredientBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientBreakdown

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) SetIngredientBreakdown(v []RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner)`

SetIngredientBreakdown sets IngredientBreakdown field to given value.

### HasIngredientBreakdown

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) HasIngredientBreakdown() bool`

HasIngredientBreakdown returns a boolean if a field has been set.

### GetProperties

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetProperties() []SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetPropertiesOk() (*[]SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) SetProperties(v []SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetNutrients

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetNutrients() []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) GetNutrientsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) SetNutrients(v []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *RetrieveRecipeInformationAPI200ResponseNutrition) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


