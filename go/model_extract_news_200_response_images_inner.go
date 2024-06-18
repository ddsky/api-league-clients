/*
API League

API League is a Hub for World Class APIs.

API version: 1.3.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ExtractNews200ResponseImagesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractNews200ResponseImagesInner{}

// ExtractNews200ResponseImagesInner struct for ExtractNews200ResponseImagesInner
type ExtractNews200ResponseImagesInner struct {
	Width *int32 `json:"width,omitempty"`
	Title NullableString `json:"title,omitempty"`
	Url NullableString `json:"url,omitempty"`
	Height *int32 `json:"height,omitempty"`
}

// NewExtractNews200ResponseImagesInner instantiates a new ExtractNews200ResponseImagesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractNews200ResponseImagesInner() *ExtractNews200ResponseImagesInner {
	this := ExtractNews200ResponseImagesInner{}
	return &this
}

// NewExtractNews200ResponseImagesInnerWithDefaults instantiates a new ExtractNews200ResponseImagesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractNews200ResponseImagesInnerWithDefaults() *ExtractNews200ResponseImagesInner {
	this := ExtractNews200ResponseImagesInner{}
	return &this
}

// GetWidth returns the Width field value if set, zero value otherwise.
func (o *ExtractNews200ResponseImagesInner) GetWidth() int32 {
	if o == nil || IsNil(o.Width) {
		var ret int32
		return ret
	}
	return *o.Width
}

// GetWidthOk returns a tuple with the Width field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200ResponseImagesInner) GetWidthOk() (*int32, bool) {
	if o == nil || IsNil(o.Width) {
		return nil, false
	}
	return o.Width, true
}

// HasWidth returns a boolean if a field has been set.
func (o *ExtractNews200ResponseImagesInner) HasWidth() bool {
	if o != nil && !IsNil(o.Width) {
		return true
	}

	return false
}

// SetWidth gets a reference to the given int32 and assigns it to the Width field.
func (o *ExtractNews200ResponseImagesInner) SetWidth(v int32) {
	o.Width = &v
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200ResponseImagesInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200ResponseImagesInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *ExtractNews200ResponseImagesInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *ExtractNews200ResponseImagesInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *ExtractNews200ResponseImagesInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *ExtractNews200ResponseImagesInner) UnsetTitle() {
	o.Title.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200ResponseImagesInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200ResponseImagesInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *ExtractNews200ResponseImagesInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *ExtractNews200ResponseImagesInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *ExtractNews200ResponseImagesInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *ExtractNews200ResponseImagesInner) UnsetUrl() {
	o.Url.Unset()
}

// GetHeight returns the Height field value if set, zero value otherwise.
func (o *ExtractNews200ResponseImagesInner) GetHeight() int32 {
	if o == nil || IsNil(o.Height) {
		var ret int32
		return ret
	}
	return *o.Height
}

// GetHeightOk returns a tuple with the Height field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200ResponseImagesInner) GetHeightOk() (*int32, bool) {
	if o == nil || IsNil(o.Height) {
		return nil, false
	}
	return o.Height, true
}

// HasHeight returns a boolean if a field has been set.
func (o *ExtractNews200ResponseImagesInner) HasHeight() bool {
	if o != nil && !IsNil(o.Height) {
		return true
	}

	return false
}

// SetHeight gets a reference to the given int32 and assigns it to the Height field.
func (o *ExtractNews200ResponseImagesInner) SetHeight(v int32) {
	o.Height = &v
}

func (o ExtractNews200ResponseImagesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractNews200ResponseImagesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Width) {
		toSerialize["width"] = o.Width
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if !IsNil(o.Height) {
		toSerialize["height"] = o.Height
	}
	return toSerialize, nil
}

type NullableExtractNews200ResponseImagesInner struct {
	value *ExtractNews200ResponseImagesInner
	isSet bool
}

func (v NullableExtractNews200ResponseImagesInner) Get() *ExtractNews200ResponseImagesInner {
	return v.value
}

func (v *NullableExtractNews200ResponseImagesInner) Set(val *ExtractNews200ResponseImagesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractNews200ResponseImagesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractNews200ResponseImagesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractNews200ResponseImagesInner(val *ExtractNews200ResponseImagesInner) *NullableExtractNews200ResponseImagesInner {
	return &NullableExtractNews200ResponseImagesInner{value: val, isSet: true}
}

func (v NullableExtractNews200ResponseImagesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractNews200ResponseImagesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

