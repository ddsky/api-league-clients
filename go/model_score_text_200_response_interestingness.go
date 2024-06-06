/*
API League

API League is a Hub for World Class APIs.

API version: 1.2.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreText200ResponseInterestingness type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreText200ResponseInterestingness{}

// ScoreText200ResponseInterestingness struct for ScoreText200ResponseInterestingness
type ScoreText200ResponseInterestingness struct {
	Mainscores *ScoreText200ResponseSkimmabilityMainscores `json:"mainscores,omitempty"`
	Subscores *ScoreText200ResponseInterestingnessSubscores `json:"subscores,omitempty"`
}

// NewScoreText200ResponseInterestingness instantiates a new ScoreText200ResponseInterestingness object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreText200ResponseInterestingness() *ScoreText200ResponseInterestingness {
	this := ScoreText200ResponseInterestingness{}
	return &this
}

// NewScoreText200ResponseInterestingnessWithDefaults instantiates a new ScoreText200ResponseInterestingness object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreText200ResponseInterestingnessWithDefaults() *ScoreText200ResponseInterestingness {
	this := ScoreText200ResponseInterestingness{}
	return &this
}

// GetMainscores returns the Mainscores field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingness) GetMainscores() ScoreText200ResponseSkimmabilityMainscores {
	if o == nil || IsNil(o.Mainscores) {
		var ret ScoreText200ResponseSkimmabilityMainscores
		return ret
	}
	return *o.Mainscores
}

// GetMainscoresOk returns a tuple with the Mainscores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingness) GetMainscoresOk() (*ScoreText200ResponseSkimmabilityMainscores, bool) {
	if o == nil || IsNil(o.Mainscores) {
		return nil, false
	}
	return o.Mainscores, true
}

// HasMainscores returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingness) HasMainscores() bool {
	if o != nil && !IsNil(o.Mainscores) {
		return true
	}

	return false
}

// SetMainscores gets a reference to the given ScoreText200ResponseSkimmabilityMainscores and assigns it to the Mainscores field.
func (o *ScoreText200ResponseInterestingness) SetMainscores(v ScoreText200ResponseSkimmabilityMainscores) {
	o.Mainscores = &v
}

// GetSubscores returns the Subscores field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingness) GetSubscores() ScoreText200ResponseInterestingnessSubscores {
	if o == nil || IsNil(o.Subscores) {
		var ret ScoreText200ResponseInterestingnessSubscores
		return ret
	}
	return *o.Subscores
}

// GetSubscoresOk returns a tuple with the Subscores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingness) GetSubscoresOk() (*ScoreText200ResponseInterestingnessSubscores, bool) {
	if o == nil || IsNil(o.Subscores) {
		return nil, false
	}
	return o.Subscores, true
}

// HasSubscores returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingness) HasSubscores() bool {
	if o != nil && !IsNil(o.Subscores) {
		return true
	}

	return false
}

// SetSubscores gets a reference to the given ScoreText200ResponseInterestingnessSubscores and assigns it to the Subscores field.
func (o *ScoreText200ResponseInterestingness) SetSubscores(v ScoreText200ResponseInterestingnessSubscores) {
	o.Subscores = &v
}

func (o ScoreText200ResponseInterestingness) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreText200ResponseInterestingness) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Mainscores) {
		toSerialize["mainscores"] = o.Mainscores
	}
	if !IsNil(o.Subscores) {
		toSerialize["subscores"] = o.Subscores
	}
	return toSerialize, nil
}

type NullableScoreText200ResponseInterestingness struct {
	value *ScoreText200ResponseInterestingness
	isSet bool
}

func (v NullableScoreText200ResponseInterestingness) Get() *ScoreText200ResponseInterestingness {
	return v.value
}

func (v *NullableScoreText200ResponseInterestingness) Set(val *ScoreText200ResponseInterestingness) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreText200ResponseInterestingness) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreText200ResponseInterestingness) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreText200ResponseInterestingness(val *ScoreText200ResponseInterestingness) *NullableScoreText200ResponseInterestingness {
	return &NullableScoreText200ResponseInterestingness{value: val, isSet: true}
}

func (v NullableScoreText200ResponseInterestingness) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreText200ResponseInterestingness) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


