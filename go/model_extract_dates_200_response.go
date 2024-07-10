/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ExtractDates200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractDates200Response{}

// ExtractDates200Response struct for ExtractDates200Response
type ExtractDates200Response struct {
	Dates []ExtractDates200ResponseDatesInner `json:"dates,omitempty"`
}

// NewExtractDates200Response instantiates a new ExtractDates200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractDates200Response() *ExtractDates200Response {
	this := ExtractDates200Response{}
	return &this
}

// NewExtractDates200ResponseWithDefaults instantiates a new ExtractDates200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractDates200ResponseWithDefaults() *ExtractDates200Response {
	this := ExtractDates200Response{}
	return &this
}

// GetDates returns the Dates field value if set, zero value otherwise.
func (o *ExtractDates200Response) GetDates() []ExtractDates200ResponseDatesInner {
	if o == nil || IsNil(o.Dates) {
		var ret []ExtractDates200ResponseDatesInner
		return ret
	}
	return o.Dates
}

// GetDatesOk returns a tuple with the Dates field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractDates200Response) GetDatesOk() ([]ExtractDates200ResponseDatesInner, bool) {
	if o == nil || IsNil(o.Dates) {
		return nil, false
	}
	return o.Dates, true
}

// HasDates returns a boolean if a field has been set.
func (o *ExtractDates200Response) HasDates() bool {
	if o != nil && !IsNil(o.Dates) {
		return true
	}

	return false
}

// SetDates gets a reference to the given []ExtractDates200ResponseDatesInner and assigns it to the Dates field.
func (o *ExtractDates200Response) SetDates(v []ExtractDates200ResponseDatesInner) {
	o.Dates = v
}

func (o ExtractDates200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractDates200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Dates) {
		toSerialize["dates"] = o.Dates
	}
	return toSerialize, nil
}

type NullableExtractDates200Response struct {
	value *ExtractDates200Response
	isSet bool
}

func (v NullableExtractDates200Response) Get() *ExtractDates200Response {
	return v.value
}

func (v *NullableExtractDates200Response) Set(val *ExtractDates200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractDates200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractDates200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractDates200Response(val *ExtractDates200Response) *NullableExtractDates200Response {
	return &NullableExtractDates200Response{value: val, isSet: true}
}

func (v NullableExtractDates200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractDates200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


