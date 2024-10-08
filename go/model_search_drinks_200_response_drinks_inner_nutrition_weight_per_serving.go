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

// checks if the SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing{}

// SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing struct for SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
type SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing struct {
	Amount *int32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
}

// NewSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing instantiates a new SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing() *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
	this := SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing{}
	return &this
}

// NewSearchDrinks200ResponseDrinksInnerNutritionWeightPerServingWithDefaults instantiates a new SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinks200ResponseDrinksInnerNutritionWeightPerServingWithDefaults() *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
	this := SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing{}
	return &this
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) GetAmount() int32 {
	if o == nil || IsNil(o.Amount) {
		var ret int32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) GetAmountOk() (*int32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given int32 and assigns it to the Amount field.
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) SetAmount(v int32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) UnsetUnit() {
	o.Unit.Unset()
}

func (o SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.Unit.IsSet() {
		toSerialize["unit"] = o.Unit.Get()
	}
	return toSerialize, nil
}

type NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing struct {
	value *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
	isSet bool
}

func (v NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) Get() *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
	return v.value
}

func (v *NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) Set(val *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing(val *SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) *NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing {
	return &NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing{value: val, isSet: true}
}

func (v NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


