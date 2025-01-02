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

// checks if the CorrectSpellingAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &CorrectSpellingAPI200Response{}

// CorrectSpellingAPI200Response struct for CorrectSpellingAPI200Response
type CorrectSpellingAPI200Response struct {
	CorrectedText NullableString `json:"corrected_text,omitempty"`
}

// NewCorrectSpellingAPI200Response instantiates a new CorrectSpellingAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCorrectSpellingAPI200Response() *CorrectSpellingAPI200Response {
	this := CorrectSpellingAPI200Response{}
	return &this
}

// NewCorrectSpellingAPI200ResponseWithDefaults instantiates a new CorrectSpellingAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCorrectSpellingAPI200ResponseWithDefaults() *CorrectSpellingAPI200Response {
	this := CorrectSpellingAPI200Response{}
	return &this
}

// GetCorrectedText returns the CorrectedText field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CorrectSpellingAPI200Response) GetCorrectedText() string {
	if o == nil || IsNil(o.CorrectedText.Get()) {
		var ret string
		return ret
	}
	return *o.CorrectedText.Get()
}

// GetCorrectedTextOk returns a tuple with the CorrectedText field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CorrectSpellingAPI200Response) GetCorrectedTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.CorrectedText.Get(), o.CorrectedText.IsSet()
}

// HasCorrectedText returns a boolean if a field has been set.
func (o *CorrectSpellingAPI200Response) HasCorrectedText() bool {
	if o != nil && o.CorrectedText.IsSet() {
		return true
	}

	return false
}

// SetCorrectedText gets a reference to the given NullableString and assigns it to the CorrectedText field.
func (o *CorrectSpellingAPI200Response) SetCorrectedText(v string) {
	o.CorrectedText.Set(&v)
}
// SetCorrectedTextNil sets the value for CorrectedText to be an explicit nil
func (o *CorrectSpellingAPI200Response) SetCorrectedTextNil() {
	o.CorrectedText.Set(nil)
}

// UnsetCorrectedText ensures that no value is present for CorrectedText, not even an explicit nil
func (o *CorrectSpellingAPI200Response) UnsetCorrectedText() {
	o.CorrectedText.Unset()
}

func (o CorrectSpellingAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o CorrectSpellingAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.CorrectedText.IsSet() {
		toSerialize["corrected_text"] = o.CorrectedText.Get()
	}
	return toSerialize, nil
}

type NullableCorrectSpellingAPI200Response struct {
	value *CorrectSpellingAPI200Response
	isSet bool
}

func (v NullableCorrectSpellingAPI200Response) Get() *CorrectSpellingAPI200Response {
	return v.value
}

func (v *NullableCorrectSpellingAPI200Response) Set(val *CorrectSpellingAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableCorrectSpellingAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableCorrectSpellingAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCorrectSpellingAPI200Response(val *CorrectSpellingAPI200Response) *NullableCorrectSpellingAPI200Response {
	return &NullableCorrectSpellingAPI200Response{value: val, isSet: true}
}

func (v NullableCorrectSpellingAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCorrectSpellingAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


