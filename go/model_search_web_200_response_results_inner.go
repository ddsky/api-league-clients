/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.3
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchWeb200ResponseResultsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchWeb200ResponseResultsInner{}

// SearchWeb200ResponseResultsInner struct for SearchWeb200ResponseResultsInner
type SearchWeb200ResponseResultsInner struct {
	Title NullableString `json:"title,omitempty"`
	Summary NullableString `json:"summary,omitempty"`
	Url NullableString `json:"url,omitempty"`
}

// NewSearchWeb200ResponseResultsInner instantiates a new SearchWeb200ResponseResultsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchWeb200ResponseResultsInner() *SearchWeb200ResponseResultsInner {
	this := SearchWeb200ResponseResultsInner{}
	return &this
}

// NewSearchWeb200ResponseResultsInnerWithDefaults instantiates a new SearchWeb200ResponseResultsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchWeb200ResponseResultsInnerWithDefaults() *SearchWeb200ResponseResultsInner {
	this := SearchWeb200ResponseResultsInner{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchWeb200ResponseResultsInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchWeb200ResponseResultsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *SearchWeb200ResponseResultsInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *SearchWeb200ResponseResultsInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *SearchWeb200ResponseResultsInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *SearchWeb200ResponseResultsInner) UnsetTitle() {
	o.Title.Unset()
}

// GetSummary returns the Summary field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchWeb200ResponseResultsInner) GetSummary() string {
	if o == nil || IsNil(o.Summary.Get()) {
		var ret string
		return ret
	}
	return *o.Summary.Get()
}

// GetSummaryOk returns a tuple with the Summary field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchWeb200ResponseResultsInner) GetSummaryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Summary.Get(), o.Summary.IsSet()
}

// HasSummary returns a boolean if a field has been set.
func (o *SearchWeb200ResponseResultsInner) HasSummary() bool {
	if o != nil && o.Summary.IsSet() {
		return true
	}

	return false
}

// SetSummary gets a reference to the given NullableString and assigns it to the Summary field.
func (o *SearchWeb200ResponseResultsInner) SetSummary(v string) {
	o.Summary.Set(&v)
}
// SetSummaryNil sets the value for Summary to be an explicit nil
func (o *SearchWeb200ResponseResultsInner) SetSummaryNil() {
	o.Summary.Set(nil)
}

// UnsetSummary ensures that no value is present for Summary, not even an explicit nil
func (o *SearchWeb200ResponseResultsInner) UnsetSummary() {
	o.Summary.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchWeb200ResponseResultsInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchWeb200ResponseResultsInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *SearchWeb200ResponseResultsInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *SearchWeb200ResponseResultsInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *SearchWeb200ResponseResultsInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *SearchWeb200ResponseResultsInner) UnsetUrl() {
	o.Url.Unset()
}

func (o SearchWeb200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchWeb200ResponseResultsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Summary.IsSet() {
		toSerialize["summary"] = o.Summary.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	return toSerialize, nil
}

type NullableSearchWeb200ResponseResultsInner struct {
	value *SearchWeb200ResponseResultsInner
	isSet bool
}

func (v NullableSearchWeb200ResponseResultsInner) Get() *SearchWeb200ResponseResultsInner {
	return v.value
}

func (v *NullableSearchWeb200ResponseResultsInner) Set(val *SearchWeb200ResponseResultsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchWeb200ResponseResultsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchWeb200ResponseResultsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchWeb200ResponseResultsInner(val *SearchWeb200ResponseResultsInner) *NullableSearchWeb200ResponseResultsInner {
	return &NullableSearchWeb200ResponseResultsInner{value: val, isSet: true}
}

func (v NullableSearchWeb200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchWeb200ResponseResultsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


