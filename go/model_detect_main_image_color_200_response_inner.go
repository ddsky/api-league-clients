/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the DetectMainImageColor200ResponseInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectMainImageColor200ResponseInner{}

// DetectMainImageColor200ResponseInner struct for DetectMainImageColor200ResponseInner
type DetectMainImageColor200ResponseInner struct {
	SpecificColor NullableString `json:"specific_color,omitempty"`
	MainColor NullableString `json:"main_color,omitempty"`
	HexCode NullableString `json:"hex_code,omitempty"`
}

// NewDetectMainImageColor200ResponseInner instantiates a new DetectMainImageColor200ResponseInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectMainImageColor200ResponseInner() *DetectMainImageColor200ResponseInner {
	this := DetectMainImageColor200ResponseInner{}
	return &this
}

// NewDetectMainImageColor200ResponseInnerWithDefaults instantiates a new DetectMainImageColor200ResponseInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectMainImageColor200ResponseInnerWithDefaults() *DetectMainImageColor200ResponseInner {
	this := DetectMainImageColor200ResponseInner{}
	return &this
}

// GetSpecificColor returns the SpecificColor field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectMainImageColor200ResponseInner) GetSpecificColor() string {
	if o == nil || IsNil(o.SpecificColor.Get()) {
		var ret string
		return ret
	}
	return *o.SpecificColor.Get()
}

// GetSpecificColorOk returns a tuple with the SpecificColor field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectMainImageColor200ResponseInner) GetSpecificColorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SpecificColor.Get(), o.SpecificColor.IsSet()
}

// HasSpecificColor returns a boolean if a field has been set.
func (o *DetectMainImageColor200ResponseInner) HasSpecificColor() bool {
	if o != nil && o.SpecificColor.IsSet() {
		return true
	}

	return false
}

// SetSpecificColor gets a reference to the given NullableString and assigns it to the SpecificColor field.
func (o *DetectMainImageColor200ResponseInner) SetSpecificColor(v string) {
	o.SpecificColor.Set(&v)
}
// SetSpecificColorNil sets the value for SpecificColor to be an explicit nil
func (o *DetectMainImageColor200ResponseInner) SetSpecificColorNil() {
	o.SpecificColor.Set(nil)
}

// UnsetSpecificColor ensures that no value is present for SpecificColor, not even an explicit nil
func (o *DetectMainImageColor200ResponseInner) UnsetSpecificColor() {
	o.SpecificColor.Unset()
}

// GetMainColor returns the MainColor field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectMainImageColor200ResponseInner) GetMainColor() string {
	if o == nil || IsNil(o.MainColor.Get()) {
		var ret string
		return ret
	}
	return *o.MainColor.Get()
}

// GetMainColorOk returns a tuple with the MainColor field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectMainImageColor200ResponseInner) GetMainColorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.MainColor.Get(), o.MainColor.IsSet()
}

// HasMainColor returns a boolean if a field has been set.
func (o *DetectMainImageColor200ResponseInner) HasMainColor() bool {
	if o != nil && o.MainColor.IsSet() {
		return true
	}

	return false
}

// SetMainColor gets a reference to the given NullableString and assigns it to the MainColor field.
func (o *DetectMainImageColor200ResponseInner) SetMainColor(v string) {
	o.MainColor.Set(&v)
}
// SetMainColorNil sets the value for MainColor to be an explicit nil
func (o *DetectMainImageColor200ResponseInner) SetMainColorNil() {
	o.MainColor.Set(nil)
}

// UnsetMainColor ensures that no value is present for MainColor, not even an explicit nil
func (o *DetectMainImageColor200ResponseInner) UnsetMainColor() {
	o.MainColor.Unset()
}

// GetHexCode returns the HexCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectMainImageColor200ResponseInner) GetHexCode() string {
	if o == nil || IsNil(o.HexCode.Get()) {
		var ret string
		return ret
	}
	return *o.HexCode.Get()
}

// GetHexCodeOk returns a tuple with the HexCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectMainImageColor200ResponseInner) GetHexCodeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.HexCode.Get(), o.HexCode.IsSet()
}

// HasHexCode returns a boolean if a field has been set.
func (o *DetectMainImageColor200ResponseInner) HasHexCode() bool {
	if o != nil && o.HexCode.IsSet() {
		return true
	}

	return false
}

// SetHexCode gets a reference to the given NullableString and assigns it to the HexCode field.
func (o *DetectMainImageColor200ResponseInner) SetHexCode(v string) {
	o.HexCode.Set(&v)
}
// SetHexCodeNil sets the value for HexCode to be an explicit nil
func (o *DetectMainImageColor200ResponseInner) SetHexCodeNil() {
	o.HexCode.Set(nil)
}

// UnsetHexCode ensures that no value is present for HexCode, not even an explicit nil
func (o *DetectMainImageColor200ResponseInner) UnsetHexCode() {
	o.HexCode.Unset()
}

func (o DetectMainImageColor200ResponseInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectMainImageColor200ResponseInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.SpecificColor.IsSet() {
		toSerialize["specific_color"] = o.SpecificColor.Get()
	}
	if o.MainColor.IsSet() {
		toSerialize["main_color"] = o.MainColor.Get()
	}
	if o.HexCode.IsSet() {
		toSerialize["hex_code"] = o.HexCode.Get()
	}
	return toSerialize, nil
}

type NullableDetectMainImageColor200ResponseInner struct {
	value *DetectMainImageColor200ResponseInner
	isSet bool
}

func (v NullableDetectMainImageColor200ResponseInner) Get() *DetectMainImageColor200ResponseInner {
	return v.value
}

func (v *NullableDetectMainImageColor200ResponseInner) Set(val *DetectMainImageColor200ResponseInner) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectMainImageColor200ResponseInner) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectMainImageColor200ResponseInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectMainImageColor200ResponseInner(val *DetectMainImageColor200ResponseInner) *NullableDetectMainImageColor200ResponseInner {
	return &NullableDetectMainImageColor200ResponseInner{value: val, isSet: true}
}

func (v NullableDetectMainImageColor200ResponseInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectMainImageColor200ResponseInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


