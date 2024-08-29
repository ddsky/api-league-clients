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

// checks if the ExtractPublishDate200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractPublishDate200Response{}

// ExtractPublishDate200Response struct for ExtractPublishDate200Response
type ExtractPublishDate200Response struct {
	PublishDate NullableString `json:"publish_date,omitempty"`
}

// NewExtractPublishDate200Response instantiates a new ExtractPublishDate200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractPublishDate200Response() *ExtractPublishDate200Response {
	this := ExtractPublishDate200Response{}
	return &this
}

// NewExtractPublishDate200ResponseWithDefaults instantiates a new ExtractPublishDate200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractPublishDate200ResponseWithDefaults() *ExtractPublishDate200Response {
	this := ExtractPublishDate200Response{}
	return &this
}

// GetPublishDate returns the PublishDate field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractPublishDate200Response) GetPublishDate() string {
	if o == nil || IsNil(o.PublishDate.Get()) {
		var ret string
		return ret
	}
	return *o.PublishDate.Get()
}

// GetPublishDateOk returns a tuple with the PublishDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractPublishDate200Response) GetPublishDateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PublishDate.Get(), o.PublishDate.IsSet()
}

// HasPublishDate returns a boolean if a field has been set.
func (o *ExtractPublishDate200Response) HasPublishDate() bool {
	if o != nil && o.PublishDate.IsSet() {
		return true
	}

	return false
}

// SetPublishDate gets a reference to the given NullableString and assigns it to the PublishDate field.
func (o *ExtractPublishDate200Response) SetPublishDate(v string) {
	o.PublishDate.Set(&v)
}
// SetPublishDateNil sets the value for PublishDate to be an explicit nil
func (o *ExtractPublishDate200Response) SetPublishDateNil() {
	o.PublishDate.Set(nil)
}

// UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
func (o *ExtractPublishDate200Response) UnsetPublishDate() {
	o.PublishDate.Unset()
}

func (o ExtractPublishDate200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractPublishDate200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.PublishDate.IsSet() {
		toSerialize["publish_date"] = o.PublishDate.Get()
	}
	return toSerialize, nil
}

type NullableExtractPublishDate200Response struct {
	value *ExtractPublishDate200Response
	isSet bool
}

func (v NullableExtractPublishDate200Response) Get() *ExtractPublishDate200Response {
	return v.value
}

func (v *NullableExtractPublishDate200Response) Set(val *ExtractPublishDate200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractPublishDate200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractPublishDate200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractPublishDate200Response(val *ExtractPublishDate200Response) *NullableExtractPublishDate200Response {
	return &NullableExtractPublishDate200Response{value: val, isSet: true}
}

func (v NullableExtractPublishDate200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractPublishDate200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


