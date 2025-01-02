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

// checks if the ExtractAuthorsAPI200ResponseAuthorsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractAuthorsAPI200ResponseAuthorsInner{}

// ExtractAuthorsAPI200ResponseAuthorsInner struct for ExtractAuthorsAPI200ResponseAuthorsInner
type ExtractAuthorsAPI200ResponseAuthorsInner struct {
	Link NullableString `json:"link,omitempty"`
	Name NullableString `json:"name,omitempty"`
}

// NewExtractAuthorsAPI200ResponseAuthorsInner instantiates a new ExtractAuthorsAPI200ResponseAuthorsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractAuthorsAPI200ResponseAuthorsInner() *ExtractAuthorsAPI200ResponseAuthorsInner {
	this := ExtractAuthorsAPI200ResponseAuthorsInner{}
	return &this
}

// NewExtractAuthorsAPI200ResponseAuthorsInnerWithDefaults instantiates a new ExtractAuthorsAPI200ResponseAuthorsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractAuthorsAPI200ResponseAuthorsInnerWithDefaults() *ExtractAuthorsAPI200ResponseAuthorsInner {
	this := ExtractAuthorsAPI200ResponseAuthorsInner{}
	return &this
}

// GetLink returns the Link field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) GetLink() string {
	if o == nil || IsNil(o.Link.Get()) {
		var ret string
		return ret
	}
	return *o.Link.Get()
}

// GetLinkOk returns a tuple with the Link field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) GetLinkOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Link.Get(), o.Link.IsSet()
}

// HasLink returns a boolean if a field has been set.
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) HasLink() bool {
	if o != nil && o.Link.IsSet() {
		return true
	}

	return false
}

// SetLink gets a reference to the given NullableString and assigns it to the Link field.
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) SetLink(v string) {
	o.Link.Set(&v)
}
// SetLinkNil sets the value for Link to be an explicit nil
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) SetLinkNil() {
	o.Link.Set(nil)
}

// UnsetLink ensures that no value is present for Link, not even an explicit nil
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) UnsetLink() {
	o.Link.Unset()
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *ExtractAuthorsAPI200ResponseAuthorsInner) UnsetName() {
	o.Name.Unset()
}

func (o ExtractAuthorsAPI200ResponseAuthorsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractAuthorsAPI200ResponseAuthorsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Link.IsSet() {
		toSerialize["link"] = o.Link.Get()
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	return toSerialize, nil
}

type NullableExtractAuthorsAPI200ResponseAuthorsInner struct {
	value *ExtractAuthorsAPI200ResponseAuthorsInner
	isSet bool
}

func (v NullableExtractAuthorsAPI200ResponseAuthorsInner) Get() *ExtractAuthorsAPI200ResponseAuthorsInner {
	return v.value
}

func (v *NullableExtractAuthorsAPI200ResponseAuthorsInner) Set(val *ExtractAuthorsAPI200ResponseAuthorsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractAuthorsAPI200ResponseAuthorsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractAuthorsAPI200ResponseAuthorsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractAuthorsAPI200ResponseAuthorsInner(val *ExtractAuthorsAPI200ResponseAuthorsInner) *NullableExtractAuthorsAPI200ResponseAuthorsInner {
	return &NullableExtractAuthorsAPI200ResponseAuthorsInner{value: val, isSet: true}
}

func (v NullableExtractAuthorsAPI200ResponseAuthorsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractAuthorsAPI200ResponseAuthorsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

