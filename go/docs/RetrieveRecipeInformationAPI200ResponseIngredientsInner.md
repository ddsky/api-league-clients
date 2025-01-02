# RetrieveRecipeInformationAPI200ResponseIngredientsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Image** | Pointer to **NullableString** |  | [optional] 
**NameClean** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **float32** |  | [optional] 
**Unit** | Pointer to **NullableString** |  | [optional] 
**Measures** | Pointer to [**RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures**](RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.md) |  | [optional] 
**Original** | Pointer to **NullableString** |  | [optional] 
**Meta** | Pointer to **[]string** |  | [optional] 
**OriginalName** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Aisle** | Pointer to **NullableString** |  | [optional] 
**Consistency** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewRetrieveRecipeInformationAPI200ResponseIngredientsInner

`func NewRetrieveRecipeInformationAPI200ResponseIngredientsInner() *RetrieveRecipeInformationAPI200ResponseIngredientsInner`

NewRetrieveRecipeInformationAPI200ResponseIngredientsInner instantiates a new RetrieveRecipeInformationAPI200ResponseIngredientsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformationAPI200ResponseIngredientsInnerWithDefaults

`func NewRetrieveRecipeInformationAPI200ResponseIngredientsInnerWithDefaults() *RetrieveRecipeInformationAPI200ResponseIngredientsInner`

NewRetrieveRecipeInformationAPI200ResponseIngredientsInnerWithDefaults instantiates a new RetrieveRecipeInformationAPI200ResponseIngredientsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetImage

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasImage() bool`

HasImage returns a boolean if a field has been set.

### SetImageNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetNameClean

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetNameClean() string`

GetNameClean returns the NameClean field if non-nil, zero value otherwise.

### GetNameCleanOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetNameCleanOk() (*string, bool)`

GetNameCleanOk returns a tuple with the NameClean field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNameClean

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetNameClean(v string)`

SetNameClean sets NameClean field to given value.

### HasNameClean

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasNameClean() bool`

HasNameClean returns a boolean if a field has been set.

### SetNameCleanNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetNameCleanNil(b bool)`

 SetNameCleanNil sets the value for NameClean to be an explicit nil

### UnsetNameClean
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetNameClean()`

UnsetNameClean ensures that no value is present for NameClean, not even an explicit nil
### GetAmount

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### GetUnit

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetUnit(v string)`

SetUnit sets Unit field to given value.

### HasUnit

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasUnit() bool`

HasUnit returns a boolean if a field has been set.

### SetUnitNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetUnitNil(b bool)`

 SetUnitNil sets the value for Unit to be an explicit nil

### UnsetUnit
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetUnit()`

UnsetUnit ensures that no value is present for Unit, not even an explicit nil
### GetMeasures

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetMeasures() RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures`

GetMeasures returns the Measures field if non-nil, zero value otherwise.

### GetMeasuresOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetMeasuresOk() (*RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures, bool)`

GetMeasuresOk returns a tuple with the Measures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeasures

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetMeasures(v RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures)`

SetMeasures sets Measures field to given value.

### HasMeasures

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasMeasures() bool`

HasMeasures returns a boolean if a field has been set.

### GetOriginal

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetOriginal(v string)`

SetOriginal sets Original field to given value.

### HasOriginal

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasOriginal() bool`

HasOriginal returns a boolean if a field has been set.

### SetOriginalNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetOriginalNil(b bool)`

 SetOriginalNil sets the value for Original to be an explicit nil

### UnsetOriginal
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetOriginal()`

UnsetOriginal ensures that no value is present for Original, not even an explicit nil
### GetMeta

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetMeta() []*string`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetMetaOk() (*[]*string, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetMeta(v []*string)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetOriginalName

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.

### HasOriginalName

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasOriginalName() bool`

HasOriginalName returns a boolean if a field has been set.

### SetOriginalNameNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetOriginalNameNil(b bool)`

 SetOriginalNameNil sets the value for OriginalName to be an explicit nil

### UnsetOriginalName
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetOriginalName()`

UnsetOriginalName ensures that no value is present for OriginalName, not even an explicit nil
### GetName

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetId

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAisle

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetAisle(v string)`

SetAisle sets Aisle field to given value.

### HasAisle

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasAisle() bool`

HasAisle returns a boolean if a field has been set.

### SetAisleNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetAisleNil(b bool)`

 SetAisleNil sets the value for Aisle to be an explicit nil

### UnsetAisle
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetAisle()`

UnsetAisle ensures that no value is present for Aisle, not even an explicit nil
### GetConsistency

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetConsistency() string`

GetConsistency returns the Consistency field if non-nil, zero value otherwise.

### GetConsistencyOk

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) GetConsistencyOk() (*string, bool)`

GetConsistencyOk returns a tuple with the Consistency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsistency

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetConsistency(v string)`

SetConsistency sets Consistency field to given value.

### HasConsistency

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) HasConsistency() bool`

HasConsistency returns a boolean if a field has been set.

### SetConsistencyNil

`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) SetConsistencyNil(b bool)`

 SetConsistencyNil sets the value for Consistency to be an explicit nil

### UnsetConsistency
`func (o *RetrieveRecipeInformationAPI200ResponseIngredientsInner) UnsetConsistency()`

UnsetConsistency ensures that no value is present for Consistency, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


