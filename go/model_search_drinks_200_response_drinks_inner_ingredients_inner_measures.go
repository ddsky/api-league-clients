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

// checks if the SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures{}

// SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures struct for SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
type SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures struct {
	Metric *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric `json:"metric,omitempty"`
	Us *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs `json:"us,omitempty"`
}

// NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures instantiates a new SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures() *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures {
	this := SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures{}
	return &this
}

// NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresWithDefaults instantiates a new SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresWithDefaults() *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures {
	this := SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures{}
	return &this
}

// GetMetric returns the Metric field value if set, zero value otherwise.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) GetMetric() SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
	if o == nil || IsNil(o.Metric) {
		var ret SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
		return ret
	}
	return *o.Metric
}

// GetMetricOk returns a tuple with the Metric field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) GetMetricOk() (*SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric, bool) {
	if o == nil || IsNil(o.Metric) {
		return nil, false
	}
	return o.Metric, true
}

// HasMetric returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) HasMetric() bool {
	if o != nil && !IsNil(o.Metric) {
		return true
	}

	return false
}

// SetMetric gets a reference to the given SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric and assigns it to the Metric field.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) SetMetric(v SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric) {
	o.Metric = &v
}

// GetUs returns the Us field value if set, zero value otherwise.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) GetUs() SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs {
	if o == nil || IsNil(o.Us) {
		var ret SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
		return ret
	}
	return *o.Us
}

// GetUsOk returns a tuple with the Us field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) GetUsOk() (*SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs, bool) {
	if o == nil || IsNil(o.Us) {
		return nil, false
	}
	return o.Us, true
}

// HasUs returns a boolean if a field has been set.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) HasUs() bool {
	if o != nil && !IsNil(o.Us) {
		return true
	}

	return false
}

// SetUs gets a reference to the given SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs and assigns it to the Us field.
func (o *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) SetUs(v SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs) {
	o.Us = &v
}

func (o SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Metric) {
		toSerialize["metric"] = o.Metric
	}
	if !IsNil(o.Us) {
		toSerialize["us"] = o.Us
	}
	return toSerialize, nil
}

type NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures struct {
	value *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
	isSet bool
}

func (v NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) Get() *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures {
	return v.value
}

func (v *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) Set(val *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures(val *SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures {
	return &NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures{value: val, isSet: true}
}

func (v NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


