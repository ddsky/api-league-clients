# SearchDrinksAPI200ResponseDrinksInnerNutrition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WeightPerServing** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 
**CaloricBreakdown** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**Flavonoids** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**IngredientBreakdown** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.md) |  | [optional] 
**Properties** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**Nutrients** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Methods

### NewSearchDrinksAPI200ResponseDrinksInnerNutrition

`func NewSearchDrinksAPI200ResponseDrinksInnerNutrition() *SearchDrinksAPI200ResponseDrinksInnerNutrition`

NewSearchDrinksAPI200ResponseDrinksInnerNutrition instantiates a new SearchDrinksAPI200ResponseDrinksInnerNutrition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchDrinksAPI200ResponseDrinksInnerNutritionWithDefaults

`func NewSearchDrinksAPI200ResponseDrinksInnerNutritionWithDefaults() *SearchDrinksAPI200ResponseDrinksInnerNutrition`

NewSearchDrinksAPI200ResponseDrinksInnerNutritionWithDefaults instantiates a new SearchDrinksAPI200ResponseDrinksInnerNutrition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetWeightPerServing

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetWeightPerServing() SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetWeightPerServingOk() (*SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) SetWeightPerServing(v SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing)`

SetWeightPerServing sets WeightPerServing field to given value.

### HasWeightPerServing

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) HasWeightPerServing() bool`

HasWeightPerServing returns a boolean if a field has been set.

### GetCaloricBreakdown

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetCaloricBreakdown() SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetCaloricBreakdownOk() (*SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) SetCaloricBreakdown(v SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.

### HasCaloricBreakdown

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) HasCaloricBreakdown() bool`

HasCaloricBreakdown returns a boolean if a field has been set.

### GetFlavonoids

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetFlavonoids() []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner`

GetFlavonoids returns the Flavonoids field if non-nil, zero value otherwise.

### GetFlavonoidsOk

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetFlavonoidsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner, bool)`

GetFlavonoidsOk returns a tuple with the Flavonoids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlavonoids

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) SetFlavonoids(v []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner)`

SetFlavonoids sets Flavonoids field to given value.

### HasFlavonoids

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) HasFlavonoids() bool`

HasFlavonoids returns a boolean if a field has been set.

### GetIngredientBreakdown

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetIngredientBreakdown() []SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner`

GetIngredientBreakdown returns the IngredientBreakdown field if non-nil, zero value otherwise.

### GetIngredientBreakdownOk

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetIngredientBreakdownOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner, bool)`

GetIngredientBreakdownOk returns a tuple with the IngredientBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientBreakdown

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) SetIngredientBreakdown(v []SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner)`

SetIngredientBreakdown sets IngredientBreakdown field to given value.

### HasIngredientBreakdown

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) HasIngredientBreakdown() bool`

HasIngredientBreakdown returns a boolean if a field has been set.

### GetProperties

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetProperties() []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetPropertiesOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) SetProperties(v []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetNutrients

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetNutrients() []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) GetNutrientsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) SetNutrients(v []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *SearchDrinksAPI200ResponseDrinksInnerNutrition) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


