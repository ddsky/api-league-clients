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

// checks if the SearchIconsAPI200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchIconsAPI200Response{}

// SearchIconsAPI200Response struct for SearchIconsAPI200Response
type SearchIconsAPI200Response struct {
	Icons []SearchRoyaltyFreeImagesAPI200ResponseImagesInner `json:"icons,omitempty"`
}

// NewSearchIconsAPI200Response instantiates a new SearchIconsAPI200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchIconsAPI200Response() *SearchIconsAPI200Response {
	this := SearchIconsAPI200Response{}
	return &this
}

// NewSearchIconsAPI200ResponseWithDefaults instantiates a new SearchIconsAPI200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchIconsAPI200ResponseWithDefaults() *SearchIconsAPI200Response {
	this := SearchIconsAPI200Response{}
	return &this
}

// GetIcons returns the Icons field value if set, zero value otherwise.
func (o *SearchIconsAPI200Response) GetIcons() []SearchRoyaltyFreeImagesAPI200ResponseImagesInner {
	if o == nil || IsNil(o.Icons) {
		var ret []SearchRoyaltyFreeImagesAPI200ResponseImagesInner
		return ret
	}
	return o.Icons
}

// GetIconsOk returns a tuple with the Icons field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchIconsAPI200Response) GetIconsOk() ([]SearchRoyaltyFreeImagesAPI200ResponseImagesInner, bool) {
	if o == nil || IsNil(o.Icons) {
		return nil, false
	}
	return o.Icons, true
}

// HasIcons returns a boolean if a field has been set.
func (o *SearchIconsAPI200Response) HasIcons() bool {
	if o != nil && !IsNil(o.Icons) {
		return true
	}

	return false
}

// SetIcons gets a reference to the given []SearchRoyaltyFreeImagesAPI200ResponseImagesInner and assigns it to the Icons field.
func (o *SearchIconsAPI200Response) SetIcons(v []SearchRoyaltyFreeImagesAPI200ResponseImagesInner) {
	o.Icons = v
}

func (o SearchIconsAPI200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchIconsAPI200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Icons) {
		toSerialize["icons"] = o.Icons
	}
	return toSerialize, nil
}

type NullableSearchIconsAPI200Response struct {
	value *SearchIconsAPI200Response
	isSet bool
}

func (v NullableSearchIconsAPI200Response) Get() *SearchIconsAPI200Response {
	return v.value
}

func (v *NullableSearchIconsAPI200Response) Set(val *SearchIconsAPI200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchIconsAPI200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchIconsAPI200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchIconsAPI200Response(val *SearchIconsAPI200Response) *NullableSearchIconsAPI200Response {
	return &NullableSearchIconsAPI200Response{value: val, isSet: true}
}

func (v NullableSearchIconsAPI200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchIconsAPI200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


