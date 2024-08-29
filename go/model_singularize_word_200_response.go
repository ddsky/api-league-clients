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

// checks if the SingularizeWord200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SingularizeWord200Response{}

// SingularizeWord200Response struct for SingularizeWord200Response
type SingularizeWord200Response struct {
	Original NullableString `json:"original,omitempty"`
	Singular NullableString `json:"singular,omitempty"`
}

// NewSingularizeWord200Response instantiates a new SingularizeWord200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSingularizeWord200Response() *SingularizeWord200Response {
	this := SingularizeWord200Response{}
	return &this
}

// NewSingularizeWord200ResponseWithDefaults instantiates a new SingularizeWord200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSingularizeWord200ResponseWithDefaults() *SingularizeWord200Response {
	this := SingularizeWord200Response{}
	return &this
}

// GetOriginal returns the Original field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SingularizeWord200Response) GetOriginal() string {
	if o == nil || IsNil(o.Original.Get()) {
		var ret string
		return ret
	}
	return *o.Original.Get()
}

// GetOriginalOk returns a tuple with the Original field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SingularizeWord200Response) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Original.Get(), o.Original.IsSet()
}

// HasOriginal returns a boolean if a field has been set.
func (o *SingularizeWord200Response) HasOriginal() bool {
	if o != nil && o.Original.IsSet() {
		return true
	}

	return false
}

// SetOriginal gets a reference to the given NullableString and assigns it to the Original field.
func (o *SingularizeWord200Response) SetOriginal(v string) {
	o.Original.Set(&v)
}
// SetOriginalNil sets the value for Original to be an explicit nil
func (o *SingularizeWord200Response) SetOriginalNil() {
	o.Original.Set(nil)
}

// UnsetOriginal ensures that no value is present for Original, not even an explicit nil
func (o *SingularizeWord200Response) UnsetOriginal() {
	o.Original.Unset()
}

// GetSingular returns the Singular field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SingularizeWord200Response) GetSingular() string {
	if o == nil || IsNil(o.Singular.Get()) {
		var ret string
		return ret
	}
	return *o.Singular.Get()
}

// GetSingularOk returns a tuple with the Singular field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SingularizeWord200Response) GetSingularOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Singular.Get(), o.Singular.IsSet()
}

// HasSingular returns a boolean if a field has been set.
func (o *SingularizeWord200Response) HasSingular() bool {
	if o != nil && o.Singular.IsSet() {
		return true
	}

	return false
}

// SetSingular gets a reference to the given NullableString and assigns it to the Singular field.
func (o *SingularizeWord200Response) SetSingular(v string) {
	o.Singular.Set(&v)
}
// SetSingularNil sets the value for Singular to be an explicit nil
func (o *SingularizeWord200Response) SetSingularNil() {
	o.Singular.Set(nil)
}

// UnsetSingular ensures that no value is present for Singular, not even an explicit nil
func (o *SingularizeWord200Response) UnsetSingular() {
	o.Singular.Unset()
}

func (o SingularizeWord200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SingularizeWord200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Original.IsSet() {
		toSerialize["original"] = o.Original.Get()
	}
	if o.Singular.IsSet() {
		toSerialize["singular"] = o.Singular.Get()
	}
	return toSerialize, nil
}

type NullableSingularizeWord200Response struct {
	value *SingularizeWord200Response
	isSet bool
}

func (v NullableSingularizeWord200Response) Get() *SingularizeWord200Response {
	return v.value
}

func (v *NullableSingularizeWord200Response) Set(val *SingularizeWord200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSingularizeWord200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSingularizeWord200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSingularizeWord200Response(val *SingularizeWord200Response) *NullableSingularizeWord200Response {
	return &NullableSingularizeWord200Response{value: val, isSet: true}
}

func (v NullableSingularizeWord200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSingularizeWord200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


