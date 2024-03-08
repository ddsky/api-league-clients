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

// checks if the SearchRoyaltyFreeImages200ResponseImagesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRoyaltyFreeImages200ResponseImagesInner{}

// SearchRoyaltyFreeImages200ResponseImagesInner struct for SearchRoyaltyFreeImages200ResponseImagesInner
type SearchRoyaltyFreeImages200ResponseImagesInner struct {
	Width *int32 `json:"width,omitempty"`
	License *SearchRoyaltyFreeImages200ResponseImagesInnerLicense `json:"license,omitempty"`
	Thumbnail NullableString `json:"thumbnail,omitempty"`
	Id NullableString `json:"id,omitempty"`
	Url NullableString `json:"url,omitempty"`
	Height *int32 `json:"height,omitempty"`
}

// NewSearchRoyaltyFreeImages200ResponseImagesInner instantiates a new SearchRoyaltyFreeImages200ResponseImagesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRoyaltyFreeImages200ResponseImagesInner() *SearchRoyaltyFreeImages200ResponseImagesInner {
	this := SearchRoyaltyFreeImages200ResponseImagesInner{}
	return &this
}

// NewSearchRoyaltyFreeImages200ResponseImagesInnerWithDefaults instantiates a new SearchRoyaltyFreeImages200ResponseImagesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRoyaltyFreeImages200ResponseImagesInnerWithDefaults() *SearchRoyaltyFreeImages200ResponseImagesInner {
	this := SearchRoyaltyFreeImages200ResponseImagesInner{}
	return &this
}

// GetWidth returns the Width field value if set, zero value otherwise.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetWidth() int32 {
	if o == nil || IsNil(o.Width) {
		var ret int32
		return ret
	}
	return *o.Width
}

// GetWidthOk returns a tuple with the Width field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetWidthOk() (*int32, bool) {
	if o == nil || IsNil(o.Width) {
		return nil, false
	}
	return o.Width, true
}

// HasWidth returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) HasWidth() bool {
	if o != nil && !IsNil(o.Width) {
		return true
	}

	return false
}

// SetWidth gets a reference to the given int32 and assigns it to the Width field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetWidth(v int32) {
	o.Width = &v
}

// GetLicense returns the License field value if set, zero value otherwise.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetLicense() SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
	if o == nil || IsNil(o.License) {
		var ret SearchRoyaltyFreeImages200ResponseImagesInnerLicense
		return ret
	}
	return *o.License
}

// GetLicenseOk returns a tuple with the License field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetLicenseOk() (*SearchRoyaltyFreeImages200ResponseImagesInnerLicense, bool) {
	if o == nil || IsNil(o.License) {
		return nil, false
	}
	return o.License, true
}

// HasLicense returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) HasLicense() bool {
	if o != nil && !IsNil(o.License) {
		return true
	}

	return false
}

// SetLicense gets a reference to the given SearchRoyaltyFreeImages200ResponseImagesInnerLicense and assigns it to the License field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetLicense(v SearchRoyaltyFreeImages200ResponseImagesInnerLicense) {
	o.License = &v
}

// GetThumbnail returns the Thumbnail field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetThumbnail() string {
	if o == nil || IsNil(o.Thumbnail.Get()) {
		var ret string
		return ret
	}
	return *o.Thumbnail.Get()
}

// GetThumbnailOk returns a tuple with the Thumbnail field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetThumbnailOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Thumbnail.Get(), o.Thumbnail.IsSet()
}

// HasThumbnail returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) HasThumbnail() bool {
	if o != nil && o.Thumbnail.IsSet() {
		return true
	}

	return false
}

// SetThumbnail gets a reference to the given NullableString and assigns it to the Thumbnail field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetThumbnail(v string) {
	o.Thumbnail.Set(&v)
}
// SetThumbnailNil sets the value for Thumbnail to be an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetThumbnailNil() {
	o.Thumbnail.Set(nil)
}

// UnsetThumbnail ensures that no value is present for Thumbnail, not even an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) UnsetThumbnail() {
	o.Thumbnail.Unset()
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetId() string {
	if o == nil || IsNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) UnsetId() {
	o.Id.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) UnsetUrl() {
	o.Url.Unset()
}

// GetHeight returns the Height field value if set, zero value otherwise.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetHeight() int32 {
	if o == nil || IsNil(o.Height) {
		var ret int32
		return ret
	}
	return *o.Height
}

// GetHeightOk returns a tuple with the Height field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) GetHeightOk() (*int32, bool) {
	if o == nil || IsNil(o.Height) {
		return nil, false
	}
	return o.Height, true
}

// HasHeight returns a boolean if a field has been set.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) HasHeight() bool {
	if o != nil && !IsNil(o.Height) {
		return true
	}

	return false
}

// SetHeight gets a reference to the given int32 and assigns it to the Height field.
func (o *SearchRoyaltyFreeImages200ResponseImagesInner) SetHeight(v int32) {
	o.Height = &v
}

func (o SearchRoyaltyFreeImages200ResponseImagesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRoyaltyFreeImages200ResponseImagesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Width) {
		toSerialize["width"] = o.Width
	}
	if !IsNil(o.License) {
		toSerialize["license"] = o.License
	}
	if o.Thumbnail.IsSet() {
		toSerialize["thumbnail"] = o.Thumbnail.Get()
	}
	if o.Id.IsSet() {
		toSerialize["id"] = o.Id.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if !IsNil(o.Height) {
		toSerialize["height"] = o.Height
	}
	return toSerialize, nil
}

type NullableSearchRoyaltyFreeImages200ResponseImagesInner struct {
	value *SearchRoyaltyFreeImages200ResponseImagesInner
	isSet bool
}

func (v NullableSearchRoyaltyFreeImages200ResponseImagesInner) Get() *SearchRoyaltyFreeImages200ResponseImagesInner {
	return v.value
}

func (v *NullableSearchRoyaltyFreeImages200ResponseImagesInner) Set(val *SearchRoyaltyFreeImages200ResponseImagesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRoyaltyFreeImages200ResponseImagesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRoyaltyFreeImages200ResponseImagesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRoyaltyFreeImages200ResponseImagesInner(val *SearchRoyaltyFreeImages200ResponseImagesInner) *NullableSearchRoyaltyFreeImages200ResponseImagesInner {
	return &NullableSearchRoyaltyFreeImages200ResponseImagesInner{value: val, isSet: true}
}

func (v NullableSearchRoyaltyFreeImages200ResponseImagesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRoyaltyFreeImages200ResponseImagesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


