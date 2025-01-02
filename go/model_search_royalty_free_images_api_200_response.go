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

// checks if the SearchRoyaltyFreeImagesAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRoyaltyFreeImagesAPI200Response{}

// SearchRoyaltyFreeImagesAPI200Response struct for SearchRoyaltyFreeImagesAPI200Response
type SearchRoyaltyFreeImagesAPI200Response struct {
	Images []SearchRoyaltyFreeImagesAPI200ResponseImagesInner `json:"images,omitempty"`
}

// NewSearchRoyaltyFreeImagesAPI200Response instantiates a new SearchRoyaltyFreeImagesAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRoyaltyFreeImagesAPI200Response() *SearchRoyaltyFreeImagesAPI200Response {
	this := SearchRoyaltyFreeImagesAPI200Response{}
	return &this
}

// NewSearchRoyaltyFreeImagesAPI200ResponseWithDefaults instantiates a new SearchRoyaltyFreeImagesAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRoyaltyFreeImagesAPI200ResponseWithDefaults() *SearchRoyaltyFreeImagesAPI200Response {
	this := SearchRoyaltyFreeImagesAPI200Response{}
	return &this
}

// GetImages returns the Images field value if set, zero value otherwise.
func (o *SearchRoyaltyFreeImagesAPI200Response) GetImages() []SearchRoyaltyFreeImagesAPI200ResponseImagesInner {
	if o == nil || IsNil(o.Images) {
		var ret []SearchRoyaltyFreeImagesAPI200ResponseImagesInner
		return ret
	}
	return o.Images
}

// GetImagesOk returns a tuple with the Images field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRoyaltyFreeImagesAPI200Response) GetImagesOk() ([]SearchRoyaltyFreeImagesAPI200ResponseImagesInner, bool) {
	if o == nil || IsNil(o.Images) {
		return nil, false
	}
	return o.Images, true
}

// HasImages returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImagesAPI200Response) HasImages() bool {
	if o != nil && !IsNil(o.Images) {
		return true
	}

	return false
}

// SetImages gets a reference to the given []SearchRoyaltyFreeImagesAPI200ResponseImagesInner and assigns it to the Images field.
func (o *SearchRoyaltyFreeImagesAPI200Response) SetImages(v []SearchRoyaltyFreeImagesAPI200ResponseImagesInner) {
	o.Images = v
}

func (o SearchRoyaltyFreeImagesAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRoyaltyFreeImagesAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Images) {
		toSerialize["images"] = o.Images
	}
	return toSerialize, nil
}

type NullableSearchRoyaltyFreeImagesAPI200Response struct {
	value *SearchRoyaltyFreeImagesAPI200Response
	isSet bool
}

func (v NullableSearchRoyaltyFreeImagesAPI200Response) Get() *SearchRoyaltyFreeImagesAPI200Response {
	return v.value
}

func (v *NullableSearchRoyaltyFreeImagesAPI200Response) Set(val *SearchRoyaltyFreeImagesAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRoyaltyFreeImagesAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRoyaltyFreeImagesAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRoyaltyFreeImagesAPI200Response(val *SearchRoyaltyFreeImagesAPI200Response) *NullableSearchRoyaltyFreeImagesAPI200Response {
	return &NullableSearchRoyaltyFreeImagesAPI200Response{value: val, isSet: true}
}

func (v NullableSearchRoyaltyFreeImagesAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRoyaltyFreeImagesAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

