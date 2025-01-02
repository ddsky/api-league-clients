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

// checks if the SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric{}

// SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric struct for SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
type SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric struct {
	UnitShort NullableString `json:"unit_short,omitempty"`
	Amount *float32 `json:"amount,omitempty"`
	UnitLong NullableString `json:"unit_long,omitempty"`
}

// NewSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric instantiates a new SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric() *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	this := SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric{}
	return &this
}

// NewSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetricWithDefaults instantiates a new SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetricWithDefaults() *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	this := SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric{}
	return &this
}

// GetUnitShort returns the UnitShort field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) GetUnitShort() string {
	if o == nil || IsNil(o.UnitShort.Get()) {
		var ret string
		return ret
	}
	return *o.UnitShort.Get()
}

// GetUnitShortOk returns a tuple with the UnitShort field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) GetUnitShortOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.UnitShort.Get(), o.UnitShort.IsSet()
}

// HasUnitShort returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) HasUnitShort() bool {
	if o != nil && o.UnitShort.IsSet() {
		return true
	}

	return false
}

// SetUnitShort gets a reference to the given NullableString and assigns it to the UnitShort field.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) SetUnitShort(v string) {
	o.UnitShort.Set(&v)
}
// SetUnitShortNil sets the value for UnitShort to be an explicit nil
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) SetUnitShortNil() {
	o.UnitShort.Set(nil)
}

// UnsetUnitShort ensures that no value is present for UnitShort, not even an explicit nil
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) UnsetUnitShort() {
	o.UnitShort.Unset()
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) GetAmount() float32 {
	if o == nil || IsNil(o.Amount) {
		var ret float32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) GetAmountOk() (*float32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float32 and assigns it to the Amount field.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) SetAmount(v float32) {
	o.Amount = &v
}

// GetUnitLong returns the UnitLong field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) GetUnitLong() string {
	if o == nil || IsNil(o.UnitLong.Get()) {
		var ret string
		return ret
	}
	return *o.UnitLong.Get()
}

// GetUnitLongOk returns a tuple with the UnitLong field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) GetUnitLongOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.UnitLong.Get(), o.UnitLong.IsSet()
}

// HasUnitLong returns a boolean if a field has been set.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) HasUnitLong() bool {
	if o != nil && o.UnitLong.IsSet() {
		return true
	}

	return false
}

// SetUnitLong gets a reference to the given NullableString and assigns it to the UnitLong field.
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) SetUnitLong(v string) {
	o.UnitLong.Set(&v)
}
// SetUnitLongNil sets the value for UnitLong to be an explicit nil
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) SetUnitLongNil() {
	o.UnitLong.Set(nil)
}

// UnsetUnitLong ensures that no value is present for UnitLong, not even an explicit nil
func (o *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) UnsetUnitLong() {
	o.UnitLong.Unset()
}

func (o SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.UnitShort.IsSet() {
		toSerialize["unit_short"] = o.UnitShort.Get()
	}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.UnitLong.IsSet() {
		toSerialize["unit_long"] = o.UnitLong.Get()
	}
	return toSerialize, nil
}

type NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric struct {
	value *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
	isSet bool
}

func (v NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) Get() *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	return v.value
}

func (v *NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) Set(val *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric(val *SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) *NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	return &NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric{value: val, isSet: true}
}

func (v NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


