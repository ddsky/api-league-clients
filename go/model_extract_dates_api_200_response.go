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

// checks if the ExtractDatesAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractDatesAPI200Response{}

// ExtractDatesAPI200Response struct for ExtractDatesAPI200Response
type ExtractDatesAPI200Response struct {
	Dates []ExtractDatesAPI200ResponseDatesInner `json:"dates,omitempty"`
}

// NewExtractDatesAPI200Response instantiates a new ExtractDatesAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractDatesAPI200Response() *ExtractDatesAPI200Response {
	this := ExtractDatesAPI200Response{}
	return &this
}

// NewExtractDatesAPI200ResponseWithDefaults instantiates a new ExtractDatesAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractDatesAPI200ResponseWithDefaults() *ExtractDatesAPI200Response {
	this := ExtractDatesAPI200Response{}
	return &this
}

// GetDates returns the Dates field value if set, zero value otherwise.
func (o *ExtractDatesAPI200Response) GetDates() []ExtractDatesAPI200ResponseDatesInner {
	if o == nil || IsNil(o.Dates) {
		var ret []ExtractDatesAPI200ResponseDatesInner
		return ret
	}
	return o.Dates
}

// GetDatesOk returns a tuple with the Dates field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractDatesAPI200Response) GetDatesOk() ([]ExtractDatesAPI200ResponseDatesInner, bool) {
	if o == nil || IsNil(o.Dates) {
		return nil, false
	}
	return o.Dates, true
}

// HasDates returns a boolean if a field has been set.
func (o *ExtractDatesAPI200Response) HasDates() bool {
	if o != nil && !IsNil(o.Dates) {
		return true
	}

	return false
}

// SetDates gets a reference to the given []ExtractDatesAPI200ResponseDatesInner and assigns it to the Dates field.
func (o *ExtractDatesAPI200Response) SetDates(v []ExtractDatesAPI200ResponseDatesInner) {
	o.Dates = v
}

func (o ExtractDatesAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractDatesAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Dates) {
		toSerialize["dates"] = o.Dates
	}
	return toSerialize, nil
}

type NullableExtractDatesAPI200Response struct {
	value *ExtractDatesAPI200Response
	isSet bool
}

func (v NullableExtractDatesAPI200Response) Get() *ExtractDatesAPI200Response {
	return v.value
}

func (v *NullableExtractDatesAPI200Response) Set(val *ExtractDatesAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractDatesAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractDatesAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractDatesAPI200Response(val *ExtractDatesAPI200Response) *NullableExtractDatesAPI200Response {
	return &NullableExtractDatesAPI200Response{value: val, isSet: true}
}

func (v NullableExtractDatesAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractDatesAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


