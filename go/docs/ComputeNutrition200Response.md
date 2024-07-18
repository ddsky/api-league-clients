# ComputeNutrition200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nutrients** | Pointer to [**[]SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 
**Properties** | Pointer to [**[]SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**Flavonoids** | Pointer to [**[]SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**IngredientBreakdown** | Pointer to [**[]ComputeNutrition200ResponseIngredientBreakdownInner**](ComputeNutrition200ResponseIngredientBreakdownInner.md) |  | [optional] 
**CaloricBreakdown** | Pointer to [**SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**WeightPerServing** | Pointer to [**SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 

## Methods

### NewComputeNutrition200Response

`func NewComputeNutrition200Response() *ComputeNutrition200Response`

NewComputeNutrition200Response instantiates a new ComputeNutrition200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewComputeNutrition200ResponseWithDefaults

`func NewComputeNutrition200ResponseWithDefaults() *ComputeNutrition200Response`

NewComputeNutrition200ResponseWithDefaults instantiates a new ComputeNutrition200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNutrients

`func (o *ComputeNutrition200Response) GetNutrients() []SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *ComputeNutrition200Response) GetNutrientsOk() (*[]SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *ComputeNutrition200Response) SetNutrients(v []SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *ComputeNutrition200Response) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.

### GetProperties

`func (o *ComputeNutrition200Response) GetProperties() []SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *ComputeNutrition200Response) GetPropertiesOk() (*[]SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *ComputeNutrition200Response) SetProperties(v []SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *ComputeNutrition200Response) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetFlavonoids

`func (o *ComputeNutrition200Response) GetFlavonoids() []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner`

GetFlavonoids returns the Flavonoids field if non-nil, zero value otherwise.

### GetFlavonoidsOk

`func (o *ComputeNutrition200Response) GetFlavonoidsOk() (*[]SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner, bool)`

GetFlavonoidsOk returns a tuple with the Flavonoids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlavonoids

`func (o *ComputeNutrition200Response) SetFlavonoids(v []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner)`

SetFlavonoids sets Flavonoids field to given value.

### HasFlavonoids

`func (o *ComputeNutrition200Response) HasFlavonoids() bool`

HasFlavonoids returns a boolean if a field has been set.

### GetIngredientBreakdown

`func (o *ComputeNutrition200Response) GetIngredientBreakdown() []ComputeNutrition200ResponseIngredientBreakdownInner`

GetIngredientBreakdown returns the IngredientBreakdown field if non-nil, zero value otherwise.

### GetIngredientBreakdownOk

`func (o *ComputeNutrition200Response) GetIngredientBreakdownOk() (*[]ComputeNutrition200ResponseIngredientBreakdownInner, bool)`

GetIngredientBreakdownOk returns a tuple with the IngredientBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientBreakdown

`func (o *ComputeNutrition200Response) SetIngredientBreakdown(v []ComputeNutrition200ResponseIngredientBreakdownInner)`

SetIngredientBreakdown sets IngredientBreakdown field to given value.

### HasIngredientBreakdown

`func (o *ComputeNutrition200Response) HasIngredientBreakdown() bool`

HasIngredientBreakdown returns a boolean if a field has been set.

### GetCaloricBreakdown

`func (o *ComputeNutrition200Response) GetCaloricBreakdown() SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *ComputeNutrition200Response) GetCaloricBreakdownOk() (*SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *ComputeNutrition200Response) SetCaloricBreakdown(v SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.

### HasCaloricBreakdown

`func (o *ComputeNutrition200Response) HasCaloricBreakdown() bool`

HasCaloricBreakdown returns a boolean if a field has been set.

### GetWeightPerServing

`func (o *ComputeNutrition200Response) GetWeightPerServing() SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *ComputeNutrition200Response) GetWeightPerServingOk() (*SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *ComputeNutrition200Response) SetWeightPerServing(v SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing)`

SetWeightPerServing sets WeightPerServing field to given value.

### HasWeightPerServing

`func (o *ComputeNutrition200Response) HasWeightPerServing() bool`

HasWeightPerServing returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


