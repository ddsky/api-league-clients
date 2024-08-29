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

// checks if the SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner{}

// SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner struct for SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner
type SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner struct {
	Name NullableString `json:"name,omitempty"`
	PercentOfDailyNeeds *float32 `json:"percent_of_daily_needs,omitempty"`
	Amount *float32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
}

// NewSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner instantiates a new SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner() *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner {
	this := SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner{}
	return &this
}

// NewSearchDrinks200ResponseDrinksInnerNutritionNutrientsInnerWithDefaults instantiates a new SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinks200ResponseDrinksInnerNutritionNutrientsInnerWithDefaults() *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner {
	this := SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) UnsetName() {
	o.Name.Unset()
}

// GetPercentOfDailyNeeds returns the PercentOfDailyNeeds field value if set, zero value otherwise.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetPercentOfDailyNeeds() float32 {
	if o == nil || IsNil(o.PercentOfDailyNeeds) {
		var ret float32
		return ret
	}
	return *o.PercentOfDailyNeeds
}

// GetPercentOfDailyNeedsOk returns a tuple with the PercentOfDailyNeeds field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetPercentOfDailyNeedsOk() (*float32, bool) {
	if o == nil || IsNil(o.PercentOfDailyNeeds) {
		return nil, false
	}
	return o.PercentOfDailyNeeds, true
}

// HasPercentOfDailyNeeds returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) HasPercentOfDailyNeeds() bool {
	if o != nil && !IsNil(o.PercentOfDailyNeeds) {
		return true
	}

	return false
}

// SetPercentOfDailyNeeds gets a reference to the given float32 and assigns it to the PercentOfDailyNeeds field.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) SetPercentOfDailyNeeds(v float32) {
	o.PercentOfDailyNeeds = &v
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetAmount() float32 {
	if o == nil || IsNil(o.Amount) {
		var ret float32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetAmountOk() (*float32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float32 and assigns it to the Amount field.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) SetAmount(v float32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) UnsetUnit() {
	o.Unit.Unset()
}

func (o SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.PercentOfDailyNeeds) {
		toSerialize["percent_of_daily_needs"] = o.PercentOfDailyNeeds
	}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.Unit.IsSet() {
		toSerialize["unit"] = o.Unit.Get()
	}
	return toSerialize, nil
}

type NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner struct {
	value *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner
	isSet bool
}

func (v NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) Get() *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner {
	return v.value
}

func (v *NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) Set(val *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner(val *SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) *NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner {
	return &NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner{value: val, isSet: true}
}

func (v NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


