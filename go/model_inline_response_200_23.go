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

// InlineResponse20023 struct for InlineResponse20023
type InlineResponse20023 struct {
	TaggedText NullableString `json:"tagged_text,omitempty"`
}

// NewInlineResponse20023 instantiates a new InlineResponse20023 object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewInlineResponse20023() *InlineResponse20023 {
	this := InlineResponse20023{}
	return &this
}

// NewInlineResponse20023WithDefaults instantiates a new InlineResponse20023 object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewInlineResponse20023WithDefaults() *InlineResponse20023 {
	this := InlineResponse20023{}
	return &this
}

// GetTaggedText returns the TaggedText field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *InlineResponse20023) GetTaggedText() string {
	if o == nil || o.TaggedText.Get() == nil {
		var ret string
		return ret
	}
	return *o.TaggedText.Get()
}

// GetTaggedTextOk returns a tuple with the TaggedText field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *InlineResponse20023) GetTaggedTextOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return o.TaggedText.Get(), o.TaggedText.IsSet()
}

// HasTaggedText returns a boolean if a field has been set.
func (o *InlineResponse20023) HasTaggedText() bool {
	if o != nil && o.TaggedText.IsSet() {
		return true
	}

	return false
}

// SetTaggedText gets a reference to the given NullableString and assigns it to the TaggedText field.
func (o *InlineResponse20023) SetTaggedText(v string) {
	o.TaggedText.Set(&v)
}
// SetTaggedTextNil sets the value for TaggedText to be an explicit nil
func (o *InlineResponse20023) SetTaggedTextNil() {
	o.TaggedText.Set(nil)
}

// UnsetTaggedText ensures that no value is present for TaggedText, not even an explicit nil
func (o *InlineResponse20023) UnsetTaggedText() {
	o.TaggedText.Unset()
}

func (o InlineResponse20023) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.TaggedText.IsSet() {
		toSerialize["tagged_text"] = o.TaggedText.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableInlineResponse20023 struct {
	value *InlineResponse20023
	isSet bool
}

func (v NullableInlineResponse20023) Get() *InlineResponse20023 {
	return v.value
}

func (v *NullableInlineResponse20023) Set(val *InlineResponse20023) {
	v.value = val
	v.isSet = true
}

func (v NullableInlineResponse20023) IsSet() bool {
	return v.isSet
}

func (v *NullableInlineResponse20023) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableInlineResponse20023(val *InlineResponse20023) *NullableInlineResponse20023 {
	return &NullableInlineResponse20023{value: val, isSet: true}
}

func (v NullableInlineResponse20023) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableInlineResponse20023) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


