# SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **int32** |  | [optional] 
**Unit** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Nutrients** | Pointer to [**[]SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner**](SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 

## Methods

### NewSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner

`func NewSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner() *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner`

NewSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner instantiates a new SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerWithDefaults

`func NewSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerWithDefaults() *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner`

NewSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerWithDefaults instantiates a new SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetAmount

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetAmount() int32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetAmountOk() (*int32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetAmount(v int32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### GetUnit

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetUnit(v string)`

SetUnit sets Unit field to given value.

### HasUnit

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) HasUnit() bool`

HasUnit returns a boolean if a field has been set.

### SetUnitNil

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetUnitNil(b bool)`

 SetUnitNil sets the value for Unit to be an explicit nil

### UnsetUnit
`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) UnsetUnit()`

UnsetUnit ensures that no value is present for Unit, not even an explicit nil
### GetId

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetNutrients

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetNutrients() []SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) GetNutrientsOk() (*[]SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) SetNutrients(v []SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


