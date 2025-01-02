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

// checks if the VectorSearchAPI200ResponseVectorsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &VectorSearchAPI200ResponseVectorsInner{}

// VectorSearchAPI200ResponseVectorsInner struct for VectorSearchAPI200ResponseVectorsInner
type VectorSearchAPI200ResponseVectorsInner struct {
	License NullableString `json:"license,omitempty"`
	Title NullableString `json:"title,omitempty"`
	Author NullableString `json:"author,omitempty"`
	ImageUrl NullableString `json:"image_url,omitempty"`
}

// NewVectorSearchAPI200ResponseVectorsInner instantiates a new VectorSearchAPI200ResponseVectorsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewVectorSearchAPI200ResponseVectorsInner() *VectorSearchAPI200ResponseVectorsInner {
	this := VectorSearchAPI200ResponseVectorsInner{}
	return &this
}

// NewVectorSearchAPI200ResponseVectorsInnerWithDefaults instantiates a new VectorSearchAPI200ResponseVectorsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewVectorSearchAPI200ResponseVectorsInnerWithDefaults() *VectorSearchAPI200ResponseVectorsInner {
	this := VectorSearchAPI200ResponseVectorsInner{}
	return &this
}

// GetLicense returns the License field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *VectorSearchAPI200ResponseVectorsInner) GetLicense() string {
	if o == nil || IsNil(o.License.Get()) {
		var ret string
		return ret
	}
	return *o.License.Get()
}

// GetLicenseOk returns a tuple with the License field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *VectorSearchAPI200ResponseVectorsInner) GetLicenseOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.License.Get(), o.License.IsSet()
}

// HasLicense returns a boolean if a field has been set.
func (o *VectorSearchAPI200ResponseVectorsInner) HasLicense() bool {
	if o != nil && o.License.IsSet() {
		return true
	}

	return false
}

// SetLicense gets a reference to the given NullableString and assigns it to the License field.
func (o *VectorSearchAPI200ResponseVectorsInner) SetLicense(v string) {
	o.License.Set(&v)
}
// SetLicenseNil sets the value for License to be an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) SetLicenseNil() {
	o.License.Set(nil)
}

// UnsetLicense ensures that no value is present for License, not even an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) UnsetLicense() {
	o.License.Unset()
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *VectorSearchAPI200ResponseVectorsInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *VectorSearchAPI200ResponseVectorsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *VectorSearchAPI200ResponseVectorsInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *VectorSearchAPI200ResponseVectorsInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) UnsetTitle() {
	o.Title.Unset()
}

// GetAuthor returns the Author field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *VectorSearchAPI200ResponseVectorsInner) GetAuthor() string {
	if o == nil || IsNil(o.Author.Get()) {
		var ret string
		return ret
	}
	return *o.Author.Get()
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *VectorSearchAPI200ResponseVectorsInner) GetAuthorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Author.Get(), o.Author.IsSet()
}

// HasAuthor returns a boolean if a field has been set.
func (o *VectorSearchAPI200ResponseVectorsInner) HasAuthor() bool {
	if o != nil && o.Author.IsSet() {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given NullableString and assigns it to the Author field.
func (o *VectorSearchAPI200ResponseVectorsInner) SetAuthor(v string) {
	o.Author.Set(&v)
}
// SetAuthorNil sets the value for Author to be an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) SetAuthorNil() {
	o.Author.Set(nil)
}

// UnsetAuthor ensures that no value is present for Author, not even an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) UnsetAuthor() {
	o.Author.Unset()
}

// GetImageUrl returns the ImageUrl field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *VectorSearchAPI200ResponseVectorsInner) GetImageUrl() string {
	if o == nil || IsNil(o.ImageUrl.Get()) {
		var ret string
		return ret
	}
	return *o.ImageUrl.Get()
}

// GetImageUrlOk returns a tuple with the ImageUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *VectorSearchAPI200ResponseVectorsInner) GetImageUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.ImageUrl.Get(), o.ImageUrl.IsSet()
}

// HasImageUrl returns a boolean if a field has been set.
func (o *VectorSearchAPI200ResponseVectorsInner) HasImageUrl() bool {
	if o != nil && o.ImageUrl.IsSet() {
		return true
	}

	return false
}

// SetImageUrl gets a reference to the given NullableString and assigns it to the ImageUrl field.
func (o *VectorSearchAPI200ResponseVectorsInner) SetImageUrl(v string) {
	o.ImageUrl.Set(&v)
}
// SetImageUrlNil sets the value for ImageUrl to be an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) SetImageUrlNil() {
	o.ImageUrl.Set(nil)
}

// UnsetImageUrl ensures that no value is present for ImageUrl, not even an explicit nil
func (o *VectorSearchAPI200ResponseVectorsInner) UnsetImageUrl() {
	o.ImageUrl.Unset()
}

func (o VectorSearchAPI200ResponseVectorsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o VectorSearchAPI200ResponseVectorsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.License.IsSet() {
		toSerialize["license"] = o.License.Get()
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Author.IsSet() {
		toSerialize["author"] = o.Author.Get()
	}
	if o.ImageUrl.IsSet() {
		toSerialize["image_url"] = o.ImageUrl.Get()
	}
	return toSerialize, nil
}

type NullableVectorSearchAPI200ResponseVectorsInner struct {
	value *VectorSearchAPI200ResponseVectorsInner
	isSet bool
}

func (v NullableVectorSearchAPI200ResponseVectorsInner) Get() *VectorSearchAPI200ResponseVectorsInner {
	return v.value
}

func (v *NullableVectorSearchAPI200ResponseVectorsInner) Set(val *VectorSearchAPI200ResponseVectorsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableVectorSearchAPI200ResponseVectorsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableVectorSearchAPI200ResponseVectorsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableVectorSearchAPI200ResponseVectorsInner(val *VectorSearchAPI200ResponseVectorsInner) *NullableVectorSearchAPI200ResponseVectorsInner {
	return &NullableVectorSearchAPI200ResponseVectorsInner{value: val, isSet: true}
}

func (v NullableVectorSearchAPI200ResponseVectorsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableVectorSearchAPI200ResponseVectorsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


