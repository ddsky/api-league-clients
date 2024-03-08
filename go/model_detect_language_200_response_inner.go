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

// checks if the DetectLanguage200ResponseInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectLanguage200ResponseInner{}

// DetectLanguage200ResponseInner struct for DetectLanguage200ResponseInner
type DetectLanguage200ResponseInner struct {
	Language NullableString `json:"language,omitempty"`
	Confidence *float32 `json:"confidence,omitempty"`
}

// NewDetectLanguage200ResponseInner instantiates a new DetectLanguage200ResponseInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectLanguage200ResponseInner() *DetectLanguage200ResponseInner {
	this := DetectLanguage200ResponseInner{}
	return &this
}

// NewDetectLanguage200ResponseInnerWithDefaults instantiates a new DetectLanguage200ResponseInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectLanguage200ResponseInnerWithDefaults() *DetectLanguage200ResponseInner {
	this := DetectLanguage200ResponseInner{}
	return &this
}

// GetLanguage returns the Language field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectLanguage200ResponseInner) GetLanguage() string {
	if o == nil || IsNil(o.Language.Get()) {
		var ret string
		return ret
	}
	return *o.Language.Get()
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectLanguage200ResponseInner) GetLanguageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Language.Get(), o.Language.IsSet()
}

// HasLanguage returns a boolean if a field has been set.
func (o *DetectLanguage200ResponseInner) HasLanguage() bool {
	if o != nil && o.Language.IsSet() {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given NullableString and assigns it to the Language field.
func (o *DetectLanguage200ResponseInner) SetLanguage(v string) {
	o.Language.Set(&v)
}
// SetLanguageNil sets the value for Language to be an explicit nil
func (o *DetectLanguage200ResponseInner) SetLanguageNil() {
	o.Language.Set(nil)
}

// UnsetLanguage ensures that no value is present for Language, not even an explicit nil
func (o *DetectLanguage200ResponseInner) UnsetLanguage() {
	o.Language.Unset()
}

// GetConfidence returns the Confidence field value if set, zero value otherwise.
func (o *DetectLanguage200ResponseInner) GetConfidence() float32 {
	if o == nil || IsNil(o.Confidence) {
		var ret float32
		return ret
	}
	return *o.Confidence
}

// GetConfidenceOk returns a tuple with the Confidence field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectLanguage200ResponseInner) GetConfidenceOk() (*float32, bool) {
	if o == nil || IsNil(o.Confidence) {
		return nil, false
	}
	return o.Confidence, true
}

// HasConfidence returns a boolean if a field has been set.
func (o *DetectLanguage200ResponseInner) HasConfidence() bool {
	if o != nil && !IsNil(o.Confidence) {
		return true
	}

	return false
}

// SetConfidence gets a reference to the given float32 and assigns it to the Confidence field.
func (o *DetectLanguage200ResponseInner) SetConfidence(v float32) {
	o.Confidence = &v
}

func (o DetectLanguage200ResponseInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectLanguage200ResponseInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Language.IsSet() {
		toSerialize["language"] = o.Language.Get()
	}
	if !IsNil(o.Confidence) {
		toSerialize["confidence"] = o.Confidence
	}
	return toSerialize, nil
}

type NullableDetectLanguage200ResponseInner struct {
	value *DetectLanguage200ResponseInner
	isSet bool
}

func (v NullableDetectLanguage200ResponseInner) Get() *DetectLanguage200ResponseInner {
	return v.value
}

func (v *NullableDetectLanguage200ResponseInner) Set(val *DetectLanguage200ResponseInner) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectLanguage200ResponseInner) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectLanguage200ResponseInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectLanguage200ResponseInner(val *DetectLanguage200ResponseInner) *NullableDetectLanguage200ResponseInner {
	return &NullableDetectLanguage200ResponseInner{value: val, isSet: true}
}

func (v NullableDetectLanguage200ResponseInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectLanguage200ResponseInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

