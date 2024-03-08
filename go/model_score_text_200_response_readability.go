/*
API League

API League is a Hub for World Class APIs.

API version: 1.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreText200ResponseReadability type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreText200ResponseReadability{}

// ScoreText200ResponseReadability struct for ScoreText200ResponseReadability
type ScoreText200ResponseReadability struct {
	Mainscores *ScoreText200ResponseReadabilityMainscores `json:"mainscores,omitempty"`
	Subscores *ScoreText200ResponseReadabilitySubscores `json:"subscores,omitempty"`
}

// NewScoreText200ResponseReadability instantiates a new ScoreText200ResponseReadability object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreText200ResponseReadability() *ScoreText200ResponseReadability {
	this := ScoreText200ResponseReadability{}
	return &this
}

// NewScoreText200ResponseReadabilityWithDefaults instantiates a new ScoreText200ResponseReadability object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreText200ResponseReadabilityWithDefaults() *ScoreText200ResponseReadability {
	this := ScoreText200ResponseReadability{}
	return &this
}

// GetMainscores returns the Mainscores field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadability) GetMainscores() ScoreText200ResponseReadabilityMainscores {
	if o == nil || IsNil(o.Mainscores) {
		var ret ScoreText200ResponseReadabilityMainscores
		return ret
	}
	return *o.Mainscores
}

// GetMainscoresOk returns a tuple with the Mainscores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadability) GetMainscoresOk() (*ScoreText200ResponseReadabilityMainscores, bool) {
	if o == nil || IsNil(o.Mainscores) {
		return nil, false
	}
	return o.Mainscores, true
}

// HasMainscores returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadability) HasMainscores() bool {
	if o != nil && !IsNil(o.Mainscores) {
		return true
	}

	return false
}

// SetMainscores gets a reference to the given ScoreText200ResponseReadabilityMainscores and assigns it to the Mainscores field.
func (o *ScoreText200ResponseReadability) SetMainscores(v ScoreText200ResponseReadabilityMainscores) {
	o.Mainscores = &v
}

// GetSubscores returns the Subscores field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadability) GetSubscores() ScoreText200ResponseReadabilitySubscores {
	if o == nil || IsNil(o.Subscores) {
		var ret ScoreText200ResponseReadabilitySubscores
		return ret
	}
	return *o.Subscores
}

// GetSubscoresOk returns a tuple with the Subscores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadability) GetSubscoresOk() (*ScoreText200ResponseReadabilitySubscores, bool) {
	if o == nil || IsNil(o.Subscores) {
		return nil, false
	}
	return o.Subscores, true
}

// HasSubscores returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadability) HasSubscores() bool {
	if o != nil && !IsNil(o.Subscores) {
		return true
	}

	return false
}

// SetSubscores gets a reference to the given ScoreText200ResponseReadabilitySubscores and assigns it to the Subscores field.
func (o *ScoreText200ResponseReadability) SetSubscores(v ScoreText200ResponseReadabilitySubscores) {
	o.Subscores = &v
}

func (o ScoreText200ResponseReadability) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreText200ResponseReadability) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Mainscores) {
		toSerialize["mainscores"] = o.Mainscores
	}
	if !IsNil(o.Subscores) {
		toSerialize["subscores"] = o.Subscores
	}
	return toSerialize, nil
}

type NullableScoreText200ResponseReadability struct {
	value *ScoreText200ResponseReadability
	isSet bool
}

func (v NullableScoreText200ResponseReadability) Get() *ScoreText200ResponseReadability {
	return v.value
}

func (v *NullableScoreText200ResponseReadability) Set(val *ScoreText200ResponseReadability) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreText200ResponseReadability) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreText200ResponseReadability) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreText200ResponseReadability(val *ScoreText200ResponseReadability) *NullableScoreText200ResponseReadability {
	return &NullableScoreText200ResponseReadability{value: val, isSet: true}
}

func (v NullableScoreText200ResponseReadability) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreText200ResponseReadability) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


