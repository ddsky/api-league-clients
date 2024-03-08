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

// checks if the PartOfSpeechTagging200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &PartOfSpeechTagging200Response{}

// PartOfSpeechTagging200Response struct for PartOfSpeechTagging200Response
type PartOfSpeechTagging200Response struct {
	TaggedText NullableString `json:"tagged_text,omitempty"`
}

// NewPartOfSpeechTagging200Response instantiates a new PartOfSpeechTagging200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPartOfSpeechTagging200Response() *PartOfSpeechTagging200Response {
	this := PartOfSpeechTagging200Response{}
	return &this
}

// NewPartOfSpeechTagging200ResponseWithDefaults instantiates a new PartOfSpeechTagging200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPartOfSpeechTagging200ResponseWithDefaults() *PartOfSpeechTagging200Response {
	this := PartOfSpeechTagging200Response{}
	return &this
}

// GetTaggedText returns the TaggedText field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *PartOfSpeechTagging200Response) GetTaggedText() string {
	if o == nil || IsNil(o.TaggedText.Get()) {
		var ret string
		return ret
	}
	return *o.TaggedText.Get()
}

// GetTaggedTextOk returns a tuple with the TaggedText field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *PartOfSpeechTagging200Response) GetTaggedTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.TaggedText.Get(), o.TaggedText.IsSet()
}

// HasTaggedText returns a boolean if a field has been set.
func (o *PartOfSpeechTagging200Response) HasTaggedText() bool {
	if o != nil && o.TaggedText.IsSet() {
		return true
	}

	return false
}

// SetTaggedText gets a reference to the given NullableString and assigns it to the TaggedText field.
func (o *PartOfSpeechTagging200Response) SetTaggedText(v string) {
	o.TaggedText.Set(&v)
}
// SetTaggedTextNil sets the value for TaggedText to be an explicit nil
func (o *PartOfSpeechTagging200Response) SetTaggedTextNil() {
	o.TaggedText.Set(nil)
}

// UnsetTaggedText ensures that no value is present for TaggedText, not even an explicit nil
func (o *PartOfSpeechTagging200Response) UnsetTaggedText() {
	o.TaggedText.Unset()
}

func (o PartOfSpeechTagging200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o PartOfSpeechTagging200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.TaggedText.IsSet() {
		toSerialize["tagged_text"] = o.TaggedText.Get()
	}
	return toSerialize, nil
}

type NullablePartOfSpeechTagging200Response struct {
	value *PartOfSpeechTagging200Response
	isSet bool
}

func (v NullablePartOfSpeechTagging200Response) Get() *PartOfSpeechTagging200Response {
	return v.value
}

func (v *NullablePartOfSpeechTagging200Response) Set(val *PartOfSpeechTagging200Response) {
	v.value = val
	v.isSet = true
}

func (v NullablePartOfSpeechTagging200Response) IsSet() bool {
	return v.isSet
}

func (v *NullablePartOfSpeechTagging200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePartOfSpeechTagging200Response(val *PartOfSpeechTagging200Response) *NullablePartOfSpeechTagging200Response {
	return &NullablePartOfSpeechTagging200Response{value: val, isSet: true}
}

func (v NullablePartOfSpeechTagging200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePartOfSpeechTagging200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


