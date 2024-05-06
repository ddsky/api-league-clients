/*
API League

API League is a Hub for World Class APIs.

API version: 1.0.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseCredits type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseCredits{}

// RetrieveRecipeInformation200ResponseCredits struct for RetrieveRecipeInformation200ResponseCredits
type RetrieveRecipeInformation200ResponseCredits struct {
	License NullableString `json:"license,omitempty"`
	Text NullableString `json:"text,omitempty"`
	SourceName NullableString `json:"source_name,omitempty"`
	SourceUrl NullableString `json:"source_url,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseCredits instantiates a new RetrieveRecipeInformation200ResponseCredits object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseCredits() *RetrieveRecipeInformation200ResponseCredits {
	this := RetrieveRecipeInformation200ResponseCredits{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseCreditsWithDefaults instantiates a new RetrieveRecipeInformation200ResponseCredits object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseCreditsWithDefaults() *RetrieveRecipeInformation200ResponseCredits {
	this := RetrieveRecipeInformation200ResponseCredits{}
	return &this
}

// GetLicense returns the License field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseCredits) GetLicense() string {
	if o == nil || IsNil(o.License.Get()) {
		var ret string
		return ret
	}
	return *o.License.Get()
}

// GetLicenseOk returns a tuple with the License field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseCredits) GetLicenseOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.License.Get(), o.License.IsSet()
}

// HasLicense returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseCredits) HasLicense() bool {
	if o != nil && o.License.IsSet() {
		return true
	}

	return false
}

// SetLicense gets a reference to the given NullableString and assigns it to the License field.
func (o *RetrieveRecipeInformation200ResponseCredits) SetLicense(v string) {
	o.License.Set(&v)
}
// SetLicenseNil sets the value for License to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) SetLicenseNil() {
	o.License.Set(nil)
}

// UnsetLicense ensures that no value is present for License, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) UnsetLicense() {
	o.License.Unset()
}

// GetText returns the Text field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseCredits) GetText() string {
	if o == nil || IsNil(o.Text.Get()) {
		var ret string
		return ret
	}
	return *o.Text.Get()
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseCredits) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Text.Get(), o.Text.IsSet()
}

// HasText returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseCredits) HasText() bool {
	if o != nil && o.Text.IsSet() {
		return true
	}

	return false
}

// SetText gets a reference to the given NullableString and assigns it to the Text field.
func (o *RetrieveRecipeInformation200ResponseCredits) SetText(v string) {
	o.Text.Set(&v)
}
// SetTextNil sets the value for Text to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) SetTextNil() {
	o.Text.Set(nil)
}

// UnsetText ensures that no value is present for Text, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) UnsetText() {
	o.Text.Unset()
}

// GetSourceName returns the SourceName field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseCredits) GetSourceName() string {
	if o == nil || IsNil(o.SourceName.Get()) {
		var ret string
		return ret
	}
	return *o.SourceName.Get()
}

// GetSourceNameOk returns a tuple with the SourceName field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseCredits) GetSourceNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SourceName.Get(), o.SourceName.IsSet()
}

// HasSourceName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseCredits) HasSourceName() bool {
	if o != nil && o.SourceName.IsSet() {
		return true
	}

	return false
}

// SetSourceName gets a reference to the given NullableString and assigns it to the SourceName field.
func (o *RetrieveRecipeInformation200ResponseCredits) SetSourceName(v string) {
	o.SourceName.Set(&v)
}
// SetSourceNameNil sets the value for SourceName to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) SetSourceNameNil() {
	o.SourceName.Set(nil)
}

// UnsetSourceName ensures that no value is present for SourceName, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) UnsetSourceName() {
	o.SourceName.Unset()
}

// GetSourceUrl returns the SourceUrl field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseCredits) GetSourceUrl() string {
	if o == nil || IsNil(o.SourceUrl.Get()) {
		var ret string
		return ret
	}
	return *o.SourceUrl.Get()
}

// GetSourceUrlOk returns a tuple with the SourceUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseCredits) GetSourceUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SourceUrl.Get(), o.SourceUrl.IsSet()
}

// HasSourceUrl returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseCredits) HasSourceUrl() bool {
	if o != nil && o.SourceUrl.IsSet() {
		return true
	}

	return false
}

// SetSourceUrl gets a reference to the given NullableString and assigns it to the SourceUrl field.
func (o *RetrieveRecipeInformation200ResponseCredits) SetSourceUrl(v string) {
	o.SourceUrl.Set(&v)
}
// SetSourceUrlNil sets the value for SourceUrl to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) SetSourceUrlNil() {
	o.SourceUrl.Set(nil)
}

// UnsetSourceUrl ensures that no value is present for SourceUrl, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseCredits) UnsetSourceUrl() {
	o.SourceUrl.Unset()
}

func (o RetrieveRecipeInformation200ResponseCredits) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseCredits) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.License.IsSet() {
		toSerialize["license"] = o.License.Get()
	}
	if o.Text.IsSet() {
		toSerialize["text"] = o.Text.Get()
	}
	if o.SourceName.IsSet() {
		toSerialize["source_name"] = o.SourceName.Get()
	}
	if o.SourceUrl.IsSet() {
		toSerialize["source_url"] = o.SourceUrl.Get()
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseCredits struct {
	value *RetrieveRecipeInformation200ResponseCredits
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseCredits) Get() *RetrieveRecipeInformation200ResponseCredits {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseCredits) Set(val *RetrieveRecipeInformation200ResponseCredits) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseCredits) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseCredits) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseCredits(val *RetrieveRecipeInformation200ResponseCredits) *NullableRetrieveRecipeInformation200ResponseCredits {
	return &NullableRetrieveRecipeInformation200ResponseCredits{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseCredits) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseCredits) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


