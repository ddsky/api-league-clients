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

// checks if the RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner{}

// RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner struct for RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
type RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner struct {
	Name NullableString `json:"name,omitempty"`
	PercentOfDailyNeeds *float32 `json:"percent_of_daily_needs,omitempty"`
	Amount *float32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner instantiates a new RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner() *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
	this := RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInnerWithDefaults() *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
	this := RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) UnsetName() {
	o.Name.Unset()
}

// GetPercentOfDailyNeeds returns the PercentOfDailyNeeds field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetPercentOfDailyNeeds() float32 {
	if o == nil || IsNil(o.PercentOfDailyNeeds) {
		var ret float32
		return ret
	}
	return *o.PercentOfDailyNeeds
}

// GetPercentOfDailyNeedsOk returns a tuple with the PercentOfDailyNeeds field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetPercentOfDailyNeedsOk() (*float32, bool) {
	if o == nil || IsNil(o.PercentOfDailyNeeds) {
		return nil, false
	}
	return o.PercentOfDailyNeeds, true
}

// HasPercentOfDailyNeeds returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) HasPercentOfDailyNeeds() bool {
	if o != nil && !IsNil(o.PercentOfDailyNeeds) {
		return true
	}

	return false
}

// SetPercentOfDailyNeeds gets a reference to the given float32 and assigns it to the PercentOfDailyNeeds field.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) SetPercentOfDailyNeeds(v float32) {
	o.PercentOfDailyNeeds = &v
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetAmount() float32 {
	if o == nil || IsNil(o.Amount) {
		var ret float32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetAmountOk() (*float32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float32 and assigns it to the Amount field.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) SetAmount(v float32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) UnsetUnit() {
	o.Unit.Unset()
}

func (o RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) ToMap() (map[string]interface{}, error) {
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

type NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner struct {
	value *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) Get() *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) Set(val *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner(val *RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) *NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
	return &NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


