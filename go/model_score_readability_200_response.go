/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreReadability200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreReadability200Response{}

// ScoreReadability200Response struct for ScoreReadability200Response
type ScoreReadability200Response struct {
	Readability *ScoreText200ResponseReadability `json:"readability,omitempty"`
}

// NewScoreReadability200Response instantiates a new ScoreReadability200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreReadability200Response() *ScoreReadability200Response {
	this := ScoreReadability200Response{}
	return &this
}

// NewScoreReadability200ResponseWithDefaults instantiates a new ScoreReadability200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreReadability200ResponseWithDefaults() *ScoreReadability200Response {
	this := ScoreReadability200Response{}
	return &this
}

// GetReadability returns the Readability field value if set, zero value otherwise.
func (o *ScoreReadability200Response) GetReadability() ScoreText200ResponseReadability {
	if o == nil || IsNil(o.Readability) {
		var ret ScoreText200ResponseReadability
		return ret
	}
	return *o.Readability
}

// GetReadabilityOk returns a tuple with the Readability field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreReadability200Response) GetReadabilityOk() (*ScoreText200ResponseReadability, bool) {
	if o == nil || IsNil(o.Readability) {
		return nil, false
	}
	return o.Readability, true
}

// HasReadability returns a boolean if a field has been set.
func (o *ScoreReadability200Response) HasReadability() bool {
	if o != nil && !IsNil(o.Readability) {
		return true
	}

	return false
}

// SetReadability gets a reference to the given ScoreText200ResponseReadability and assigns it to the Readability field.
func (o *ScoreReadability200Response) SetReadability(v ScoreText200ResponseReadability) {
	o.Readability = &v
}

func (o ScoreReadability200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreReadability200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Readability) {
		toSerialize["readability"] = o.Readability
	}
	return toSerialize, nil
}

type NullableScoreReadability200Response struct {
	value *ScoreReadability200Response
	isSet bool
}

func (v NullableScoreReadability200Response) Get() *ScoreReadability200Response {
	return v.value
}

func (v *NullableScoreReadability200Response) Set(val *ScoreReadability200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreReadability200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreReadability200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreReadability200Response(val *ScoreReadability200Response) *NullableScoreReadability200Response {
	return &NullableScoreReadability200Response{value: val, isSet: true}
}

func (v NullableScoreReadability200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreReadability200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


