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

// checks if the SearchWeb200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchWeb200Response{}

// SearchWeb200Response struct for SearchWeb200Response
type SearchWeb200Response struct {
	Results []SearchWeb200ResponseResultsInner `json:"results,omitempty"`
}

// NewSearchWeb200Response instantiates a new SearchWeb200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchWeb200Response() *SearchWeb200Response {
	this := SearchWeb200Response{}
	return &this
}

// NewSearchWeb200ResponseWithDefaults instantiates a new SearchWeb200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchWeb200ResponseWithDefaults() *SearchWeb200Response {
	this := SearchWeb200Response{}
	return &this
}

// GetResults returns the Results field value if set, zero value otherwise.
func (o *SearchWeb200Response) GetResults() []SearchWeb200ResponseResultsInner {
	if o == nil || IsNil(o.Results) {
		var ret []SearchWeb200ResponseResultsInner
		return ret
	}
	return o.Results
}

// GetResultsOk returns a tuple with the Results field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchWeb200Response) GetResultsOk() ([]SearchWeb200ResponseResultsInner, bool) {
	if o == nil || IsNil(o.Results) {
		return nil, false
	}
	return o.Results, true
}

// HasResults returns a boolean if a field has been set.
func (o *SearchWeb200Response) HasResults() bool {
	if o != nil && !IsNil(o.Results) {
		return true
	}

	return false
}

// SetResults gets a reference to the given []SearchWeb200ResponseResultsInner and assigns it to the Results field.
func (o *SearchWeb200Response) SetResults(v []SearchWeb200ResponseResultsInner) {
	o.Results = v
}

func (o SearchWeb200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchWeb200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Results) {
		toSerialize["results"] = o.Results
	}
	return toSerialize, nil
}

type NullableSearchWeb200Response struct {
	value *SearchWeb200Response
	isSet bool
}

func (v NullableSearchWeb200Response) Get() *SearchWeb200Response {
	return v.value
}

func (v *NullableSearchWeb200Response) Set(val *SearchWeb200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchWeb200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchWeb200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchWeb200Response(val *SearchWeb200Response) *NullableSearchWeb200Response {
	return &NullableSearchWeb200Response{value: val, isSet: true}
}

func (v NullableSearchWeb200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchWeb200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


