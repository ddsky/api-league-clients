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

// checks if the ReadKeyValueFromStoreAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ReadKeyValueFromStoreAPI200Response{}

// ReadKeyValueFromStoreAPI200Response struct for ReadKeyValueFromStoreAPI200Response
type ReadKeyValueFromStoreAPI200Response struct {
	Value NullableString `json:"value,omitempty"`
}

// NewReadKeyValueFromStoreAPI200Response instantiates a new ReadKeyValueFromStoreAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewReadKeyValueFromStoreAPI200Response() *ReadKeyValueFromStoreAPI200Response {
	this := ReadKeyValueFromStoreAPI200Response{}
	return &this
}

// NewReadKeyValueFromStoreAPI200ResponseWithDefaults instantiates a new ReadKeyValueFromStoreAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewReadKeyValueFromStoreAPI200ResponseWithDefaults() *ReadKeyValueFromStoreAPI200Response {
	this := ReadKeyValueFromStoreAPI200Response{}
	return &this
}

// GetValue returns the Value field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ReadKeyValueFromStoreAPI200Response) GetValue() string {
	if o == nil || IsNil(o.Value.Get()) {
		var ret string
		return ret
	}
	return *o.Value.Get()
}

// GetValueOk returns a tuple with the Value field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ReadKeyValueFromStoreAPI200Response) GetValueOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Value.Get(), o.Value.IsSet()
}

// HasValue returns a boolean if a field has been set.
func (o *ReadKeyValueFromStoreAPI200Response) HasValue() bool {
	if o != nil && o.Value.IsSet() {
		return true
	}

	return false
}

// SetValue gets a reference to the given NullableString and assigns it to the Value field.
func (o *ReadKeyValueFromStoreAPI200Response) SetValue(v string) {
	o.Value.Set(&v)
}
// SetValueNil sets the value for Value to be an explicit nil
func (o *ReadKeyValueFromStoreAPI200Response) SetValueNil() {
	o.Value.Set(nil)
}

// UnsetValue ensures that no value is present for Value, not even an explicit nil
func (o *ReadKeyValueFromStoreAPI200Response) UnsetValue() {
	o.Value.Unset()
}

func (o ReadKeyValueFromStoreAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ReadKeyValueFromStoreAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Value.IsSet() {
		toSerialize["value"] = o.Value.Get()
	}
	return toSerialize, nil
}

type NullableReadKeyValueFromStoreAPI200Response struct {
	value *ReadKeyValueFromStoreAPI200Response
	isSet bool
}

func (v NullableReadKeyValueFromStoreAPI200Response) Get() *ReadKeyValueFromStoreAPI200Response {
	return v.value
}

func (v *NullableReadKeyValueFromStoreAPI200Response) Set(val *ReadKeyValueFromStoreAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableReadKeyValueFromStoreAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableReadKeyValueFromStoreAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableReadKeyValueFromStoreAPI200Response(val *ReadKeyValueFromStoreAPI200Response) *NullableReadKeyValueFromStoreAPI200Response {
	return &NullableReadKeyValueFromStoreAPI200Response{value: val, isSet: true}
}

func (v NullableReadKeyValueFromStoreAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableReadKeyValueFromStoreAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

