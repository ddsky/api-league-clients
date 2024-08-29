/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.3
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreText200ResponseSkimmabilityMainscores type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreText200ResponseSkimmabilityMainscores{}

// ScoreText200ResponseSkimmabilityMainscores struct for ScoreText200ResponseSkimmabilityMainscores
type ScoreText200ResponseSkimmabilityMainscores struct {
	TotalPossible *int32 `json:"total_possible,omitempty"`
	Total *float32 `json:"total,omitempty"`
}

// NewScoreText200ResponseSkimmabilityMainscores instantiates a new ScoreText200ResponseSkimmabilityMainscores object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreText200ResponseSkimmabilityMainscores() *ScoreText200ResponseSkimmabilityMainscores {
	this := ScoreText200ResponseSkimmabilityMainscores{}
	return &this
}

// NewScoreText200ResponseSkimmabilityMainscoresWithDefaults instantiates a new ScoreText200ResponseSkimmabilityMainscores object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreText200ResponseSkimmabilityMainscoresWithDefaults() *ScoreText200ResponseSkimmabilityMainscores {
	this := ScoreText200ResponseSkimmabilityMainscores{}
	return &this
}

// GetTotalPossible returns the TotalPossible field value if set, zero value otherwise.
func (o *ScoreText200ResponseSkimmabilityMainscores) GetTotalPossible() int32 {
	if o == nil || IsNil(o.TotalPossible) {
		var ret int32
		return ret
	}
	return *o.TotalPossible
}

// GetTotalPossibleOk returns a tuple with the TotalPossible field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseSkimmabilityMainscores) GetTotalPossibleOk() (*int32, bool) {
	if o == nil || IsNil(o.TotalPossible) {
		return nil, false
	}
	return o.TotalPossible, true
}

// HasTotalPossible returns a boolean if a field has been set.
func (o *ScoreText200ResponseSkimmabilityMainscores) HasTotalPossible() bool {
	if o != nil && !IsNil(o.TotalPossible) {
		return true
	}

	return false
}

// SetTotalPossible gets a reference to the given int32 and assigns it to the TotalPossible field.
func (o *ScoreText200ResponseSkimmabilityMainscores) SetTotalPossible(v int32) {
	o.TotalPossible = &v
}

// GetTotal returns the Total field value if set, zero value otherwise.
func (o *ScoreText200ResponseSkimmabilityMainscores) GetTotal() float32 {
	if o == nil || IsNil(o.Total) {
		var ret float32
		return ret
	}
	return *o.Total
}

// GetTotalOk returns a tuple with the Total field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseSkimmabilityMainscores) GetTotalOk() (*float32, bool) {
	if o == nil || IsNil(o.Total) {
		return nil, false
	}
	return o.Total, true
}

// HasTotal returns a boolean if a field has been set.
func (o *ScoreText200ResponseSkimmabilityMainscores) HasTotal() bool {
	if o != nil && !IsNil(o.Total) {
		return true
	}

	return false
}

// SetTotal gets a reference to the given float32 and assigns it to the Total field.
func (o *ScoreText200ResponseSkimmabilityMainscores) SetTotal(v float32) {
	o.Total = &v
}

func (o ScoreText200ResponseSkimmabilityMainscores) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreText200ResponseSkimmabilityMainscores) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.TotalPossible) {
		toSerialize["total_possible"] = o.TotalPossible
	}
	if !IsNil(o.Total) {
		toSerialize["total"] = o.Total
	}
	return toSerialize, nil
}

type NullableScoreText200ResponseSkimmabilityMainscores struct {
	value *ScoreText200ResponseSkimmabilityMainscores
	isSet bool
}

func (v NullableScoreText200ResponseSkimmabilityMainscores) Get() *ScoreText200ResponseSkimmabilityMainscores {
	return v.value
}

func (v *NullableScoreText200ResponseSkimmabilityMainscores) Set(val *ScoreText200ResponseSkimmabilityMainscores) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreText200ResponseSkimmabilityMainscores) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreText200ResponseSkimmabilityMainscores) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreText200ResponseSkimmabilityMainscores(val *ScoreText200ResponseSkimmabilityMainscores) *NullableScoreText200ResponseSkimmabilityMainscores {
	return &NullableScoreText200ResponseSkimmabilityMainscores{value: val, isSet: true}
}

func (v NullableScoreText200ResponseSkimmabilityMainscores) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreText200ResponseSkimmabilityMainscores) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


