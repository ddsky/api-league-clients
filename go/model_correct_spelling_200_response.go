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

// checks if the CorrectSpelling200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &CorrectSpelling200Response{}

// CorrectSpelling200Response struct for CorrectSpelling200Response
type CorrectSpelling200Response struct {
	CorrectedText NullableString `json:"corrected_text,omitempty"`
}

// NewCorrectSpelling200Response instantiates a new CorrectSpelling200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCorrectSpelling200Response() *CorrectSpelling200Response {
	this := CorrectSpelling200Response{}
	return &this
}

// NewCorrectSpelling200ResponseWithDefaults instantiates a new CorrectSpelling200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCorrectSpelling200ResponseWithDefaults() *CorrectSpelling200Response {
	this := CorrectSpelling200Response{}
	return &this
}

// GetCorrectedText returns the CorrectedText field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *CorrectSpelling200Response) GetCorrectedText() string {
	if o == nil || IsNil(o.CorrectedText.Get()) {
		var ret string
		return ret
	}
	return *o.CorrectedText.Get()
}

// GetCorrectedTextOk returns a tuple with the CorrectedText field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *CorrectSpelling200Response) GetCorrectedTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.CorrectedText.Get(), o.CorrectedText.IsSet()
}

// HasCorrectedText returns a boolean if a field has been set.
func (o *CorrectSpelling200Response) HasCorrectedText() bool {
	if o != nil && o.CorrectedText.IsSet() {
		return true
	}

	return false
}

// SetCorrectedText gets a reference to the given NullableString and assigns it to the CorrectedText field.
func (o *CorrectSpelling200Response) SetCorrectedText(v string) {
	o.CorrectedText.Set(&v)
}
// SetCorrectedTextNil sets the value for CorrectedText to be an explicit nil
func (o *CorrectSpelling200Response) SetCorrectedTextNil() {
	o.CorrectedText.Set(nil)
}

// UnsetCorrectedText ensures that no value is present for CorrectedText, not even an explicit nil
func (o *CorrectSpelling200Response) UnsetCorrectedText() {
	o.CorrectedText.Unset()
}

func (o CorrectSpelling200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o CorrectSpelling200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.CorrectedText.IsSet() {
		toSerialize["corrected_text"] = o.CorrectedText.Get()
	}
	return toSerialize, nil
}

type NullableCorrectSpelling200Response struct {
	value *CorrectSpelling200Response
	isSet bool
}

func (v NullableCorrectSpelling200Response) Get() *CorrectSpelling200Response {
	return v.value
}

func (v *NullableCorrectSpelling200Response) Set(val *CorrectSpelling200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableCorrectSpelling200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableCorrectSpelling200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCorrectSpelling200Response(val *CorrectSpelling200Response) *NullableCorrectSpelling200Response {
	return &NullableCorrectSpelling200Response{value: val, isSet: true}
}

func (v NullableCorrectSpelling200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCorrectSpelling200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


