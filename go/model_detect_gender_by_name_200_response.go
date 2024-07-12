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

// checks if the DetectGenderByName200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectGenderByName200Response{}

// DetectGenderByName200Response struct for DetectGenderByName200Response
type DetectGenderByName200Response struct {
	Name NullableString `json:"name,omitempty"`
	ProbabilityMale *float32 `json:"probability_male,omitempty"`
}

// NewDetectGenderByName200Response instantiates a new DetectGenderByName200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectGenderByName200Response() *DetectGenderByName200Response {
	this := DetectGenderByName200Response{}
	return &this
}

// NewDetectGenderByName200ResponseWithDefaults instantiates a new DetectGenderByName200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectGenderByName200ResponseWithDefaults() *DetectGenderByName200Response {
	this := DetectGenderByName200Response{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectGenderByName200Response) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectGenderByName200Response) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *DetectGenderByName200Response) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *DetectGenderByName200Response) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *DetectGenderByName200Response) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *DetectGenderByName200Response) UnsetName() {
	o.Name.Unset()
}

// GetProbabilityMale returns the ProbabilityMale field value if set, zero value otherwise.
func (o *DetectGenderByName200Response) GetProbabilityMale() float32 {
	if o == nil || IsNil(o.ProbabilityMale) {
		var ret float32
		return ret
	}
	return *o.ProbabilityMale
}

// GetProbabilityMaleOk returns a tuple with the ProbabilityMale field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectGenderByName200Response) GetProbabilityMaleOk() (*float32, bool) {
	if o == nil || IsNil(o.ProbabilityMale) {
		return nil, false
	}
	return o.ProbabilityMale, true
}

// HasProbabilityMale returns a boolean if a field has been set.
func (o *DetectGenderByName200Response) HasProbabilityMale() bool {
	if o != nil && !IsNil(o.ProbabilityMale) {
		return true
	}

	return false
}

// SetProbabilityMale gets a reference to the given float32 and assigns it to the ProbabilityMale field.
func (o *DetectGenderByName200Response) SetProbabilityMale(v float32) {
	o.ProbabilityMale = &v
}

func (o DetectGenderByName200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectGenderByName200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.ProbabilityMale) {
		toSerialize["probability_male"] = o.ProbabilityMale
	}
	return toSerialize, nil
}

type NullableDetectGenderByName200Response struct {
	value *DetectGenderByName200Response
	isSet bool
}

func (v NullableDetectGenderByName200Response) Get() *DetectGenderByName200Response {
	return v.value
}

func (v *NullableDetectGenderByName200Response) Set(val *DetectGenderByName200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectGenderByName200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectGenderByName200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectGenderByName200Response(val *DetectGenderByName200Response) *NullableDetectGenderByName200Response {
	return &NullableDetectGenderByName200Response{value: val, isSet: true}
}

func (v NullableDetectGenderByName200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectGenderByName200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


