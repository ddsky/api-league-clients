/*
API League

API League is a Hub for World Class APIs.

API version: 1.0.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner{}

// RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner struct for RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
type RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner struct {
	Name NullableString `json:"name,omitempty"`
	Amount *int32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner instantiates a new RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner() *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
	this := RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseNutritionFlavonoidsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseNutritionFlavonoidsInnerWithDefaults() *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
	this := RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) UnsetName() {
	o.Name.Unset()
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) GetAmount() int32 {
	if o == nil || IsNil(o.Amount) {
		var ret int32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) GetAmountOk() (*int32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given int32 and assigns it to the Amount field.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) SetAmount(v int32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) UnsetUnit() {
	o.Unit.Unset()
}

func (o RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.Unit.IsSet() {
		toSerialize["unit"] = o.Unit.Get()
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner struct {
	value *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) Get() *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) Set(val *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner(val *RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) *NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
	return &NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


