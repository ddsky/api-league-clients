# ComputeNutritionAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nutrients** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 
**Properties** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**Flavonoids** | Pointer to [**[]SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**IngredientBreakdown** | Pointer to [**[]ComputeNutritionAPI200ResponseIngredientBreakdownInner**](ComputeNutritionAPI200ResponseIngredientBreakdownInner.md) |  | [optional] 
**CaloricBreakdown** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**WeightPerServing** | Pointer to [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 

## Methods

### NewComputeNutritionAPI200Response

`func NewComputeNutritionAPI200Response() *ComputeNutritionAPI200Response`

NewComputeNutritionAPI200Response instantiates a new ComputeNutritionAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewComputeNutritionAPI200ResponseWithDefaults

`func NewComputeNutritionAPI200ResponseWithDefaults() *ComputeNutritionAPI200Response`

NewComputeNutritionAPI200ResponseWithDefaults instantiates a new ComputeNutritionAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNutrients

`func (o *ComputeNutritionAPI200Response) GetNutrients() []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *ComputeNutritionAPI200Response) GetNutrientsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *ComputeNutritionAPI200Response) SetNutrients(v []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *ComputeNutritionAPI200Response) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.

### GetProperties

`func (o *ComputeNutritionAPI200Response) GetProperties() []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *ComputeNutritionAPI200Response) GetPropertiesOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *ComputeNutritionAPI200Response) SetProperties(v []SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner)`

SetProperties sets Properties field to given value.

### HasProperties

`func (o *ComputeNutritionAPI200Response) HasProperties() bool`

HasProperties returns a boolean if a field has been set.

### GetFlavonoids

`func (o *ComputeNutritionAPI200Response) GetFlavonoids() []SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner`

GetFlavonoids returns the Flavonoids field if non-nil, zero value otherwise.

### GetFlavonoidsOk

`func (o *ComputeNutritionAPI200Response) GetFlavonoidsOk() (*[]SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner, bool)`

GetFlavonoidsOk returns a tuple with the Flavonoids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFlavonoids

`func (o *ComputeNutritionAPI200Response) SetFlavonoids(v []SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner)`

SetFlavonoids sets Flavonoids field to given value.

### HasFlavonoids

`func (o *ComputeNutritionAPI200Response) HasFlavonoids() bool`

HasFlavonoids returns a boolean if a field has been set.

### GetIngredientBreakdown

`func (o *ComputeNutritionAPI200Response) GetIngredientBreakdown() []ComputeNutritionAPI200ResponseIngredientBreakdownInner`

GetIngredientBreakdown returns the IngredientBreakdown field if non-nil, zero value otherwise.

### GetIngredientBreakdownOk

`func (o *ComputeNutritionAPI200Response) GetIngredientBreakdownOk() (*[]ComputeNutritionAPI200ResponseIngredientBreakdownInner, bool)`

GetIngredientBreakdownOk returns a tuple with the IngredientBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientBreakdown

`func (o *ComputeNutritionAPI200Response) SetIngredientBreakdown(v []ComputeNutritionAPI200ResponseIngredientBreakdownInner)`

SetIngredientBreakdown sets IngredientBreakdown field to given value.

### HasIngredientBreakdown

`func (o *ComputeNutritionAPI200Response) HasIngredientBreakdown() bool`

HasIngredientBreakdown returns a boolean if a field has been set.

### GetCaloricBreakdown

`func (o *ComputeNutritionAPI200Response) GetCaloricBreakdown() SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *ComputeNutritionAPI200Response) GetCaloricBreakdownOk() (*SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *ComputeNutritionAPI200Response) SetCaloricBreakdown(v SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.

### HasCaloricBreakdown

`func (o *ComputeNutritionAPI200Response) HasCaloricBreakdown() bool`

HasCaloricBreakdown returns a boolean if a field has been set.

### GetWeightPerServing

`func (o *ComputeNutritionAPI200Response) GetWeightPerServing() SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *ComputeNutritionAPI200Response) GetWeightPerServingOk() (*SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *ComputeNutritionAPI200Response) SetWeightPerServing(v SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing)`

SetWeightPerServing sets WeightPerServing field to given value.

### HasWeightPerServing

`func (o *ComputeNutritionAPI200Response) HasWeightPerServing() bool`

HasWeightPerServing returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


