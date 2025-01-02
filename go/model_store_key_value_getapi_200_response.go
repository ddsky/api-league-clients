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

// checks if the StoreKeyValueGETAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &StoreKeyValueGETAPI200Response{}

// StoreKeyValueGETAPI200Response struct for StoreKeyValueGETAPI200Response
type StoreKeyValueGETAPI200Response struct {
	Status NullableString `json:"status,omitempty"`
}

// NewStoreKeyValueGETAPI200Response instantiates a new StoreKeyValueGETAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewStoreKeyValueGETAPI200Response() *StoreKeyValueGETAPI200Response {
	this := StoreKeyValueGETAPI200Response{}
	return &this
}

// NewStoreKeyValueGETAPI200ResponseWithDefaults instantiates a new StoreKeyValueGETAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewStoreKeyValueGETAPI200ResponseWithDefaults() *StoreKeyValueGETAPI200Response {
	this := StoreKeyValueGETAPI200Response{}
	return &this
}

// GetStatus returns the Status field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *StoreKeyValueGETAPI200Response) GetStatus() string {
	if o == nil || IsNil(o.Status.Get()) {
		var ret string
		return ret
	}
	return *o.Status.Get()
}

// GetStatusOk returns a tuple with the Status field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *StoreKeyValueGETAPI200Response) GetStatusOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Status.Get(), o.Status.IsSet()
}

// HasStatus returns a boolean if a field has been set.
func (o *StoreKeyValueGETAPI200Response) HasStatus() bool {
	if o != nil && o.Status.IsSet() {
		return true
	}

	return false
}

// SetStatus gets a reference to the given NullableString and assigns it to the Status field.
func (o *StoreKeyValueGETAPI200Response) SetStatus(v string) {
	o.Status.Set(&v)
}
// SetStatusNil sets the value for Status to be an explicit nil
func (o *StoreKeyValueGETAPI200Response) SetStatusNil() {
	o.Status.Set(nil)
}

// UnsetStatus ensures that no value is present for Status, not even an explicit nil
func (o *StoreKeyValueGETAPI200Response) UnsetStatus() {
	o.Status.Unset()
}

func (o StoreKeyValueGETAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o StoreKeyValueGETAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Status.IsSet() {
		toSerialize["status"] = o.Status.Get()
	}
	return toSerialize, nil
}

type NullableStoreKeyValueGETAPI200Response struct {
	value *StoreKeyValueGETAPI200Response
	isSet bool
}

func (v NullableStoreKeyValueGETAPI200Response) Get() *StoreKeyValueGETAPI200Response {
	return v.value
}

func (v *NullableStoreKeyValueGETAPI200Response) Set(val *StoreKeyValueGETAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableStoreKeyValueGETAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableStoreKeyValueGETAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableStoreKeyValueGETAPI200Response(val *StoreKeyValueGETAPI200Response) *NullableStoreKeyValueGETAPI200Response {
	return &NullableStoreKeyValueGETAPI200Response{value: val, isSet: true}
}

func (v NullableStoreKeyValueGETAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableStoreKeyValueGETAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


