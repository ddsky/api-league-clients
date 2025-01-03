/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.4
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner{}

// SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner struct for SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner
type SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner struct {
	Number *int32 `json:"number,omitempty"`
	Ingredients []SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner `json:"ingredients,omitempty"`
	Equipment []*string `json:"equipment,omitempty"`
	Step NullableString `json:"step,omitempty"`
}

// NewSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner instantiates a new SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner() *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner {
	this := SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner{}
	return &this
}

// NewSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerWithDefaults instantiates a new SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerWithDefaults() *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner {
	this := SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner{}
	return &this
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetNumber() int32 {
	if o == nil || IsNil(o.Number) {
		var ret int32
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetNumberOk() (*int32, bool) {
	if o == nil || IsNil(o.Number) {
		return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) HasNumber() bool {
	if o != nil && !IsNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given int32 and assigns it to the Number field.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) SetNumber(v int32) {
	o.Number = &v
}

// GetIngredients returns the Ingredients field value if set, zero value otherwise.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetIngredients() []SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
	if o == nil || IsNil(o.Ingredients) {
		var ret []SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
		return ret
	}
	return o.Ingredients
}

// GetIngredientsOk returns a tuple with the Ingredients field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetIngredientsOk() ([]SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner, bool) {
	if o == nil || IsNil(o.Ingredients) {
		return nil, false
	}
	return o.Ingredients, true
}

// HasIngredients returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) HasIngredients() bool {
	if o != nil && !IsNil(o.Ingredients) {
		return true
	}

	return false
}

// SetIngredients gets a reference to the given []SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner and assigns it to the Ingredients field.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) SetIngredients(v []SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner) {
	o.Ingredients = v
}

// GetEquipment returns the Equipment field value if set, zero value otherwise.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetEquipment() []*string {
	if o == nil || IsNil(o.Equipment) {
		var ret []*string
		return ret
	}
	return o.Equipment
}

// GetEquipmentOk returns a tuple with the Equipment field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetEquipmentOk() ([]*string, bool) {
	if o == nil || IsNil(o.Equipment) {
		return nil, false
	}
	return o.Equipment, true
}

// HasEquipment returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) HasEquipment() bool {
	if o != nil && !IsNil(o.Equipment) {
		return true
	}

	return false
}

// SetEquipment gets a reference to the given []*string and assigns it to the Equipment field.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) SetEquipment(v []*string) {
	o.Equipment = v
}

// GetStep returns the Step field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetStep() string {
	if o == nil || IsNil(o.Step.Get()) {
		var ret string
		return ret
	}
	return *o.Step.Get()
}

// GetStepOk returns a tuple with the Step field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) GetStepOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Step.Get(), o.Step.IsSet()
}

// HasStep returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) HasStep() bool {
	if o != nil && o.Step.IsSet() {
		return true
	}

	return false
}

// SetStep gets a reference to the given NullableString and assigns it to the Step field.
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) SetStep(v string) {
	o.Step.Set(&v)
}
// SetStepNil sets the value for Step to be an explicit nil
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) SetStepNil() {
	o.Step.Set(nil)
}

// UnsetStep ensures that no value is present for Step, not even an explicit nil
func (o *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) UnsetStep() {
	o.Step.Unset()
}

func (o SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Number) {
		toSerialize["number"] = o.Number
	}
	if !IsNil(o.Ingredients) {
		toSerialize["ingredients"] = o.Ingredients
	}
	if !IsNil(o.Equipment) {
		toSerialize["equipment"] = o.Equipment
	}
	if o.Step.IsSet() {
		toSerialize["step"] = o.Step.Get()
	}
	return toSerialize, nil
}

type NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner struct {
	value *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner
	isSet bool
}

func (v NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) Get() *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner {
	return v.value
}

func (v *NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) Set(val *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner(val *SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) *NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner {
	return &NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner{value: val, isSet: true}
}

func (v NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


