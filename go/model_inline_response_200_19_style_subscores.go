/*
API League

API League is a Hub for World Class APIs.

API version: 1.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// InlineResponse20019StyleSubscores struct for InlineResponse20019StyleSubscores
type InlineResponse20019StyleSubscores struct {
	AbbreviationScore []int32 `json:"abbreviation_score,omitempty"`
	StyleScore []int32 `json:"style_score,omitempty"`
	SpellingScore []int32 `json:"spelling_score,omitempty"`
}

// NewInlineResponse20019StyleSubscores instantiates a new InlineResponse20019StyleSubscores object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewInlineResponse20019StyleSubscores() *InlineResponse20019StyleSubscores {
	this := InlineResponse20019StyleSubscores{}
	return &this
}

// NewInlineResponse20019StyleSubscoresWithDefaults instantiates a new InlineResponse20019StyleSubscores object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewInlineResponse20019StyleSubscoresWithDefaults() *InlineResponse20019StyleSubscores {
	this := InlineResponse20019StyleSubscores{}
	return &this
}

// GetAbbreviationScore returns the AbbreviationScore field value if set, zero value otherwise.
func (o *InlineResponse20019StyleSubscores) GetAbbreviationScore() []int32 {
	if o == nil || o.AbbreviationScore == nil {
		var ret []int32
		return ret
	}
	return o.AbbreviationScore
}

// GetAbbreviationScoreOk returns a tuple with the AbbreviationScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InlineResponse20019StyleSubscores) GetAbbreviationScoreOk() ([]int32, bool) {
	if o == nil || o.AbbreviationScore == nil {
		return nil, false
	}
	return o.AbbreviationScore, true
}

// HasAbbreviationScore returns a boolean if a field has been set.
func (o *InlineResponse20019StyleSubscores) HasAbbreviationScore() bool {
	if o != nil && o.AbbreviationScore != nil {
		return true
	}

	return false
}

// SetAbbreviationScore gets a reference to the given []int32 and assigns it to the AbbreviationScore field.
func (o *InlineResponse20019StyleSubscores) SetAbbreviationScore(v []int32) {
	o.AbbreviationScore = v
}

// GetStyleScore returns the StyleScore field value if set, zero value otherwise.
func (o *InlineResponse20019StyleSubscores) GetStyleScore() []int32 {
	if o == nil || o.StyleScore == nil {
		var ret []int32
		return ret
	}
	return o.StyleScore
}

// GetStyleScoreOk returns a tuple with the StyleScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InlineResponse20019StyleSubscores) GetStyleScoreOk() ([]int32, bool) {
	if o == nil || o.StyleScore == nil {
		return nil, false
	}
	return o.StyleScore, true
}

// HasStyleScore returns a boolean if a field has been set.
func (o *InlineResponse20019StyleSubscores) HasStyleScore() bool {
	if o != nil && o.StyleScore != nil {
		return true
	}

	return false
}

// SetStyleScore gets a reference to the given []int32 and assigns it to the StyleScore field.
func (o *InlineResponse20019StyleSubscores) SetStyleScore(v []int32) {
	o.StyleScore = v
}

// GetSpellingScore returns the SpellingScore field value if set, zero value otherwise.
func (o *InlineResponse20019StyleSubscores) GetSpellingScore() []int32 {
	if o == nil || o.SpellingScore == nil {
		var ret []int32
		return ret
	}
	return o.SpellingScore
}

// GetSpellingScoreOk returns a tuple with the SpellingScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InlineResponse20019StyleSubscores) GetSpellingScoreOk() ([]int32, bool) {
	if o == nil || o.SpellingScore == nil {
		return nil, false
	}
	return o.SpellingScore, true
}

// HasSpellingScore returns a boolean if a field has been set.
func (o *InlineResponse20019StyleSubscores) HasSpellingScore() bool {
	if o != nil && o.SpellingScore != nil {
		return true
	}

	return false
}

// SetSpellingScore gets a reference to the given []int32 and assigns it to the SpellingScore field.
func (o *InlineResponse20019StyleSubscores) SetSpellingScore(v []int32) {
	o.SpellingScore = v
}

func (o InlineResponse20019StyleSubscores) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.AbbreviationScore != nil {
		toSerialize["abbreviation_score"] = o.AbbreviationScore
	}
	if o.StyleScore != nil {
		toSerialize["style_score"] = o.StyleScore
	}
	if o.SpellingScore != nil {
		toSerialize["spelling_score"] = o.SpellingScore
	}
	return json.Marshal(toSerialize)
}

type NullableInlineResponse20019StyleSubscores struct {
	value *InlineResponse20019StyleSubscores
	isSet bool
}

func (v NullableInlineResponse20019StyleSubscores) Get() *InlineResponse20019StyleSubscores {
	return v.value
}

func (v *NullableInlineResponse20019StyleSubscores) Set(val *InlineResponse20019StyleSubscores) {
	v.value = val
	v.isSet = true
}

func (v NullableInlineResponse20019StyleSubscores) IsSet() bool {
	return v.isSet
}

func (v *NullableInlineResponse20019StyleSubscores) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableInlineResponse20019StyleSubscores(val *InlineResponse20019StyleSubscores) *NullableInlineResponse20019StyleSubscores {
	return &NullableInlineResponse20019StyleSubscores{value: val, isSet: true}
}

func (v NullableInlineResponse20019StyleSubscores) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableInlineResponse20019StyleSubscores) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


