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

// checks if the SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs{}

// SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs struct for SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
type SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs struct {
	UnitShort NullableString `json:"unit_short,omitempty"`
	Amount *int32 `json:"amount,omitempty"`
	UnitLong NullableString `json:"unit_long,omitempty"`
}

// NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs instantiates a new SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs() *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs {
	this := SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs{}
	return &this
}

// NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUsWithDefaults instantiates a new SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUsWithDefaults() *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs {
	this := SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs{}
	return &this
}

// GetUnitShort returns the UnitShort field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) GetUnitShort() string {
	if o == nil || IsNil(o.UnitShort.Get()) {
		var ret string
		return ret
	}
	return *o.UnitShort.Get()
}

// GetUnitShortOk returns a tuple with the UnitShort field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) GetUnitShortOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.UnitShort.Get(), o.UnitShort.IsSet()
}

// HasUnitShort returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) HasUnitShort() bool {
	if o != nil && o.UnitShort.IsSet() {
		return true
	}

	return false
}

// SetUnitShort gets a reference to the given NullableString and assigns it to the UnitShort field.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) SetUnitShort(v string) {
	o.UnitShort.Set(&v)
}
// SetUnitShortNil sets the value for UnitShort to be an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) SetUnitShortNil() {
	o.UnitShort.Set(nil)
}

// UnsetUnitShort ensures that no value is present for UnitShort, not even an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) UnsetUnitShort() {
	o.UnitShort.Unset()
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) GetAmount() int32 {
	if o == nil || IsNil(o.Amount) {
		var ret int32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) GetAmountOk() (*int32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given int32 and assigns it to the Amount field.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) SetAmount(v int32) {
	o.Amount = &v
}

// GetUnitLong returns the UnitLong field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) GetUnitLong() string {
	if o == nil || IsNil(o.UnitLong.Get()) {
		var ret string
		return ret
	}
	return *o.UnitLong.Get()
}

// GetUnitLongOk returns a tuple with the UnitLong field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) GetUnitLongOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.UnitLong.Get(), o.UnitLong.IsSet()
}

// HasUnitLong returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) HasUnitLong() bool {
	if o != nil && o.UnitLong.IsSet() {
		return true
	}

	return false
}

// SetUnitLong gets a reference to the given NullableString and assigns it to the UnitLong field.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) SetUnitLong(v string) {
	o.UnitLong.Set(&v)
}
// SetUnitLongNil sets the value for UnitLong to be an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) SetUnitLongNil() {
	o.UnitLong.Set(nil)
}

// UnsetUnitLong ensures that no value is present for UnitLong, not even an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) UnsetUnitLong() {
	o.UnitLong.Unset()
}

func (o SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) ToMap() (map[string]interface{}, error) {
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

type NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs struct {
	value *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
	isSet bool
}

func (v NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) Get() *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs {
	return v.value
}

func (v *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) Set(val *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs(val *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs {
	return &NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs{value: val, isSet: true}
}

func (v NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


