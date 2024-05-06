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

// checks if the ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner{}

// ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner struct for ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
type ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner struct {
	Name NullableString `json:"name,omitempty"`
	PercentOfDailyNeeds *int32 `json:"percent_of_daily_needs,omitempty"`
	Amount *int32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
}

// NewComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner instantiates a new ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner() *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
	this := ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner{}
	return &this
}

// NewComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInnerWithDefaults instantiates a new ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInnerWithDefaults() *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
	this := ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) UnsetName() {
	o.Name.Unset()
}

// GetPercentOfDailyNeeds returns the PercentOfDailyNeeds field value if set, zero value otherwise.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetPercentOfDailyNeeds() int32 {
	if o == nil || IsNil(o.PercentOfDailyNeeds) {
		var ret int32
		return ret
	}
	return *o.PercentOfDailyNeeds
}

// GetPercentOfDailyNeedsOk returns a tuple with the PercentOfDailyNeeds field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetPercentOfDailyNeedsOk() (*int32, bool) {
	if o == nil || IsNil(o.PercentOfDailyNeeds) {
		return nil, false
	}
	return o.PercentOfDailyNeeds, true
}

// HasPercentOfDailyNeeds returns a boolean if a field has been set.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) HasPercentOfDailyNeeds() bool {
	if o != nil && !IsNil(o.PercentOfDailyNeeds) {
		return true
	}

	return false
}

// SetPercentOfDailyNeeds gets a reference to the given int32 and assigns it to the PercentOfDailyNeeds field.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) SetPercentOfDailyNeeds(v int32) {
	o.PercentOfDailyNeeds = &v
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetAmount() int32 {
	if o == nil || IsNil(o.Amount) {
		var ret int32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetAmountOk() (*int32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given int32 and assigns it to the Amount field.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) SetAmount(v int32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) UnsetUnit() {
	o.Unit.Unset()
}

func (o ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.PercentOfDailyNeeds) {
		toSerialize["percent_of_daily_needs"] = o.PercentOfDailyNeeds
	}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.Unit.IsSet() {
		toSerialize["unit"] = o.Unit.Get()
	}
	return toSerialize, nil
}

type NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner struct {
	value *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
	isSet bool
}

func (v NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) Get() *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
	return v.value
}

func (v *NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) Set(val *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(val *ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) *NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
	return &NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner{value: val, isSet: true}
}

func (v NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


