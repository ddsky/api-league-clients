# RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **float32** |  | [optional] 
**Unit** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Nutrients** | Pointer to [**[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Methods

### NewRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner

`func NewRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner() *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner`

NewRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner instantiates a new RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerWithDefaults

`func NewRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerWithDefaults() *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner`

NewRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerWithDefaults instantiates a new RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetAmount

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### GetUnit

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetUnit(v string)`

SetUnit sets Unit field to given value.

### HasUnit

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) HasUnit() bool`

HasUnit returns a boolean if a field has been set.

### SetUnitNil

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetUnitNil(b bool)`

 SetUnitNil sets the value for Unit to be an explicit nil

### UnsetUnit
`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) UnsetUnit()`

UnsetUnit ensures that no value is present for Unit, not even an explicit nil
### GetId

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetNutrients

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetNutrients() []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) GetNutrientsOk() (*[]SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) SetNutrients(v []SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


