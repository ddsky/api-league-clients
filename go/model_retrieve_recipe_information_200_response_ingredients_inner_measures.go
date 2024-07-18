/*
API League

API League is a Hub for World Class APIs.

API version: 1.5.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseIngredientsInnerMeasures type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseIngredientsInnerMeasures{}

// RetrieveRecipeInformation200ResponseIngredientsInnerMeasures struct for RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
type RetrieveRecipeInformation200ResponseIngredientsInnerMeasures struct {
	Metric *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric `json:"metric,omitempty"`
	Us *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric `json:"us,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseIngredientsInnerMeasures instantiates a new RetrieveRecipeInformation200ResponseIngredientsInnerMeasures object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseIngredientsInnerMeasures() *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
	this := RetrieveRecipeInformation200ResponseIngredientsInnerMeasures{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseIngredientsInnerMeasuresWithDefaults instantiates a new RetrieveRecipeInformation200ResponseIngredientsInnerMeasures object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseIngredientsInnerMeasuresWithDefaults() *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
	this := RetrieveRecipeInformation200ResponseIngredientsInnerMeasures{}
	return &this
}

// GetMetric returns the Metric field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) GetMetric() SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	if o == nil || IsNil(o.Metric) {
		var ret SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
		return ret
	}
	return *o.Metric
}

// GetMetricOk returns a tuple with the Metric field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) GetMetricOk() (*SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric, bool) {
	if o == nil || IsNil(o.Metric) {
		return nil, false
	}
	return o.Metric, true
}

// HasMetric returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) HasMetric() bool {
	if o != nil && !IsNil(o.Metric) {
		return true
	}

	return false
}

// SetMetric gets a reference to the given SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric and assigns it to the Metric field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) SetMetric(v SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric) {
	o.Metric = &v
}

// GetUs returns the Us field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) GetUs() SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	if o == nil || IsNil(o.Us) {
		var ret SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
		return ret
	}
	return *o.Us
}

// GetUsOk returns a tuple with the Us field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) GetUsOk() (*SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric, bool) {
	if o == nil || IsNil(o.Us) {
		return nil, false
	}
	return o.Us, true
}

// HasUs returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) HasUs() bool {
	if o != nil && !IsNil(o.Us) {
		return true
	}

	return false
}

// SetUs gets a reference to the given SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric and assigns it to the Us field.
func (o *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) SetUs(v SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric) {
	o.Us = &v
}

func (o RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Metric) {
		toSerialize["metric"] = o.Metric
	}
	if !IsNil(o.Us) {
		toSerialize["us"] = o.Us
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures struct {
	value *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures) Get() *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures) Set(val *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures(val *RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) *NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
	return &NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseIngredientsInnerMeasures) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


