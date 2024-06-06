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

// checks if the SearchGifs200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchGifs200Response{}

// SearchGifs200Response struct for SearchGifs200Response
type SearchGifs200Response struct {
	Images []SearchGifs200ResponseImagesInner `json:"images,omitempty"`
}

// NewSearchGifs200Response instantiates a new SearchGifs200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchGifs200Response() *SearchGifs200Response {
	this := SearchGifs200Response{}
	return &this
}

// NewSearchGifs200ResponseWithDefaults instantiates a new SearchGifs200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchGifs200ResponseWithDefaults() *SearchGifs200Response {
	this := SearchGifs200Response{}
	return &this
}

// GetImages returns the Images field value if set, zero value otherwise.
func (o *SearchGifs200Response) GetImages() []SearchGifs200ResponseImagesInner {
	if o == nil || IsNil(o.Images) {
		var ret []SearchGifs200ResponseImagesInner
		return ret
	}
	return o.Images
}

// GetImagesOk returns a tuple with the Images field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchGifs200Response) GetImagesOk() ([]SearchGifs200ResponseImagesInner, bool) {
	if o == nil || IsNil(o.Images) {
		return nil, false
	}
	return o.Images, true
}

// HasImages returns a boolean if a field has been set.
func (o *SearchGifs200Response) HasImages() bool {
	if o != nil && !IsNil(o.Images) {
		return true
	}

	return false
}

// SetImages gets a reference to the given []SearchGifs200ResponseImagesInner and assigns it to the Images field.
func (o *SearchGifs200Response) SetImages(v []SearchGifs200ResponseImagesInner) {
	o.Images = v
}

func (o SearchGifs200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchGifs200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Images) {
		toSerialize["images"] = o.Images
	}
	return toSerialize, nil
}

type NullableSearchGifs200Response struct {
	value *SearchGifs200Response
	isSet bool
}

func (v NullableSearchGifs200Response) Get() *SearchGifs200Response {
	return v.value
}

func (v *NullableSearchGifs200Response) Set(val *SearchGifs200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchGifs200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchGifs200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchGifs200Response(val *SearchGifs200Response) *NullableSearchGifs200Response {
	return &NullableSearchGifs200Response{value: val, isSet: true}
}

func (v NullableSearchGifs200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchGifs200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


