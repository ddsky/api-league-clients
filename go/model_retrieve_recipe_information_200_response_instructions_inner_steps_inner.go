/*
API League

API League is a Hub for World Class APIs.

API version: 1.5.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner{}

// RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner struct for RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
type RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner struct {
	Number *int32 `json:"number,omitempty"`
	Ingredients []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner `json:"ingredients,omitempty"`
	Equipment []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner `json:"equipment,omitempty"`
	Step NullableString `json:"step,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner instantiates a new RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner() *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
	this := RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerWithDefaults() *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
	this := RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner{}
	return &this
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetNumber() int32 {
	if o == nil || IsNil(o.Number) {
		var ret int32
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetNumberOk() (*int32, bool) {
	if o == nil || IsNil(o.Number) {
		return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) HasNumber() bool {
	if o != nil && !IsNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given int32 and assigns it to the Number field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) SetNumber(v int32) {
	o.Number = &v
}

// GetIngredients returns the Ingredients field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetIngredients() []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
	if o == nil || IsNil(o.Ingredients) {
		var ret []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
		return ret
	}
	return o.Ingredients
}

// GetIngredientsOk returns a tuple with the Ingredients field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetIngredientsOk() ([]SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner, bool) {
	if o == nil || IsNil(o.Ingredients) {
		return nil, false
	}
	return o.Ingredients, true
}

// HasIngredients returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) HasIngredients() bool {
	if o != nil && !IsNil(o.Ingredients) {
		return true
	}

	return false
}

// SetIngredients gets a reference to the given []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner and assigns it to the Ingredients field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) SetIngredients(v []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner) {
	o.Ingredients = v
}

// GetEquipment returns the Equipment field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetEquipment() []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
	if o == nil || IsNil(o.Equipment) {
		var ret []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
		return ret
	}
	return o.Equipment
}

// GetEquipmentOk returns a tuple with the Equipment field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetEquipmentOk() ([]SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner, bool) {
	if o == nil || IsNil(o.Equipment) {
		return nil, false
	}
	return o.Equipment, true
}

// HasEquipment returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) HasEquipment() bool {
	if o != nil && !IsNil(o.Equipment) {
		return true
	}

	return false
}

// SetEquipment gets a reference to the given []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner and assigns it to the Equipment field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) SetEquipment(v []SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner) {
	o.Equipment = v
}

// GetStep returns the Step field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetStep() string {
	if o == nil || IsNil(o.Step.Get()) {
		var ret string
		return ret
	}
	return *o.Step.Get()
}

// GetStepOk returns a tuple with the Step field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) GetStepOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Step.Get(), o.Step.IsSet()
}

// HasStep returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) HasStep() bool {
	if o != nil && o.Step.IsSet() {
		return true
	}

	return false
}

// SetStep gets a reference to the given NullableString and assigns it to the Step field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) SetStep(v string) {
	o.Step.Set(&v)
}
// SetStepNil sets the value for Step to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) SetStepNil() {
	o.Step.Set(nil)
}

// UnsetStep ensures that no value is present for Step, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) UnsetStep() {
	o.Step.Unset()
}

func (o RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) ToMap() (map[string]interface{}, error) {
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

type NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner struct {
	value *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) Get() *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) Set(val *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner(val *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
	return &NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


