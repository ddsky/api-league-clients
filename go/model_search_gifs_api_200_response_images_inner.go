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

// checks if the SearchGifsAPI200ResponseImagesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchGifsAPI200ResponseImagesInner{}

// SearchGifsAPI200ResponseImagesInner struct for SearchGifsAPI200ResponseImagesInner
type SearchGifsAPI200ResponseImagesInner struct {
	Width *int32 `json:"width,omitempty"`
	Url NullableString `json:"url,omitempty"`
	Height *int32 `json:"height,omitempty"`
}

// NewSearchGifsAPI200ResponseImagesInner instantiates a new SearchGifsAPI200ResponseImagesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchGifsAPI200ResponseImagesInner() *SearchGifsAPI200ResponseImagesInner {
	this := SearchGifsAPI200ResponseImagesInner{}
	return &this
}

// NewSearchGifsAPI200ResponseImagesInnerWithDefaults instantiates a new SearchGifsAPI200ResponseImagesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchGifsAPI200ResponseImagesInnerWithDefaults() *SearchGifsAPI200ResponseImagesInner {
	this := SearchGifsAPI200ResponseImagesInner{}
	return &this
}

// GetWidth returns the Width field value if set, zero value otherwise.
func (o *SearchGifsAPI200ResponseImagesInner) GetWidth() int32 {
	if o == nil || IsNil(o.Width) {
		var ret int32
		return ret
	}
	return *o.Width
}

// GetWidthOk returns a tuple with the Width field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchGifsAPI200ResponseImagesInner) GetWidthOk() (*int32, bool) {
	if o == nil || IsNil(o.Width) {
		return nil, false
	}
	return o.Width, true
}

// HasWidth returns a boolean if a field has been set.
func (o *SearchGifsAPI200ResponseImagesInner) HasWidth() bool {
	if o != nil && !IsNil(o.Width) {
		return true
	}

	return false
}

// SetWidth gets a reference to the given int32 and assigns it to the Width field.
func (o *SearchGifsAPI200ResponseImagesInner) SetWidth(v int32) {
	o.Width = &v
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchGifsAPI200ResponseImagesInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchGifsAPI200ResponseImagesInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *SearchGifsAPI200ResponseImagesInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *SearchGifsAPI200ResponseImagesInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *SearchGifsAPI200ResponseImagesInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *SearchGifsAPI200ResponseImagesInner) UnsetUrl() {
	o.Url.Unset()
}

// GetHeight returns the Height field value if set, zero value otherwise.
func (o *SearchGifsAPI200ResponseImagesInner) GetHeight() int32 {
	if o == nil || IsNil(o.Height) {
		var ret int32
		return ret
	}
	return *o.Height
}

// GetHeightOk returns a tuple with the Height field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchGifsAPI200ResponseImagesInner) GetHeightOk() (*int32, bool) {
	if o == nil || IsNil(o.Height) {
		return nil, false
	}
	return o.Height, true
}

// HasHeight returns a boolean if a field has been set.
func (o *SearchGifsAPI200ResponseImagesInner) HasHeight() bool {
	if o != nil && !IsNil(o.Height) {
		return true
	}

	return false
}

// SetHeight gets a reference to the given int32 and assigns it to the Height field.
func (o *SearchGifsAPI200ResponseImagesInner) SetHeight(v int32) {
	o.Height = &v
}

func (o SearchGifsAPI200ResponseImagesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchGifsAPI200ResponseImagesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Width) {
		toSerialize["width"] = o.Width
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if !IsNil(o.Height) {
		toSerialize["height"] = o.Height
	}
	return toSerialize, nil
}

type NullableSearchGifsAPI200ResponseImagesInner struct {
	value *SearchGifsAPI200ResponseImagesInner
	isSet bool
}

func (v NullableSearchGifsAPI200ResponseImagesInner) Get() *SearchGifsAPI200ResponseImagesInner {
	return v.value
}

func (v *NullableSearchGifsAPI200ResponseImagesInner) Set(val *SearchGifsAPI200ResponseImagesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchGifsAPI200ResponseImagesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchGifsAPI200ResponseImagesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchGifsAPI200ResponseImagesInner(val *SearchGifsAPI200ResponseImagesInner) *NullableSearchGifsAPI200ResponseImagesInner {
	return &NullableSearchGifsAPI200ResponseImagesInner{value: val, isSet: true}
}

func (v NullableSearchGifsAPI200ResponseImagesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchGifsAPI200ResponseImagesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


