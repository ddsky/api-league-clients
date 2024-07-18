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

// checks if the SearchDrinks200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchDrinks200Response{}

// SearchDrinks200Response struct for SearchDrinks200Response
type SearchDrinks200Response struct {
	Offset *int32 `json:"offset,omitempty"`
	Number *int32 `json:"number,omitempty"`
	Drinks []SearchDrinks200ResponseDrinksInner `json:"drinks,omitempty"`
	TotalResults *int32 `json:"total_results,omitempty"`
}

// NewSearchDrinks200Response instantiates a new SearchDrinks200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchDrinks200Response() *SearchDrinks200Response {
	this := SearchDrinks200Response{}
	return &this
}

// NewSearchDrinks200ResponseWithDefaults instantiates a new SearchDrinks200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchDrinks200ResponseWithDefaults() *SearchDrinks200Response {
	this := SearchDrinks200Response{}
	return &this
}

// GetOffset returns the Offset field value if set, zero value otherwise.
func (o *SearchDrinks200Response) GetOffset() int32 {
	if o == nil || IsNil(o.Offset) {
		var ret int32
		return ret
	}
	return *o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200Response) GetOffsetOk() (*int32, bool) {
	if o == nil || IsNil(o.Offset) {
		return nil, false
	}
	return o.Offset, true
}

// HasOffset returns a boolean if a field has been set.
func (o *SearchDrinks200Response) HasOffset() bool {
	if o != nil && !IsNil(o.Offset) {
		return true
	}

	return false
}

// SetOffset gets a reference to the given int32 and assigns it to the Offset field.
func (o *SearchDrinks200Response) SetOffset(v int32) {
	o.Offset = &v
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *SearchDrinks200Response) GetNumber() int32 {
	if o == nil || IsNil(o.Number) {
		var ret int32
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200Response) GetNumberOk() (*int32, bool) {
	if o == nil || IsNil(o.Number) {
		return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *SearchDrinks200Response) HasNumber() bool {
	if o != nil && !IsNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given int32 and assigns it to the Number field.
func (o *SearchDrinks200Response) SetNumber(v int32) {
	o.Number = &v
}

// GetDrinks returns the Drinks field value if set, zero value otherwise.
func (o *SearchDrinks200Response) GetDrinks() []SearchDrinks200ResponseDrinksInner {
	if o == nil || IsNil(o.Drinks) {
		var ret []SearchDrinks200ResponseDrinksInner
		return ret
	}
	return o.Drinks
}

// GetDrinksOk returns a tuple with the Drinks field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200Response) GetDrinksOk() ([]SearchDrinks200ResponseDrinksInner, bool) {
	if o == nil || IsNil(o.Drinks) {
		return nil, false
	}
	return o.Drinks, true
}

// HasDrinks returns a boolean if a field has been set.
func (o *SearchDrinks200Response) HasDrinks() bool {
	if o != nil && !IsNil(o.Drinks) {
		return true
	}

	return false
}

// SetDrinks gets a reference to the given []SearchDrinks200ResponseDrinksInner and assigns it to the Drinks field.
func (o *SearchDrinks200Response) SetDrinks(v []SearchDrinks200ResponseDrinksInner) {
	o.Drinks = v
}

// GetTotalResults returns the TotalResults field value if set, zero value otherwise.
func (o *SearchDrinks200Response) GetTotalResults() int32 {
	if o == nil || IsNil(o.TotalResults) {
		var ret int32
		return ret
	}
	return *o.TotalResults
}

// GetTotalResultsOk returns a tuple with the TotalResults field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchDrinks200Response) GetTotalResultsOk() (*int32, bool) {
	if o == nil || IsNil(o.TotalResults) {
		return nil, false
	}
	return o.TotalResults, true
}

// HasTotalResults returns a boolean if a field has been set.
func (o *SearchDrinks200Response) HasTotalResults() bool {
	if o != nil && !IsNil(o.TotalResults) {
		return true
	}

	return false
}

// SetTotalResults gets a reference to the given int32 and assigns it to the TotalResults field.
func (o *SearchDrinks200Response) SetTotalResults(v int32) {
	o.TotalResults = &v
}

func (o SearchDrinks200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchDrinks200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Offset) {
		toSerialize["offset"] = o.Offset
	}
	if !IsNil(o.Number) {
		toSerialize["number"] = o.Number
	}
	if !IsNil(o.Drinks) {
		toSerialize["drinks"] = o.Drinks
	}
	if !IsNil(o.TotalResults) {
		toSerialize["total_results"] = o.TotalResults
	}
	return toSerialize, nil
}

type NullableSearchDrinks200Response struct {
	value *SearchDrinks200Response
	isSet bool
}

func (v NullableSearchDrinks200Response) Get() *SearchDrinks200Response {
	return v.value
}

func (v *NullableSearchDrinks200Response) Set(val *SearchDrinks200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchDrinks200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchDrinks200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchDrinks200Response(val *SearchDrinks200Response) *NullableSearchDrinks200Response {
	return &NullableSearchDrinks200Response{value: val, isSet: true}
}

func (v NullableSearchDrinks200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchDrinks200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

