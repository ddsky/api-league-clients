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

// checks if the SearchRecipes200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRecipes200Response{}

// SearchRecipes200Response struct for SearchRecipes200Response
type SearchRecipes200Response struct {
	Offset *int32 `json:"offset,omitempty"`
	Number *int32 `json:"number,omitempty"`
	Recipes []SearchRecipes200ResponseRecipesInner `json:"recipes,omitempty"`
	TotalResults *int32 `json:"total_results,omitempty"`
}

// NewSearchRecipes200Response instantiates a new SearchRecipes200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRecipes200Response() *SearchRecipes200Response {
	this := SearchRecipes200Response{}
	return &this
}

// NewSearchRecipes200ResponseWithDefaults instantiates a new SearchRecipes200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRecipes200ResponseWithDefaults() *SearchRecipes200Response {
	this := SearchRecipes200Response{}
	return &this
}

// GetOffset returns the Offset field value if set, zero value otherwise.
func (o *SearchRecipes200Response) GetOffset() int32 {
	if o == nil || IsNil(o.Offset) {
		var ret int32
		return ret
	}
	return *o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200Response) GetOffsetOk() (*int32, bool) {
	if o == nil || IsNil(o.Offset) {
		return nil, false
	}
	return o.Offset, true
}

// HasOffset returns a boolean if a field has been set.
func (o *SearchRecipes200Response) HasOffset() bool {
	if o != nil && !IsNil(o.Offset) {
		return true
	}

	return false
}

// SetOffset gets a reference to the given int32 and assigns it to the Offset field.
func (o *SearchRecipes200Response) SetOffset(v int32) {
	o.Offset = &v
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *SearchRecipes200Response) GetNumber() int32 {
	if o == nil || IsNil(o.Number) {
		var ret int32
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200Response) GetNumberOk() (*int32, bool) {
	if o == nil || IsNil(o.Number) {
		return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *SearchRecipes200Response) HasNumber() bool {
	if o != nil && !IsNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given int32 and assigns it to the Number field.
func (o *SearchRecipes200Response) SetNumber(v int32) {
	o.Number = &v
}

// GetRecipes returns the Recipes field value if set, zero value otherwise.
func (o *SearchRecipes200Response) GetRecipes() []SearchRecipes200ResponseRecipesInner {
	if o == nil || IsNil(o.Recipes) {
		var ret []SearchRecipes200ResponseRecipesInner
		return ret
	}
	return o.Recipes
}

// GetRecipesOk returns a tuple with the Recipes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200Response) GetRecipesOk() ([]SearchRecipes200ResponseRecipesInner, bool) {
	if o == nil || IsNil(o.Recipes) {
		return nil, false
	}
	return o.Recipes, true
}

// HasRecipes returns a boolean if a field has been set.
func (o *SearchRecipes200Response) HasRecipes() bool {
	if o != nil && !IsNil(o.Recipes) {
		return true
	}

	return false
}

// SetRecipes gets a reference to the given []SearchRecipes200ResponseRecipesInner and assigns it to the Recipes field.
func (o *SearchRecipes200Response) SetRecipes(v []SearchRecipes200ResponseRecipesInner) {
	o.Recipes = v
}

// GetTotalResults returns the TotalResults field value if set, zero value otherwise.
func (o *SearchRecipes200Response) GetTotalResults() int32 {
	if o == nil || IsNil(o.TotalResults) {
		var ret int32
		return ret
	}
	return *o.TotalResults
}

// GetTotalResultsOk returns a tuple with the TotalResults field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200Response) GetTotalResultsOk() (*int32, bool) {
	if o == nil || IsNil(o.TotalResults) {
		return nil, false
	}
	return o.TotalResults, true
}

// HasTotalResults returns a boolean if a field has been set.
func (o *SearchRecipes200Response) HasTotalResults() bool {
	if o != nil && !IsNil(o.TotalResults) {
		return true
	}

	return false
}

// SetTotalResults gets a reference to the given int32 and assigns it to the TotalResults field.
func (o *SearchRecipes200Response) SetTotalResults(v int32) {
	o.TotalResults = &v
}

func (o SearchRecipes200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRecipes200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Offset) {
		toSerialize["offset"] = o.Offset
	}
	if !IsNil(o.Number) {
		toSerialize["number"] = o.Number
	}
	if !IsNil(o.Recipes) {
		toSerialize["recipes"] = o.Recipes
	}
	if !IsNil(o.TotalResults) {
		toSerialize["total_results"] = o.TotalResults
	}
	return toSerialize, nil
}

type NullableSearchRecipes200Response struct {
	value *SearchRecipes200Response
	isSet bool
}

func (v NullableSearchRecipes200Response) Get() *SearchRecipes200Response {
	return v.value
}

func (v *NullableSearchRecipes200Response) Set(val *SearchRecipes200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRecipes200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRecipes200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRecipes200Response(val *SearchRecipes200Response) *NullableSearchRecipes200Response {
	return &NullableSearchRecipes200Response{value: val, isSet: true}
}

func (v NullableSearchRecipes200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRecipes200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

