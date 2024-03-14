# RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **float32** |  | [optional] 
**Unit** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Nutrients** | Pointer to [**[]RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 

## Methods

### NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner

`func NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner() *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner`

NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner instantiates a new RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerWithDefaults

`func NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerWithDefaults() *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner`

NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetAmount

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### GetUnit

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetUnit(v string)`

SetUnit sets Unit field to given value.

### HasUnit

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) HasUnit() bool`

HasUnit returns a boolean if a field has been set.

### SetUnitNil

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetUnitNil(b bool)`

 SetUnitNil sets the value for Unit to be an explicit nil

### UnsetUnit
`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) UnsetUnit()`

UnsetUnit ensures that no value is present for Unit, not even an explicit nil
### GetId

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetNutrients

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetNutrients() []RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) GetNutrientsOk() (*[]RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) SetNutrients(v []RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner)`

SetNutrients sets Nutrients field to given value.

### HasNutrients

`func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) HasNutrients() bool`

HasNutrients returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


