/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchRoyaltyFreeImages200ResponseImagesInnerLicense type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRoyaltyFreeImages200ResponseImagesInnerLicense{}

// SearchRoyaltyFreeImages200ResponseImagesInnerLicense struct for SearchRoyaltyFreeImages200ResponseImagesInnerLicense
type SearchRoyaltyFreeImages200ResponseImagesInnerLicense struct {
	Name NullableString `json:"name,omitempty"`
	Link NullableString `json:"link,omitempty"`
}

// NewSearchRoyaltyFreeImages200ResponseImagesInnerLicense instantiates a new SearchRoyaltyFreeImages200ResponseImagesInnerLicense object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRoyaltyFreeImages200ResponseImagesInnerLicense() *SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
	this := SearchRoyaltyFreeImages200ResponseImagesInnerLicense{}
	return &this
}

// NewSearchRoyaltyFreeImages200ResponseImagesInnerLicenseWithDefaults instantiates a new SearchRoyaltyFreeImages200ResponseImagesInnerLicense object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRoyaltyFreeImages200ResponseImagesInnerLicenseWithDefaults() *SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
	this := SearchRoyaltyFreeImages200ResponseImagesInnerLicense{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) UnsetName() {
	o.Name.Unset()
}

// GetLink returns the Link field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) GetLink() string {
	if o == nil || IsNil(o.Link.Get()) {
		var ret string
		return ret
	}
	return *o.Link.Get()
}

// GetLinkOk returns a tuple with the Link field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) GetLinkOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Link.Get(), o.Link.IsSet()
}

// HasLink returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) HasLink() bool {
	if o != nil && o.Link.IsSet() {
		return true
	}

	return false
}

// SetLink gets a reference to the given NullableString and assigns it to the Link field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) SetLink(v string) {
	o.Link.Set(&v)
}
// SetLinkNil sets the value for Link to be an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) SetLinkNil() {
	o.Link.Set(nil)
}

// UnsetLink ensures that no value is present for Link, not even an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) UnsetLink() {
	o.Link.Unset()
}

func (o SearchRoyaltyFreeImages200ResponseImagesInnerLicense) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRoyaltyFreeImages200ResponseImagesInnerLicense) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if o.Link.IsSet() {
		toSerialize["link"] = o.Link.Get()
	}
	return toSerialize, nil
}

type NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense struct {
	value *SearchRoyaltyFreeImages200ResponseImagesInnerLicense
	isSet bool
}

func (v NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense) Get() *SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
	return v.value
}

func (v *NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense) Set(val *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense(val *SearchRoyaltyFreeImages200ResponseImagesInnerLicense) *NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense {
	return &NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense{value: val, isSet: true}
}

func (v NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRoyaltyFreeImages200ResponseImagesInnerLicense) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


