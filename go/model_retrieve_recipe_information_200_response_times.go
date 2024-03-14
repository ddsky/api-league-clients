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

// checks if the RetrieveRecipeInformation200ResponseTimes type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseTimes{}

// RetrieveRecipeInformation200ResponseTimes struct for RetrieveRecipeInformation200ResponseTimes
type RetrieveRecipeInformation200ResponseTimes struct {
	TotalMinutes *int32 `json:"total_minutes,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseTimes instantiates a new RetrieveRecipeInformation200ResponseTimes object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseTimes() *RetrieveRecipeInformation200ResponseTimes {
	this := RetrieveRecipeInformation200ResponseTimes{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseTimesWithDefaults instantiates a new RetrieveRecipeInformation200ResponseTimes object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseTimesWithDefaults() *RetrieveRecipeInformation200ResponseTimes {
	this := RetrieveRecipeInformation200ResponseTimes{}
	return &this
}

// GetTotalMinutes returns the TotalMinutes field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseTimes) GetTotalMinutes() int32 {
	if o == nil || IsNil(o.TotalMinutes) {
		var ret int32
		return ret
	}
	return *o.TotalMinutes
}

// GetTotalMinutesOk returns a tuple with the TotalMinutes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseTimes) GetTotalMinutesOk() (*int32, bool) {
	if o == nil || IsNil(o.TotalMinutes) {
		return nil, false
	}
	return o.TotalMinutes, true
}

// HasTotalMinutes returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseTimes) HasTotalMinutes() bool {
	if o != nil && !IsNil(o.TotalMinutes) {
		return true
	}

	return false
}

// SetTotalMinutes gets a reference to the given int32 and assigns it to the TotalMinutes field.
func (o *RetrieveRecipeInformation200ResponseTimes) SetTotalMinutes(v int32) {
	o.TotalMinutes = &v
}

func (o RetrieveRecipeInformation200ResponseTimes) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseTimes) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.TotalMinutes) {
		toSerialize["total_minutes"] = o.TotalMinutes
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseTimes struct {
	value *RetrieveRecipeInformation200ResponseTimes
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseTimes) Get() *RetrieveRecipeInformation200ResponseTimes {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseTimes) Set(val *RetrieveRecipeInformation200ResponseTimes) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseTimes) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseTimes) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseTimes(val *RetrieveRecipeInformation200ResponseTimes) *NullableRetrieveRecipeInformation200ResponseTimes {
	return &NullableRetrieveRecipeInformation200ResponseTimes{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseTimes) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseTimes) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


