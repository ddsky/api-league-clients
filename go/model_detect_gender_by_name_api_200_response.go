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

// checks if the DetectGenderByNameAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectGenderByNameAPI200Response{}

// DetectGenderByNameAPI200Response struct for DetectGenderByNameAPI200Response
type DetectGenderByNameAPI200Response struct {
	Name NullableString `json:"name,omitempty"`
	ProbabilityMale *float32 `json:"probability_male,omitempty"`
	ProbabilityFemale *float32 `json:"probability_female,omitempty"`
	Popularity *float32 `json:"popularity,omitempty"`
}

// NewDetectGenderByNameAPI200Response instantiates a new DetectGenderByNameAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectGenderByNameAPI200Response() *DetectGenderByNameAPI200Response {
	this := DetectGenderByNameAPI200Response{}
	return &this
}

// NewDetectGenderByNameAPI200ResponseWithDefaults instantiates a new DetectGenderByNameAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectGenderByNameAPI200ResponseWithDefaults() *DetectGenderByNameAPI200Response {
	this := DetectGenderByNameAPI200Response{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectGenderByNameAPI200Response) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectGenderByNameAPI200Response) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *DetectGenderByNameAPI200Response) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *DetectGenderByNameAPI200Response) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *DetectGenderByNameAPI200Response) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *DetectGenderByNameAPI200Response) UnsetName() {
	o.Name.Unset()
}

// GetProbabilityMale returns the ProbabilityMale field value if set, zero value otherwise.
func (o *DetectGenderByNameAPI200Response) GetProbabilityMale() float32 {
	if o == nil || IsNil(o.ProbabilityMale) {
		var ret float32
		return ret
	}
	return *o.ProbabilityMale
}

// GetProbabilityMaleOk returns a tuple with the ProbabilityMale field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectGenderByNameAPI200Response) GetProbabilityMaleOk() (*float32, bool) {
	if o == nil || IsNil(o.ProbabilityMale) {
		return nil, false
	}
	return o.ProbabilityMale, true
}

// HasProbabilityMale returns a boolean if a field has been set.
func (o *DetectGenderByNameAPI200Response) HasProbabilityMale() bool {
	if o != nil && !IsNil(o.ProbabilityMale) {
		return true
	}

	return false
}

// SetProbabilityMale gets a reference to the given float32 and assigns it to the ProbabilityMale field.
func (o *DetectGenderByNameAPI200Response) SetProbabilityMale(v float32) {
	o.ProbabilityMale = &v
}

// GetProbabilityFemale returns the ProbabilityFemale field value if set, zero value otherwise.
func (o *DetectGenderByNameAPI200Response) GetProbabilityFemale() float32 {
	if o == nil || IsNil(o.ProbabilityFemale) {
		var ret float32
		return ret
	}
	return *o.ProbabilityFemale
}

// GetProbabilityFemaleOk returns a tuple with the ProbabilityFemale field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectGenderByNameAPI200Response) GetProbabilityFemaleOk() (*float32, bool) {
	if o == nil || IsNil(o.ProbabilityFemale) {
		return nil, false
	}
	return o.ProbabilityFemale, true
}

// HasProbabilityFemale returns a boolean if a field has been set.
func (o *DetectGenderByNameAPI200Response) HasProbabilityFemale() bool {
	if o != nil && !IsNil(o.ProbabilityFemale) {
		return true
	}

	return false
}

// SetProbabilityFemale gets a reference to the given float32 and assigns it to the ProbabilityFemale field.
func (o *DetectGenderByNameAPI200Response) SetProbabilityFemale(v float32) {
	o.ProbabilityFemale = &v
}

// GetPopularity returns the Popularity field value if set, zero value otherwise.
func (o *DetectGenderByNameAPI200Response) GetPopularity() float32 {
	if o == nil || IsNil(o.Popularity) {
		var ret float32
		return ret
	}
	return *o.Popularity
}

// GetPopularityOk returns a tuple with the Popularity field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectGenderByNameAPI200Response) GetPopularityOk() (*float32, bool) {
	if o == nil || IsNil(o.Popularity) {
		return nil, false
	}
	return o.Popularity, true
}

// HasPopularity returns a boolean if a field has been set.
func (o *DetectGenderByNameAPI200Response) HasPopularity() bool {
	if o != nil && !IsNil(o.Popularity) {
		return true
	}

	return false
}

// SetPopularity gets a reference to the given float32 and assigns it to the Popularity field.
func (o *DetectGenderByNameAPI200Response) SetPopularity(v float32) {
	o.Popularity = &v
}

func (o DetectGenderByNameAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectGenderByNameAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.ProbabilityMale) {
		toSerialize["probability_male"] = o.ProbabilityMale
	}
	if !IsNil(o.ProbabilityFemale) {
		toSerialize["probability_female"] = o.ProbabilityFemale
	}
	if !IsNil(o.Popularity) {
		toSerialize["popularity"] = o.Popularity
	}
	return toSerialize, nil
}

type NullableDetectGenderByNameAPI200Response struct {
	value *DetectGenderByNameAPI200Response
	isSet bool
}

func (v NullableDetectGenderByNameAPI200Response) Get() *DetectGenderByNameAPI200Response {
	return v.value
}

func (v *NullableDetectGenderByNameAPI200Response) Set(val *DetectGenderByNameAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectGenderByNameAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectGenderByNameAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectGenderByNameAPI200Response(val *DetectGenderByNameAPI200Response) *NullableDetectGenderByNameAPI200Response {
	return &NullableDetectGenderByNameAPI200Response{value: val, isSet: true}
}

func (v NullableDetectGenderByNameAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectGenderByNameAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

