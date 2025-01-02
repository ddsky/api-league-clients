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

// checks if the SearchMemesAPI200ResponseMemesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchMemesAPI200ResponseMemesInner{}

// SearchMemesAPI200ResponseMemesInner struct for SearchMemesAPI200ResponseMemesInner
type SearchMemesAPI200ResponseMemesInner struct {
	Type NullableString `json:"type,omitempty"`
	Description NullableString `json:"description,omitempty"`
	Url NullableString `json:"url,omitempty"`
}

// NewSearchMemesAPI200ResponseMemesInner instantiates a new SearchMemesAPI200ResponseMemesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchMemesAPI200ResponseMemesInner() *SearchMemesAPI200ResponseMemesInner {
	this := SearchMemesAPI200ResponseMemesInner{}
	return &this
}

// NewSearchMemesAPI200ResponseMemesInnerWithDefaults instantiates a new SearchMemesAPI200ResponseMemesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchMemesAPI200ResponseMemesInnerWithDefaults() *SearchMemesAPI200ResponseMemesInner {
	this := SearchMemesAPI200ResponseMemesInner{}
	return &this
}

// GetType returns the Type field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchMemesAPI200ResponseMemesInner) GetType() string {
	if o == nil || IsNil(o.Type.Get()) {
		var ret string
		return ret
	}
	return *o.Type.Get()
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchMemesAPI200ResponseMemesInner) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Type.Get(), o.Type.IsSet()
}

// HasType returns a boolean if a field has been set.
func (o *SearchMemesAPI200ResponseMemesInner) HasType() bool {
	if o != nil && o.Type.IsSet() {
		return true
	}

	return false
}

// SetType gets a reference to the given NullableString and assigns it to the Type field.
func (o *SearchMemesAPI200ResponseMemesInner) SetType(v string) {
	o.Type.Set(&v)
}
// SetTypeNil sets the value for Type to be an explicit nil
func (o *SearchMemesAPI200ResponseMemesInner) SetTypeNil() {
	o.Type.Set(nil)
}

// UnsetType ensures that no value is present for Type, not even an explicit nil
func (o *SearchMemesAPI200ResponseMemesInner) UnsetType() {
	o.Type.Unset()
}

// GetDescription returns the Description field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchMemesAPI200ResponseMemesInner) GetDescription() string {
	if o == nil || IsNil(o.Description.Get()) {
		var ret string
		return ret
	}
	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchMemesAPI200ResponseMemesInner) GetDescriptionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// HasDescription returns a boolean if a field has been set.
func (o *SearchMemesAPI200ResponseMemesInner) HasDescription() bool {
	if o != nil && o.Description.IsSet() {
		return true
	}

	return false
}

// SetDescription gets a reference to the given NullableString and assigns it to the Description field.
func (o *SearchMemesAPI200ResponseMemesInner) SetDescription(v string) {
	o.Description.Set(&v)
}
// SetDescriptionNil sets the value for Description to be an explicit nil
func (o *SearchMemesAPI200ResponseMemesInner) SetDescriptionNil() {
	o.Description.Set(nil)
}

// UnsetDescription ensures that no value is present for Description, not even an explicit nil
func (o *SearchMemesAPI200ResponseMemesInner) UnsetDescription() {
	o.Description.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchMemesAPI200ResponseMemesInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchMemesAPI200ResponseMemesInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *SearchMemesAPI200ResponseMemesInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *SearchMemesAPI200ResponseMemesInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *SearchMemesAPI200ResponseMemesInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *SearchMemesAPI200ResponseMemesInner) UnsetUrl() {
	o.Url.Unset()
}

func (o SearchMemesAPI200ResponseMemesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchMemesAPI200ResponseMemesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Type.IsSet() {
		toSerialize["type"] = o.Type.Get()
	}
	if o.Description.IsSet() {
		toSerialize["description"] = o.Description.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	return toSerialize, nil
}

type NullableSearchMemesAPI200ResponseMemesInner struct {
	value *SearchMemesAPI200ResponseMemesInner
	isSet bool
}

func (v NullableSearchMemesAPI200ResponseMemesInner) Get() *SearchMemesAPI200ResponseMemesInner {
	return v.value
}

func (v *NullableSearchMemesAPI200ResponseMemesInner) Set(val *SearchMemesAPI200ResponseMemesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchMemesAPI200ResponseMemesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchMemesAPI200ResponseMemesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchMemesAPI200ResponseMemesInner(val *SearchMemesAPI200ResponseMemesInner) *NullableSearchMemesAPI200ResponseMemesInner {
	return &NullableSearchMemesAPI200ResponseMemesInner{value: val, isSet: true}
}

func (v NullableSearchMemesAPI200ResponseMemesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchMemesAPI200ResponseMemesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

