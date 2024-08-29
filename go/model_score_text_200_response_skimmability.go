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

// checks if the ScoreText200ResponseSkimmability type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreText200ResponseSkimmability{}

// ScoreText200ResponseSkimmability struct for ScoreText200ResponseSkimmability
type ScoreText200ResponseSkimmability struct {
	Mainscores *ScoreText200ResponseSkimmabilityMainscores `json:"mainscores,omitempty"`
	Subscores *ScoreText200ResponseSkimmabilitySubscores `json:"subscores,omitempty"`
}

// NewScoreText200ResponseSkimmability instantiates a new ScoreText200ResponseSkimmability object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreText200ResponseSkimmability() *ScoreText200ResponseSkimmability {
	this := ScoreText200ResponseSkimmability{}
	return &this
}

// NewScoreText200ResponseSkimmabilityWithDefaults instantiates a new ScoreText200ResponseSkimmability object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreText200ResponseSkimmabilityWithDefaults() *ScoreText200ResponseSkimmability {
	this := ScoreText200ResponseSkimmability{}
	return &this
}

// GetMainscores returns the Mainscores field value if set, zero value otherwise.
func (o *ScoreText200ResponseSkimmability) GetMainscores() ScoreText200ResponseSkimmabilityMainscores {
	if o == nil || IsNil(o.Mainscores) {
		var ret ScoreText200ResponseSkimmabilityMainscores
		return ret
	}
	return *o.Mainscores
}

// GetMainscoresOk returns a tuple with the Mainscores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseSkimmability) GetMainscoresOk() (*ScoreText200ResponseSkimmabilityMainscores, bool) {
	if o == nil || IsNil(o.Mainscores) {
		return nil, false
	}
	return o.Mainscores, true
}

// HasMainscores returns a boolean if a field has been set.
func (o *ScoreText200ResponseSkimmability) HasMainscores() bool {
	if o != nil && !IsNil(o.Mainscores) {
		return true
	}

	return false
}

// SetMainscores gets a reference to the given ScoreText200ResponseSkimmabilityMainscores and assigns it to the Mainscores field.
func (o *ScoreText200ResponseSkimmability) SetMainscores(v ScoreText200ResponseSkimmabilityMainscores) {
	o.Mainscores = &v
}

// GetSubscores returns the Subscores field value if set, zero value otherwise.
func (o *ScoreText200ResponseSkimmability) GetSubscores() ScoreText200ResponseSkimmabilitySubscores {
	if o == nil || IsNil(o.Subscores) {
		var ret ScoreText200ResponseSkimmabilitySubscores
		return ret
	}
	return *o.Subscores
}

// GetSubscoresOk returns a tuple with the Subscores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseSkimmability) GetSubscoresOk() (*ScoreText200ResponseSkimmabilitySubscores, bool) {
	if o == nil || IsNil(o.Subscores) {
		return nil, false
	}
	return o.Subscores, true
}

// HasSubscores returns a boolean if a field has been set.
func (o *ScoreText200ResponseSkimmability) HasSubscores() bool {
	if o != nil && !IsNil(o.Subscores) {
		return true
	}

	return false
}

// SetSubscores gets a reference to the given ScoreText200ResponseSkimmabilitySubscores and assigns it to the Subscores field.
func (o *ScoreText200ResponseSkimmability) SetSubscores(v ScoreText200ResponseSkimmabilitySubscores) {
	o.Subscores = &v
}

func (o ScoreText200ResponseSkimmability) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreText200ResponseSkimmability) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Mainscores) {
		toSerialize["mainscores"] = o.Mainscores
	}
	if !IsNil(o.Subscores) {
		toSerialize["subscores"] = o.Subscores
	}
	return toSerialize, nil
}

type NullableScoreText200ResponseSkimmability struct {
	value *ScoreText200ResponseSkimmability
	isSet bool
}

func (v NullableScoreText200ResponseSkimmability) Get() *ScoreText200ResponseSkimmability {
	return v.value
}

func (v *NullableScoreText200ResponseSkimmability) Set(val *ScoreText200ResponseSkimmability) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreText200ResponseSkimmability) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreText200ResponseSkimmability) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreText200ResponseSkimmability(val *ScoreText200ResponseSkimmability) *NullableScoreText200ResponseSkimmability {
	return &NullableScoreText200ResponseSkimmability{value: val, isSet: true}
}

func (v NullableScoreText200ResponseSkimmability) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreText200ResponseSkimmability) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


