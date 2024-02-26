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

// InlineResponse20021 struct for InlineResponse20021
type InlineResponse20021 struct {
	Dates []InlineResponse20021Dates `json:"dates,omitempty"`
}

// NewInlineResponse20021 instantiates a new InlineResponse20021 object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewInlineResponse20021() *InlineResponse20021 {
	this := InlineResponse20021{}
	return &this
}

// NewInlineResponse20021WithDefaults instantiates a new InlineResponse20021 object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewInlineResponse20021WithDefaults() *InlineResponse20021 {
	this := InlineResponse20021{}
	return &this
}

// GetDates returns the Dates field value if set, zero value otherwise.
func (o *InlineResponse20021) GetDates() []InlineResponse20021Dates {
	if o == nil || o.Dates == nil {
		var ret []InlineResponse20021Dates
		return ret
	}
	return o.Dates
}

// GetDatesOk returns a tuple with the Dates field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InlineResponse20021) GetDatesOk() ([]InlineResponse20021Dates, bool) {
	if o == nil || o.Dates == nil {
		return nil, false
	}
	return o.Dates, true
}

// HasDates returns a boolean if a field has been set.
func (o *InlineResponse20021) HasDates() bool {
	if o != nil && o.Dates != nil {
		return true
	}

	return false
}

// SetDates gets a reference to the given []InlineResponse20021Dates and assigns it to the Dates field.
func (o *InlineResponse20021) SetDates(v []InlineResponse20021Dates) {
	o.Dates = v
}

func (o InlineResponse20021) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Dates != nil {
		toSerialize["dates"] = o.Dates
	}
	return json.Marshal(toSerialize)
}

type NullableInlineResponse20021 struct {
	value *InlineResponse20021
	isSet bool
}

func (v NullableInlineResponse20021) Get() *InlineResponse20021 {
	return v.value
}

func (v *NullableInlineResponse20021) Set(val *InlineResponse20021) {
	v.value = val
	v.isSet = true
}

func (v NullableInlineResponse20021) IsSet() bool {
	return v.isSet
}

func (v *NullableInlineResponse20021) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableInlineResponse20021(val *InlineResponse20021) *NullableInlineResponse20021 {
	return &NullableInlineResponse20021{value: val, isSet: true}
}

func (v NullableInlineResponse20021) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableInlineResponse20021) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


