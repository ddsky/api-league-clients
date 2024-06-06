/*
API League

API League is a Hub for World Class APIs.

API version: 1.2.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner{}

// SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner struct for SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
type SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner struct {
	Name NullableString `json:"name,omitempty"`
	Amount *float32 `json:"amount,omitempty"`
	Unit NullableString `json:"unit,omitempty"`
}

// NewSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner instantiates a new SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner() *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
	this := SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner{}
	return &this
}

// NewSearchRecipes200ResponseRecipesInnerNutritionNutrientsInnerWithDefaults instantiates a new SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRecipes200ResponseRecipesInnerNutritionNutrientsInnerWithDefaults() *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
	this := SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) UnsetName() {
	o.Name.Unset()
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) GetAmount() float32 {
	if o == nil || IsNil(o.Amount) {
		var ret float32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) GetAmountOk() (*float32, bool) {
	if o == nil || IsNil(o.Amount) {
		return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) HasAmount() bool {
	if o != nil && !IsNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float32 and assigns it to the Amount field.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) SetAmount(v float32) {
	o.Amount = &v
}

// GetUnit returns the Unit field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) GetUnit() string {
	if o == nil || IsNil(o.Unit.Get()) {
		var ret string
		return ret
	}
	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// HasUnit returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) HasUnit() bool {
	if o != nil && o.Unit.IsSet() {
		return true
	}

	return false
}

// SetUnit gets a reference to the given NullableString and assigns it to the Unit field.
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) SetUnit(v string) {
	o.Unit.Set(&v)
}
// SetUnitNil sets the value for Unit to be an explicit nil
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) SetUnitNil() {
	o.Unit.Set(nil)
}

// UnsetUnit ensures that no value is present for Unit, not even an explicit nil
func (o *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) UnsetUnit() {
	o.Unit.Unset()
}

func (o SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if o.Unit.IsSet() {
		toSerialize["unit"] = o.Unit.Get()
	}
	return toSerialize, nil
}

type NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner struct {
	value *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
	isSet bool
}

func (v NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) Get() *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
	return v.value
}

func (v *NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) Set(val *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner(val *SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) *NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
	return &NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner{value: val, isSet: true}
}

func (v NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


