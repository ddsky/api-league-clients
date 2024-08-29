/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchRecipes200ResponseRecipesInnerNutrition type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRecipes200ResponseRecipesInnerNutrition{}

// SearchRecipes200ResponseRecipesInnerNutrition struct for SearchRecipes200ResponseRecipesInnerNutrition
type SearchRecipes200ResponseRecipesInnerNutrition struct {
	Nutrients []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner `json:"nutrients,omitempty"`
}

// NewSearchRecipes200ResponseRecipesInnerNutrition instantiates a new SearchRecipes200ResponseRecipesInnerNutrition object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRecipes200ResponseRecipesInnerNutrition() *SearchRecipes200ResponseRecipesInnerNutrition {
	this := SearchRecipes200ResponseRecipesInnerNutrition{}
	return &this
}

// NewSearchRecipes200ResponseRecipesInnerNutritionWithDefaults instantiates a new SearchRecipes200ResponseRecipesInnerNutrition object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRecipes200ResponseRecipesInnerNutritionWithDefaults() *SearchRecipes200ResponseRecipesInnerNutrition {
	this := SearchRecipes200ResponseRecipesInnerNutrition{}
	return &this
}

// GetNutrients returns the Nutrients field value if set, zero value otherwise.
func (o *SearchRecipes200ResponseRecipesInnerNutrition) GetNutrients() []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
	if o == nil || IsNil(o.Nutrients) {
		var ret []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
		return ret
	}
	return o.Nutrients
}

// GetNutrientsOk returns a tuple with the Nutrients field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200ResponseRecipesInnerNutrition) GetNutrientsOk() ([]SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner, bool) {
	if o == nil || IsNil(o.Nutrients) {
		return nil, false
	}
	return o.Nutrients, true
}

// HasNutrients returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInnerNutrition) HasNutrients() bool {
	if o != nil && !IsNil(o.Nutrients) {
		return true
	}

	return false
}

// SetNutrients gets a reference to the given []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner and assigns it to the Nutrients field.
func (o *SearchRecipes200ResponseRecipesInnerNutrition) SetNutrients(v []SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner) {
	o.Nutrients = v
}

func (o SearchRecipes200ResponseRecipesInnerNutrition) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRecipes200ResponseRecipesInnerNutrition) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Nutrients) {
		toSerialize["nutrients"] = o.Nutrients
	}
	return toSerialize, nil
}

type NullableSearchRecipes200ResponseRecipesInnerNutrition struct {
	value *SearchRecipes200ResponseRecipesInnerNutrition
	isSet bool
}

func (v NullableSearchRecipes200ResponseRecipesInnerNutrition) Get() *SearchRecipes200ResponseRecipesInnerNutrition {
	return v.value
}

func (v *NullableSearchRecipes200ResponseRecipesInnerNutrition) Set(val *SearchRecipes200ResponseRecipesInnerNutrition) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRecipes200ResponseRecipesInnerNutrition) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRecipes200ResponseRecipesInnerNutrition) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRecipes200ResponseRecipesInnerNutrition(val *SearchRecipes200ResponseRecipesInnerNutrition) *NullableSearchRecipes200ResponseRecipesInnerNutrition {
	return &NullableSearchRecipes200ResponseRecipesInnerNutrition{value: val, isSet: true}
}

func (v NullableSearchRecipes200ResponseRecipesInnerNutrition) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRecipes200ResponseRecipesInnerNutrition) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


