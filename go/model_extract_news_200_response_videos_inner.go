/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.1
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ExtractNews200ResponseVideosInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractNews200ResponseVideosInner{}

// ExtractNews200ResponseVideosInner struct for ExtractNews200ResponseVideosInner
type ExtractNews200ResponseVideosInner struct {
	Summary NullableString `json:"summary,omitempty"`
	Duration *int32 `json:"duration,omitempty"`
	Thumbnail NullableString `json:"thumbnail,omitempty"`
	Title NullableString `json:"title,omitempty"`
	Url NullableString `json:"url,omitempty"`
}

// NewExtractNews200ResponseVideosInner instantiates a new ExtractNews200ResponseVideosInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractNews200ResponseVideosInner() *ExtractNews200ResponseVideosInner {
	this := ExtractNews200ResponseVideosInner{}
	return &this
}

// NewExtractNews200ResponseVideosInnerWithDefaults instantiates a new ExtractNews200ResponseVideosInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractNews200ResponseVideosInnerWithDefaults() *ExtractNews200ResponseVideosInner {
	this := ExtractNews200ResponseVideosInner{}
	return &this
}

// GetSummary returns the Summary field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200ResponseVideosInner) GetSummary() string {
	if o == nil || IsNil(o.Summary.Get()) {
		var ret string
		return ret
	}
	return *o.Summary.Get()
}

// GetSummaryOk returns a tuple with the Summary field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200ResponseVideosInner) GetSummaryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Summary.Get(), o.Summary.IsSet()
}

// HasSummary returns a boolean if a field has been set.
func (o *ExtractNews200ResponseVideosInner) HasSummary() bool {
	if o != nil && o.Summary.IsSet() {
		return true
	}

	return false
}

// SetSummary gets a reference to the given NullableString and assigns it to the Summary field.
func (o *ExtractNews200ResponseVideosInner) SetSummary(v string) {
	o.Summary.Set(&v)
}
// SetSummaryNil sets the value for Summary to be an explicit nil
func (o *ExtractNews200ResponseVideosInner) SetSummaryNil() {
	o.Summary.Set(nil)
}

// UnsetSummary ensures that no value is present for Summary, not even an explicit nil
func (o *ExtractNews200ResponseVideosInner) UnsetSummary() {
	o.Summary.Unset()
}

// GetDuration returns the Duration field value if set, zero value otherwise.
func (o *ExtractNews200ResponseVideosInner) GetDuration() int32 {
	if o == nil || IsNil(o.Duration) {
		var ret int32
		return ret
	}
	return *o.Duration
}

// GetDurationOk returns a tuple with the Duration field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200ResponseVideosInner) GetDurationOk() (*int32, bool) {
	if o == nil || IsNil(o.Duration) {
		return nil, false
	}
	return o.Duration, true
}

// HasDuration returns a boolean if a field has been set.
func (o *ExtractNews200ResponseVideosInner) HasDuration() bool {
	if o != nil && !IsNil(o.Duration) {
		return true
	}

	return false
}

// SetDuration gets a reference to the given int32 and assigns it to the Duration field.
func (o *ExtractNews200ResponseVideosInner) SetDuration(v int32) {
	o.Duration = &v
}

// GetThumbnail returns the Thumbnail field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200ResponseVideosInner) GetThumbnail() string {
	if o == nil || IsNil(o.Thumbnail.Get()) {
		var ret string
		return ret
	}
	return *o.Thumbnail.Get()
}

// GetThumbnailOk returns a tuple with the Thumbnail field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200ResponseVideosInner) GetThumbnailOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Thumbnail.Get(), o.Thumbnail.IsSet()
}

// HasThumbnail returns a boolean if a field has been set.
func (o *ExtractNews200ResponseVideosInner) HasThumbnail() bool {
	if o != nil && o.Thumbnail.IsSet() {
		return true
	}

	return false
}

// SetThumbnail gets a reference to the given NullableString and assigns it to the Thumbnail field.
func (o *ExtractNews200ResponseVideosInner) SetThumbnail(v string) {
	o.Thumbnail.Set(&v)
}
// SetThumbnailNil sets the value for Thumbnail to be an explicit nil
func (o *ExtractNews200ResponseVideosInner) SetThumbnailNil() {
	o.Thumbnail.Set(nil)
}

// UnsetThumbnail ensures that no value is present for Thumbnail, not even an explicit nil
func (o *ExtractNews200ResponseVideosInner) UnsetThumbnail() {
	o.Thumbnail.Unset()
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200ResponseVideosInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200ResponseVideosInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *ExtractNews200ResponseVideosInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *ExtractNews200ResponseVideosInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *ExtractNews200ResponseVideosInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *ExtractNews200ResponseVideosInner) UnsetTitle() {
	o.Title.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200ResponseVideosInner) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200ResponseVideosInner) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *ExtractNews200ResponseVideosInner) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *ExtractNews200ResponseVideosInner) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *ExtractNews200ResponseVideosInner) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *ExtractNews200ResponseVideosInner) UnsetUrl() {
	o.Url.Unset()
}

func (o ExtractNews200ResponseVideosInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractNews200ResponseVideosInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Summary.IsSet() {
		toSerialize["summary"] = o.Summary.Get()
	}
	if !IsNil(o.Duration) {
		toSerialize["duration"] = o.Duration
	}
	if o.Thumbnail.IsSet() {
		toSerialize["thumbnail"] = o.Thumbnail.Get()
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	return toSerialize, nil
}

type NullableExtractNews200ResponseVideosInner struct {
	value *ExtractNews200ResponseVideosInner
	isSet bool
}

func (v NullableExtractNews200ResponseVideosInner) Get() *ExtractNews200ResponseVideosInner {
	return v.value
}

func (v *NullableExtractNews200ResponseVideosInner) Set(val *ExtractNews200ResponseVideosInner) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractNews200ResponseVideosInner) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractNews200ResponseVideosInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractNews200ResponseVideosInner(val *ExtractNews200ResponseVideosInner) *NullableExtractNews200ResponseVideosInner {
	return &NullableExtractNews200ResponseVideosInner{value: val, isSet: true}
}

func (v NullableExtractNews200ResponseVideosInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractNews200ResponseVideosInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


