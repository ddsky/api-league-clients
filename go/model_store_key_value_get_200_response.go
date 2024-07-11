/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.1
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the StoreKeyValueGET200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &StoreKeyValueGET200Response{}

// StoreKeyValueGET200Response struct for StoreKeyValueGET200Response
type StoreKeyValueGET200Response struct {
	Status NullableString `json:"status,omitempty"`
}

// NewStoreKeyValueGET200Response instantiates a new StoreKeyValueGET200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewStoreKeyValueGET200Response() *StoreKeyValueGET200Response {
	this := StoreKeyValueGET200Response{}
	return &this
}

// NewStoreKeyValueGET200ResponseWithDefaults instantiates a new StoreKeyValueGET200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewStoreKeyValueGET200ResponseWithDefaults() *StoreKeyValueGET200Response {
	this := StoreKeyValueGET200Response{}
	return &this
}

// GetStatus returns the Status field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *StoreKeyValueGET200Response) GetStatus() string {
	if o == nil || IsNil(o.Status.Get()) {
		var ret string
		return ret
	}
	return *o.Status.Get()
}

// GetStatusOk returns a tuple with the Status field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *StoreKeyValueGET200Response) GetStatusOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Status.Get(), o.Status.IsSet()
}

// HasStatus returns a boolean if a field has been set.
func (o *StoreKeyValueGET200Response) HasStatus() bool {
	if o != nil && o.Status.IsSet() {
		return true
	}

	return false
}

// SetStatus gets a reference to the given NullableString and assigns it to the Status field.
func (o *StoreKeyValueGET200Response) SetStatus(v string) {
	o.Status.Set(&v)
}
// SetStatusNil sets the value for Status to be an explicit nil
func (o *StoreKeyValueGET200Response) SetStatusNil() {
	o.Status.Set(nil)
}

// UnsetStatus ensures that no value is present for Status, not even an explicit nil
func (o *StoreKeyValueGET200Response) UnsetStatus() {
	o.Status.Unset()
}

func (o StoreKeyValueGET200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o StoreKeyValueGET200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Status.IsSet() {
		toSerialize["status"] = o.Status.Get()
	}
	return toSerialize, nil
}

type NullableStoreKeyValueGET200Response struct {
	value *StoreKeyValueGET200Response
	isSet bool
}

func (v NullableStoreKeyValueGET200Response) Get() *StoreKeyValueGET200Response {
	return v.value
}

func (v *NullableStoreKeyValueGET200Response) Set(val *StoreKeyValueGET200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableStoreKeyValueGET200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableStoreKeyValueGET200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableStoreKeyValueGET200Response(val *StoreKeyValueGET200Response) *NullableStoreKeyValueGET200Response {
	return &NullableStoreKeyValueGET200Response{value: val, isSet: true}
}

func (v NullableStoreKeyValueGET200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableStoreKeyValueGET200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


