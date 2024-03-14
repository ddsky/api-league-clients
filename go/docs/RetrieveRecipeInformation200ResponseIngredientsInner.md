# RetrieveRecipeInformation200ResponseIngredientsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Image** | Pointer to **NullableString** |  | [optional] 
**NameClean** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **float32** |  | [optional] 
**Unit** | Pointer to **NullableString** |  | [optional] 
**Measures** | Pointer to [**RetrieveRecipeInformation200ResponseIngredientsInnerMeasures**](RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.md) |  | [optional] 
**Original** | Pointer to **NullableString** |  | [optional] 
**Meta** | Pointer to **[]string** |  | [optional] 
**OriginalName** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Aisle** | Pointer to **NullableString** |  | [optional] 
**Consistency** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewRetrieveRecipeInformation200ResponseIngredientsInner

`func NewRetrieveRecipeInformation200ResponseIngredientsInner() *RetrieveRecipeInformation200ResponseIngredientsInner`

NewRetrieveRecipeInformation200ResponseIngredientsInner instantiates a new RetrieveRecipeInformation200ResponseIngredientsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformation200ResponseIngredientsInnerWithDefaults

`func NewRetrieveRecipeInformation200ResponseIngredientsInnerWithDefaults() *RetrieveRecipeInformation200ResponseIngredientsInner`

NewRetrieveRecipeInformation200ResponseIngredientsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseIngredientsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetImage

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasImage() bool`

HasImage returns a boolean if a field has been set.

### SetImageNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetNameClean

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetNameClean() string`

GetNameClean returns the NameClean field if non-nil, zero value otherwise.

### GetNameCleanOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetNameCleanOk() (*string, bool)`

GetNameCleanOk returns a tuple with the NameClean field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNameClean

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetNameClean(v string)`

SetNameClean sets NameClean field to given value.

### HasNameClean

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasNameClean() bool`

HasNameClean returns a boolean if a field has been set.

### SetNameCleanNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetNameCleanNil(b bool)`

 SetNameCleanNil sets the value for NameClean to be an explicit nil

### UnsetNameClean
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetNameClean()`

UnsetNameClean ensures that no value is present for NameClean, not even an explicit nil
### GetAmount

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### GetUnit

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetUnit(v string)`

SetUnit sets Unit field to given value.

### HasUnit

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasUnit() bool`

HasUnit returns a boolean if a field has been set.

### SetUnitNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetUnitNil(b bool)`

 SetUnitNil sets the value for Unit to be an explicit nil

### UnsetUnit
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetUnit()`

UnsetUnit ensures that no value is present for Unit, not even an explicit nil
### GetMeasures

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMeasures() RetrieveRecipeInformation200ResponseIngredientsInnerMeasures`

GetMeasures returns the Measures field if non-nil, zero value otherwise.

### GetMeasuresOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMeasuresOk() (*RetrieveRecipeInformation200ResponseIngredientsInnerMeasures, bool)`

GetMeasuresOk returns a tuple with the Measures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeasures

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetMeasures(v RetrieveRecipeInformation200ResponseIngredientsInnerMeasures)`

SetMeasures sets Measures field to given value.

### HasMeasures

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasMeasures() bool`

HasMeasures returns a boolean if a field has been set.

### GetOriginal

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginal(v string)`

SetOriginal sets Original field to given value.

### HasOriginal

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasOriginal() bool`

HasOriginal returns a boolean if a field has been set.

### SetOriginalNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginalNil(b bool)`

 SetOriginalNil sets the value for Original to be an explicit nil

### UnsetOriginal
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetOriginal()`

UnsetOriginal ensures that no value is present for Original, not even an explicit nil
### GetMeta

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMeta() []*string`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMetaOk() (*[]*string, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetMeta(v []*string)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetOriginalName

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.

### HasOriginalName

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasOriginalName() bool`

HasOriginalName returns a boolean if a field has been set.

### SetOriginalNameNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginalNameNil(b bool)`

 SetOriginalNameNil sets the value for OriginalName to be an explicit nil

### UnsetOriginalName
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetOriginalName()`

UnsetOriginalName ensures that no value is present for OriginalName, not even an explicit nil
### GetName

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetId

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAisle

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetAisle(v string)`

SetAisle sets Aisle field to given value.

### HasAisle

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasAisle() bool`

HasAisle returns a boolean if a field has been set.

### SetAisleNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetAisleNil(b bool)`

 SetAisleNil sets the value for Aisle to be an explicit nil

### UnsetAisle
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetAisle()`

UnsetAisle ensures that no value is present for Aisle, not even an explicit nil
### GetConsistency

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetConsistency() string`

GetConsistency returns the Consistency field if non-nil, zero value otherwise.

### GetConsistencyOk

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetConsistencyOk() (*string, bool)`

GetConsistencyOk returns a tuple with the Consistency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsistency

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetConsistency(v string)`

SetConsistency sets Consistency field to given value.

### HasConsistency

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasConsistency() bool`

HasConsistency returns a boolean if a field has been set.

### SetConsistencyNil

`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetConsistencyNil(b bool)`

 SetConsistencyNil sets the value for Consistency to be an explicit nil

### UnsetConsistency
`func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetConsistency()`

UnsetConsistency ensures that no value is present for Consistency, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


