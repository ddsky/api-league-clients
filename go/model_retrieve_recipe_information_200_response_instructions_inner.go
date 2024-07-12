/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseInstructionsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseInstructionsInner{}

// RetrieveRecipeInformation200ResponseInstructionsInner struct for RetrieveRecipeInformation200ResponseInstructionsInner
type RetrieveRecipeInformation200ResponseInstructionsInner struct {
	Name NullableString `json:"name,omitempty"`
	Steps []RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner `json:"steps,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseInstructionsInner instantiates a new RetrieveRecipeInformation200ResponseInstructionsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseInstructionsInner() *RetrieveRecipeInformation200ResponseInstructionsInner {
	this := RetrieveRecipeInformation200ResponseInstructionsInner{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseInstructionsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseInstructionsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseInstructionsInnerWithDefaults() *RetrieveRecipeInformation200ResponseInstructionsInner {
	this := RetrieveRecipeInformation200ResponseInstructionsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) UnsetName() {
	o.Name.Unset()
}

// GetSteps returns the Steps field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) GetSteps() []RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
	if o == nil || IsNil(o.Steps) {
		var ret []RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
		return ret
	}
	return o.Steps
}

// GetStepsOk returns a tuple with the Steps field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) GetStepsOk() ([]RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner, bool) {
	if o == nil || IsNil(o.Steps) {
		return nil, false
	}
	return o.Steps, true
}

// HasSteps returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) HasSteps() bool {
	if o != nil && !IsNil(o.Steps) {
		return true
	}

	return false
}

// SetSteps gets a reference to the given []RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner and assigns it to the Steps field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInner) SetSteps(v []RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) {
	o.Steps = v
}

func (o RetrieveRecipeInformation200ResponseInstructionsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseInstructionsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.Steps) {
		toSerialize["steps"] = o.Steps
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseInstructionsInner struct {
	value *RetrieveRecipeInformation200ResponseInstructionsInner
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInner) Get() *RetrieveRecipeInformation200ResponseInstructionsInner {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInner) Set(val *RetrieveRecipeInformation200ResponseInstructionsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseInstructionsInner(val *RetrieveRecipeInformation200ResponseInstructionsInner) *NullableRetrieveRecipeInformation200ResponseInstructionsInner {
	return &NullableRetrieveRecipeInformation200ResponseInstructionsInner{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


