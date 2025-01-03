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

// checks if the SearchWebAPI200ResponseResultsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchWebAPI200ResponseResultsInner{}

// SearchWebAPI200ResponseResultsInner struct for SearchWebAPI200ResponseResultsInner
type SearchWebAPI200ResponseResultsInner struct {
	Title NullableString `json:"title,omitempty"`
	Summary NullableString `json:"summary,omitempty"`
	Url NullableString `json:"url,omitempty"`
}

// NewSearchWebAPI200ResponseResultsInner instantiates a new SearchWebAPI200ResponseResultsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchWebAPI200ResponseResultsInner() *SearchWebAPI200ResponseResultsInner {
	this := SearchWebAPI200ResponseResultsInner{}
	return &this
}

// NewSearchWebAPI200ResponseResultsInnerWithDefaults instantiates a new SearchWebAPI200ResponseResultsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchWebAPI200ResponseResultsInnerWithDefaults() *SearchWebAPI200ResponseResultsInner {
	this := SearchWebAPI200ResponseResultsInner{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchWebAPI200ResponseResultsInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchWebAPI200ResponseResultsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *SearchWebAPI200ResponseResultsInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *SearchWebAPI200ResponseResultsInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *SearchWebAPI200ResponseResultsInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *SearchWebAPI200ResponseResultsInner) UnsetTitle() {
	o.Title.Unset()
}

// GetSummary returns the Summary field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchWebAPI200ResponseResultsInner) GetSummary() string {
	if o == nil || IsNil(o.Summary.Get()) {
		var ret string
		return ret
	}
	return *o.Summary.Get()
}

// GetSummaryOk returns a tuple with the Summary field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchWebAPI200ResponseResultsInner) GetSummaryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Summary.Get(), o.Summary.IsSet()
}

// HasSummary returns a boolean if a field has been set.
func (o *SearchWebAPI200ResponseResultsInner) HasSummary() bool {
	if o != nil && o.Summary.IsSet() {
		return true
	}

	return false
}

// SetSummary gets a reference to the given NullableString and assigns it to the Summary field.
func (o *SearchWebAPI200ResponseResultsInner) SetSummary(v string) {
	o.Summary.Set(&v)
}
// SetSummaryNil sets the value for Summary to be an explicit nil
func (o *SearchWebAPI200ResponseResultsInner) SetSummaryNil() {
	o.Summary.Set(nil)
}

// UnsetSummary ensures that no value is present for Summary, not even an explicit nil
func (o *SearchWebAPI200ResponseResultsInner) UnsetSummary() {
	o.Summary.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchWebAPI200ResponseResultsInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchWebAPI200ResponseResultsInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *SearchWebAPI200ResponseResultsInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *SearchWebAPI200ResponseResultsInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *SearchWebAPI200ResponseResultsInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *SearchWebAPI200ResponseResultsInner) UnsetUrl() {
	o.Url.Unset()
}

func (o SearchWebAPI200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchWebAPI200ResponseResultsInner) ToMap() (map[string]interface{}, error) {
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

type NullableSearchWebAPI200ResponseResultsInner struct {
	value *SearchWebAPI200ResponseResultsInner
	isSet bool
}

func (v NullableSearchWebAPI200ResponseResultsInner) Get() *SearchWebAPI200ResponseResultsInner {
	return v.value
}

func (v *NullableSearchWebAPI200ResponseResultsInner) Set(val *SearchWebAPI200ResponseResultsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchWebAPI200ResponseResultsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchWebAPI200ResponseResultsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchWebAPI200ResponseResultsInner(val *SearchWebAPI200ResponseResultsInner) *NullableSearchWebAPI200ResponseResultsInner {
	return &NullableSearchWebAPI200ResponseResultsInner{value: val, isSet: true}
}

func (v NullableSearchWebAPI200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchWebAPI200ResponseResultsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


