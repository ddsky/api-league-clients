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

// checks if the RetrieveRecipeInformationAPI200ResponseCredits type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformationAPI200ResponseCredits{}

// RetrieveRecipeInformationAPI200ResponseCredits struct for RetrieveRecipeInformationAPI200ResponseCredits
type RetrieveRecipeInformationAPI200ResponseCredits struct {
	License NullableString `json:"license,omitempty"`
	Text NullableString `json:"text,omitempty"`
	SourceName NullableString `json:"source_name,omitempty"`
	SourceUrl NullableString `json:"source_url,omitempty"`
}

// NewRetrieveRecipeInformationAPI200ResponseCredits instantiates a new RetrieveRecipeInformationAPI200ResponseCredits object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformationAPI200ResponseCredits() *RetrieveRecipeInformationAPI200ResponseCredits {
	this := RetrieveRecipeInformationAPI200ResponseCredits{}
	return &this
}

// NewRetrieveRecipeInformationAPI200ResponseCreditsWithDefaults instantiates a new RetrieveRecipeInformationAPI200ResponseCredits object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformationAPI200ResponseCreditsWithDefaults() *RetrieveRecipeInformationAPI200ResponseCredits {
	this := RetrieveRecipeInformationAPI200ResponseCredits{}
	return &this
}

// GetLicense returns the License field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetLicense() string {
	if o == nil || IsNil(o.License.Get()) {
		var ret string
		return ret
	}
	return *o.License.Get()
}

// GetLicenseOk returns a tuple with the License field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetLicenseOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.License.Get(), o.License.IsSet()
}

// HasLicense returns a boolean if a field has been set.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) HasLicense() bool {
	if o != nil && o.License.IsSet() {
		return true
	}

	return false
}

// SetLicense gets a reference to the given NullableString and assigns it to the License field.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetLicense(v string) {
	o.License.Set(&v)
}
// SetLicenseNil sets the value for License to be an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetLicenseNil() {
	o.License.Set(nil)
}

// UnsetLicense ensures that no value is present for License, not even an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) UnsetLicense() {
	o.License.Unset()
}

// GetText returns the Text field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetText() string {
	if o == nil || IsNil(o.Text.Get()) {
		var ret string
		return ret
	}
	return *o.Text.Get()
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Text.Get(), o.Text.IsSet()
}

// HasText returns a boolean if a field has been set.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) HasText() bool {
	if o != nil && o.Text.IsSet() {
		return true
	}

	return false
}

// SetText gets a reference to the given NullableString and assigns it to the Text field.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetText(v string) {
	o.Text.Set(&v)
}
// SetTextNil sets the value for Text to be an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetTextNil() {
	o.Text.Set(nil)
}

// UnsetText ensures that no value is present for Text, not even an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) UnsetText() {
	o.Text.Unset()
}

// GetSourceName returns the SourceName field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetSourceName() string {
	if o == nil || IsNil(o.SourceName.Get()) {
		var ret string
		return ret
	}
	return *o.SourceName.Get()
}

// GetSourceNameOk returns a tuple with the SourceName field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetSourceNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SourceName.Get(), o.SourceName.IsSet()
}

// HasSourceName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) HasSourceName() bool {
	if o != nil && o.SourceName.IsSet() {
		return true
	}

	return false
}

// SetSourceName gets a reference to the given NullableString and assigns it to the SourceName field.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetSourceName(v string) {
	o.SourceName.Set(&v)
}
// SetSourceNameNil sets the value for SourceName to be an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetSourceNameNil() {
	o.SourceName.Set(nil)
}

// UnsetSourceName ensures that no value is present for SourceName, not even an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) UnsetSourceName() {
	o.SourceName.Unset()
}

// GetSourceUrl returns the SourceUrl field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetSourceUrl() string {
	if o == nil || IsNil(o.SourceUrl.Get()) {
		var ret string
		return ret
	}
	return *o.SourceUrl.Get()
}

// GetSourceUrlOk returns a tuple with the SourceUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformationAPI200ResponseCredits) GetSourceUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SourceUrl.Get(), o.SourceUrl.IsSet()
}

// HasSourceUrl returns a boolean if a field has been set.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) HasSourceUrl() bool {
	if o != nil && o.SourceUrl.IsSet() {
		return true
	}

	return false
}

// SetSourceUrl gets a reference to the given NullableString and assigns it to the SourceUrl field.
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetSourceUrl(v string) {
	o.SourceUrl.Set(&v)
}
// SetSourceUrlNil sets the value for SourceUrl to be an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) SetSourceUrlNil() {
	o.SourceUrl.Set(nil)
}

// UnsetSourceUrl ensures that no value is present for SourceUrl, not even an explicit nil
func (o *RetrieveRecipeInformationAPI200ResponseCredits) UnsetSourceUrl() {
	o.SourceUrl.Unset()
}

func (o RetrieveRecipeInformationAPI200ResponseCredits) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformationAPI200ResponseCredits) ToMap() (map[string]interface{}, error) {
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

type NullableRetrieveRecipeInformationAPI200ResponseCredits struct {
	value *RetrieveRecipeInformationAPI200ResponseCredits
	isSet bool
}

func (v NullableRetrieveRecipeInformationAPI200ResponseCredits) Get() *RetrieveRecipeInformationAPI200ResponseCredits {
	return v.value
}

func (v *NullableRetrieveRecipeInformationAPI200ResponseCredits) Set(val *RetrieveRecipeInformationAPI200ResponseCredits) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformationAPI200ResponseCredits) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformationAPI200ResponseCredits) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformationAPI200ResponseCredits(val *RetrieveRecipeInformationAPI200ResponseCredits) *NullableRetrieveRecipeInformationAPI200ResponseCredits {
	return &NullableRetrieveRecipeInformationAPI200ResponseCredits{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformationAPI200ResponseCredits) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformationAPI200ResponseCredits) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


