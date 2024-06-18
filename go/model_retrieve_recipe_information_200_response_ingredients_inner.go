/*
API League

API League is a Hub for World Class APIs.

API version: 1.3.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseIngredientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseIngredientsInner{}

// RetrieveRecipeInformation200ResponseIngredientsInner struct for RetrieveRecipeInformation200ResponseIngredientsInner
type RetrieveRecipeInformation200ResponseIngredientsInner struct {
	Image NullableString `json:"image,omitempty"`
	NameClean NullableString `json:"name_clean,omitempty"`
	Amount *float32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
	Measures *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures `json:"measures,omitempty"`
	Original NullableString `json:"original,omitempty"`
	Meta []*string `json:"meta,omitempty"`
	OriginalName NullableString `json:"original_name,omitempty"`
	Name NullableString `json:"name,omitempty"`
	Id *int32 `json:"id,omitempty"`
	Aisle NullableString `json:"aisle,omitempty"`
	Consistency NullableString `json:"consistency,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseIngredientsInner instantiates a new RetrieveRecipeInformation200ResponseIngredientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseIngredientsInner() *RetrieveRecipeInformation200ResponseIngredientsInner {
	this := RetrieveRecipeInformation200ResponseIngredientsInner{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseIngredientsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseIngredientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseIngredientsInnerWithDefaults() *RetrieveRecipeInformation200ResponseIngredientsInner {
	this := RetrieveRecipeInformation200ResponseIngredientsInner{}
	return &this
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetImage() {
	o.Image.Unset()
}

// GetNameClean returns the NameClean field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetNameClean() string {
	if o == nil || IsNil(o.NameClean.Get()) {
		var ret string
		return ret
	}
	return *o.NameClean.Get()
}

// GetNameCleanOk returns a tuple with the NameClean field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetNameCleanOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.NameClean.Get(), o.NameClean.IsSet()
}

// HasNameClean returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasNameClean() bool {
	if o != nil && o.NameClean.IsSet() {
		return true
	}

	return false
}

// SetNameClean gets a reference to the given NullableString and assigns it to the NameClean field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetNameClean(v string) {
	o.NameClean.Set(&v)
}
// SetNameCleanNil sets the value for NameClean to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetNameCleanNil() {
	o.NameClean.Set(nil)
}

// UnsetNameClean ensures that no value is present for NameClean, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetNameClean() {
	o.NameClean.Unset()
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAmount() float32 {
	if o == nil || IsNil(o.Amount) {
		var ret float32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAmountOk() (*float32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float32 and assigns it to the Amount field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetAmount(v float32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetUnit() {
	o.Unit.Unset()
}

// GetMeasures returns the Measures field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMeasures() RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
	if o == nil || IsNil(o.Measures) {
		var ret RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
		return ret
	}
	return *o.Measures
}

// GetMeasuresOk returns a tuple with the Measures field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMeasuresOk() (*RetrieveRecipeInformation200ResponseIngredientsInnerMeasures, bool) {
	if o == nil || IsNil(o.Measures) {
		return nil, false
	}
	return o.Measures, true
}

// HasMeasures returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasMeasures() bool {
	if o != nil && !IsNil(o.Measures) {
		return true
	}

	return false
}

// SetMeasures gets a reference to the given RetrieveRecipeInformation200ResponseIngredientsInnerMeasures and assigns it to the Measures field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetMeasures(v RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) {
	o.Measures = &v
}

// GetOriginal returns the Original field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginal() string {
	if o == nil || IsNil(o.Original.Get()) {
		var ret string
		return ret
	}
	return *o.Original.Get()
}

// GetOriginalOk returns a tuple with the Original field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Original.Get(), o.Original.IsSet()
}

// HasOriginal returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasOriginal() bool {
	if o != nil && o.Original.IsSet() {
		return true
	}

	return false
}

// SetOriginal gets a reference to the given NullableString and assigns it to the Original field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginal(v string) {
	o.Original.Set(&v)
}
// SetOriginalNil sets the value for Original to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginalNil() {
	o.Original.Set(nil)
}

// UnsetOriginal ensures that no value is present for Original, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetOriginal() {
	o.Original.Unset()
}

// GetMeta returns the Meta field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMeta() []*string {
	if o == nil || IsNil(o.Meta) {
		var ret []*string
		return ret
	}
	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetMetaOk() ([]*string, bool) {
	if o == nil || IsNil(o.Meta) {
		return nil, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasMeta() bool {
	if o != nil && !IsNil(o.Meta) {
		return true
	}

	return false
}

// SetMeta gets a reference to the given []*string and assigns it to the Meta field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetMeta(v []*string) {
	o.Meta = v
}

// GetOriginalName returns the OriginalName field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginalName() string {
	if o == nil || IsNil(o.OriginalName.Get()) {
		var ret string
		return ret
	}
	return *o.OriginalName.Get()
}

// GetOriginalNameOk returns a tuple with the OriginalName field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetOriginalNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.OriginalName.Get(), o.OriginalName.IsSet()
}

// HasOriginalName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasOriginalName() bool {
	if o != nil && o.OriginalName.IsSet() {
		return true
	}

	return false
}

// SetOriginalName gets a reference to the given NullableString and assigns it to the OriginalName field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginalName(v string) {
	o.OriginalName.Set(&v)
}
// SetOriginalNameNil sets the value for OriginalName to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetOriginalNameNil() {
	o.OriginalName.Set(nil)
}

// UnsetOriginalName ensures that no value is present for OriginalName, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetOriginalName() {
	o.OriginalName.Unset()
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetName() {
	o.Name.Unset()
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetId(v int32) {
	o.Id = &v
}

// GetAisle returns the Aisle field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAisle() string {
	if o == nil || IsNil(o.Aisle.Get()) {
		var ret string
		return ret
	}
	return *o.Aisle.Get()
}

// GetAisleOk returns a tuple with the Aisle field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetAisleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Aisle.Get(), o.Aisle.IsSet()
}

// HasAisle returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasAisle() bool {
	if o != nil && o.Aisle.IsSet() {
		return true
	}

	return false
}

// SetAisle gets a reference to the given NullableString and assigns it to the Aisle field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetAisle(v string) {
	o.Aisle.Set(&v)
}
// SetAisleNil sets the value for Aisle to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetAisleNil() {
	o.Aisle.Set(nil)
}

// UnsetAisle ensures that no value is present for Aisle, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetAisle() {
	o.Aisle.Unset()
}

// GetConsistency returns the Consistency field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetConsistency() string {
	if o == nil || IsNil(o.Consistency.Get()) {
		var ret string
		return ret
	}
	return *o.Consistency.Get()
}

// GetConsistencyOk returns a tuple with the Consistency field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) GetConsistencyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Consistency.Get(), o.Consistency.IsSet()
}

// HasConsistency returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) HasConsistency() bool {
	if o != nil && o.Consistency.IsSet() {
		return true
	}

	return false
}

// SetConsistency gets a reference to the given NullableString and assigns it to the Consistency field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetConsistency(v string) {
	o.Consistency.Set(&v)
}
// SetConsistencyNil sets the value for Consistency to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) SetConsistencyNil() {
	o.Consistency.Set(nil)
}

// UnsetConsistency ensures that no value is present for Consistency, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseIngredientsInner) UnsetConsistency() {
	o.Consistency.Unset()
}

func (o RetrieveRecipeInformation200ResponseIngredientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseIngredientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if o.NameClean.IsSet() {
		toSerialize["name_clean"] = o.NameClean.Get()
	}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.Unit.IsSet() {
		toSerialize["unit"] = o.Unit.Get()
	}
	if !IsNil(o.Measures) {
		toSerialize["measures"] = o.Measures
	}
	if o.Original.IsSet() {
		toSerialize["original"] = o.Original.Get()
	}
	if !IsNil(o.Meta) {
		toSerialize["meta"] = o.Meta
	}
	if o.OriginalName.IsSet() {
		toSerialize["original_name"] = o.OriginalName.Get()
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if o.Aisle.IsSet() {
		toSerialize["aisle"] = o.Aisle.Get()
	}
	if o.Consistency.IsSet() {
		toSerialize["consistency"] = o.Consistency.Get()
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseIngredientsInner struct {
	value *RetrieveRecipeInformation200ResponseIngredientsInner
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseIngredientsInner) Get() *RetrieveRecipeInformation200ResponseIngredientsInner {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseIngredientsInner) Set(val *RetrieveRecipeInformation200ResponseIngredientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseIngredientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseIngredientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseIngredientsInner(val *RetrieveRecipeInformation200ResponseIngredientsInner) *NullableRetrieveRecipeInformation200ResponseIngredientsInner {
	return &NullableRetrieveRecipeInformation200ResponseIngredientsInner{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseIngredientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseIngredientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


