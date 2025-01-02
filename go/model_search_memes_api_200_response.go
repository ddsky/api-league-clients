/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.4
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchMemesAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchMemesAPI200Response{}

// SearchMemesAPI200Response struct for SearchMemesAPI200Response
type SearchMemesAPI200Response struct {
	Memes []SearchMemesAPI200ResponseMemesInner `json:"memes,omitempty"`
	Available *int32 `json:"available,omitempty"`
}

// NewSearchMemesAPI200Response instantiates a new SearchMemesAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchMemesAPI200Response() *SearchMemesAPI200Response {
	this := SearchMemesAPI200Response{}
	return &this
}

// NewSearchMemesAPI200ResponseWithDefaults instantiates a new SearchMemesAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchMemesAPI200ResponseWithDefaults() *SearchMemesAPI200Response {
	this := SearchMemesAPI200Response{}
	return &this
}

// GetMemes returns the Memes field value if set, zero value otherwise.
func (o *SearchMemesAPI200Response) GetMemes() []SearchMemesAPI200ResponseMemesInner {
	if o == nil || IsNil(o.Memes) {
		var ret []SearchMemesAPI200ResponseMemesInner
		return ret
	}
	return o.Memes
}

// GetMemesOk returns a tuple with the Memes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchMemesAPI200Response) GetMemesOk() ([]SearchMemesAPI200ResponseMemesInner, bool) {
	if o == nil || IsNil(o.Memes) {
		return nil, false
	}
	return o.Memes, true
}

// HasMemes returns a boolean if a field has been set.
func (o *SearchMemesAPI200Response) HasMemes() bool {
	if o != nil && !IsNil(o.Memes) {
		return true
	}

	return false
}

// SetMemes gets a reference to the given []SearchMemesAPI200ResponseMemesInner and assigns it to the Memes field.
func (o *SearchMemesAPI200Response) SetMemes(v []SearchMemesAPI200ResponseMemesInner) {
	o.Memes = v
}

// GetAvailable returns the Available field value if set, zero value otherwise.
func (o *SearchMemesAPI200Response) GetAvailable() int32 {
	if o == nil || IsNil(o.Available) {
		var ret int32
		return ret
	}
	return *o.Available
}

// GetAvailableOk returns a tuple with the Available field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchMemesAPI200Response) GetAvailableOk() (*int32, bool) {
	if o == nil || IsNil(o.Available) {
		return nil, false
	}
	return o.Available, true
}

// HasAvailable returns a boolean if a field has been set.
func (o *SearchMemesAPI200Response) HasAvailable() bool {
	if o != nil && !IsNil(o.Available) {
		return true
	}

	return false
}

// SetAvailable gets a reference to the given int32 and assigns it to the Available field.
func (o *SearchMemesAPI200Response) SetAvailable(v int32) {
	o.Available = &v
}

func (o SearchMemesAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchMemesAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Memes) {
		toSerialize["memes"] = o.Memes
	}
	if !IsNil(o.Available) {
		toSerialize["available"] = o.Available
	}
	return toSerialize, nil
}

type NullableSearchMemesAPI200Response struct {
	value *SearchMemesAPI200Response
	isSet bool
}

func (v NullableSearchMemesAPI200Response) Get() *SearchMemesAPI200Response {
	return v.value
}

func (v *NullableSearchMemesAPI200Response) Set(val *SearchMemesAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchMemesAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchMemesAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchMemesAPI200Response(val *SearchMemesAPI200Response) *NullableSearchMemesAPI200Response {
	return &NullableSearchMemesAPI200Response{value: val, isSet: true}
}

func (v NullableSearchMemesAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchMemesAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


