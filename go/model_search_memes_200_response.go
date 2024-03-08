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

// checks if the SearchMemes200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchMemes200Response{}

// SearchMemes200Response struct for SearchMemes200Response
type SearchMemes200Response struct {
	Memes []SearchMemes200ResponseMemesInner `json:"memes,omitempty"`
	Available *int32 `json:"available,omitempty"`
}

// NewSearchMemes200Response instantiates a new SearchMemes200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchMemes200Response() *SearchMemes200Response {
	this := SearchMemes200Response{}
	return &this
}

// NewSearchMemes200ResponseWithDefaults instantiates a new SearchMemes200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchMemes200ResponseWithDefaults() *SearchMemes200Response {
	this := SearchMemes200Response{}
	return &this
}

// GetMemes returns the Memes field value if set, zero value otherwise.
func (o *SearchMemes200Response) GetMemes() []SearchMemes200ResponseMemesInner {
	if o == nil || IsNil(o.Memes) {
		var ret []SearchMemes200ResponseMemesInner
		return ret
	}
	return o.Memes
}

// GetMemesOk returns a tuple with the Memes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchMemes200Response) GetMemesOk() ([]SearchMemes200ResponseMemesInner, bool) {
	if o == nil || IsNil(o.Memes) {
		return nil, false
	}
	return o.Memes, true
}

// HasMemes returns a boolean if a field has been set.
func (o *SearchMemes200Response) HasMemes() bool {
	if o != nil && !IsNil(o.Memes) {
		return true
	}

	return false
}

// SetMemes gets a reference to the given []SearchMemes200ResponseMemesInner and assigns it to the Memes field.
func (o *SearchMemes200Response) SetMemes(v []SearchMemes200ResponseMemesInner) {
	o.Memes = v
}

// GetAvailable returns the Available field value if set, zero value otherwise.
func (o *SearchMemes200Response) GetAvailable() int32 {
	if o == nil || IsNil(o.Available) {
		var ret int32
		return ret
	}
	return *o.Available
}

// GetAvailableOk returns a tuple with the Available field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchMemes200Response) GetAvailableOk() (*int32, bool) {
	if o == nil || IsNil(o.Available) {
		return nil, false
	}
	return o.Available, true
}

// HasAvailable returns a boolean if a field has been set.
func (o *SearchMemes200Response) HasAvailable() bool {
	if o != nil && !IsNil(o.Available) {
		return true
	}

	return false
}

// SetAvailable gets a reference to the given int32 and assigns it to the Available field.
func (o *SearchMemes200Response) SetAvailable(v int32) {
	o.Available = &v
}

func (o SearchMemes200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchMemes200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Memes) {
		toSerialize["memes"] = o.Memes
	}
	if !IsNil(o.Available) {
		toSerialize["available"] = o.Available
	}
	return toSerialize, nil
}

type NullableSearchMemes200Response struct {
	value *SearchMemes200Response
	isSet bool
}

func (v NullableSearchMemes200Response) Get() *SearchMemes200Response {
	return v.value
}

func (v *NullableSearchMemes200Response) Set(val *SearchMemes200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchMemes200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchMemes200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchMemes200Response(val *SearchMemes200Response) *NullableSearchMemes200Response {
	return &NullableSearchMemes200Response{value: val, isSet: true}
}

func (v NullableSearchMemes200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchMemes200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


