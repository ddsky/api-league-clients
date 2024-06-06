/*
API League

API League is a Hub for World Class APIs.

API version: 1.2.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ExtractDates200ResponseDatesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractDates200ResponseDatesInner{}

// ExtractDates200ResponseDatesInner struct for ExtractDates200ResponseDatesInner
type ExtractDates200ResponseDatesInner struct {
	StartPosition *int32 `json:"start_position,omitempty"`
	Date NullableString `json:"date,omitempty"`
	NormalizedDate *float32 `json:"normalized_date,omitempty"`
	Tag NullableString `json:"tag,omitempty"`
	EndPosition *int32 `json:"end_position,omitempty"`
}

// NewExtractDates200ResponseDatesInner instantiates a new ExtractDates200ResponseDatesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractDates200ResponseDatesInner() *ExtractDates200ResponseDatesInner {
	this := ExtractDates200ResponseDatesInner{}
	return &this
}

// NewExtractDates200ResponseDatesInnerWithDefaults instantiates a new ExtractDates200ResponseDatesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractDates200ResponseDatesInnerWithDefaults() *ExtractDates200ResponseDatesInner {
	this := ExtractDates200ResponseDatesInner{}
	return &this
}

// GetStartPosition returns the StartPosition field value if set, zero value otherwise.
func (o *ExtractDates200ResponseDatesInner) GetStartPosition() int32 {
	if o == nil || IsNil(o.StartPosition) {
		var ret int32
		return ret
	}
	return *o.StartPosition
}

// GetStartPositionOk returns a tuple with the StartPosition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractDates200ResponseDatesInner) GetStartPositionOk() (*int32, bool) {
	if o == nil || IsNil(o.StartPosition) {
		return nil, false
	}
	return o.StartPosition, true
}

// HasStartPosition returns a boolean if a field has been set.
func (o *ExtractDates200ResponseDatesInner) HasStartPosition() bool {
	if o != nil && !IsNil(o.StartPosition) {
		return true
	}

	return false
}

// SetStartPosition gets a reference to the given int32 and assigns it to the StartPosition field.
func (o *ExtractDates200ResponseDatesInner) SetStartPosition(v int32) {
	o.StartPosition = &v
}

// GetDate returns the Date field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractDates200ResponseDatesInner) GetDate() string {
	if o == nil || IsNil(o.Date.Get()) {
		var ret string
		return ret
	}
	return *o.Date.Get()
}

// GetDateOk returns a tuple with the Date field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractDates200ResponseDatesInner) GetDateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Date.Get(), o.Date.IsSet()
}

// HasDate returns a boolean if a field has been set.
func (o *ExtractDates200ResponseDatesInner) HasDate() bool {
	if o != nil && o.Date.IsSet() {
		return true
	}

	return false
}

// SetDate gets a reference to the given NullableString and assigns it to the Date field.
func (o *ExtractDates200ResponseDatesInner) SetDate(v string) {
	o.Date.Set(&v)
}
// SetDateNil sets the value for Date to be an explicit nil
func (o *ExtractDates200ResponseDatesInner) SetDateNil() {
	o.Date.Set(nil)
}

// UnsetDate ensures that no value is present for Date, not even an explicit nil
func (o *ExtractDates200ResponseDatesInner) UnsetDate() {
	o.Date.Unset()
}

// GetNormalizedDate returns the NormalizedDate field value if set, zero value otherwise.
func (o *ExtractDates200ResponseDatesInner) GetNormalizedDate() float32 {
	if o == nil || IsNil(o.NormalizedDate) {
		var ret float32
		return ret
	}
	return *o.NormalizedDate
}

// GetNormalizedDateOk returns a tuple with the NormalizedDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractDates200ResponseDatesInner) GetNormalizedDateOk() (*float32, bool) {
	if o == nil || IsNil(o.NormalizedDate) {
		return nil, false
	}
	return o.NormalizedDate, true
}

// HasNormalizedDate returns a boolean if a field has been set.
func (o *ExtractDates200ResponseDatesInner) HasNormalizedDate() bool {
	if o != nil && !IsNil(o.NormalizedDate) {
		return true
	}

	return false
}

// SetNormalizedDate gets a reference to the given float32 and assigns it to the NormalizedDate field.
func (o *ExtractDates200ResponseDatesInner) SetNormalizedDate(v float32) {
	o.NormalizedDate = &v
}

// GetTag returns the Tag field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractDates200ResponseDatesInner) GetTag() string {
	if o == nil || IsNil(o.Tag.Get()) {
		var ret string
		return ret
	}
	return *o.Tag.Get()
}

// GetTagOk returns a tuple with the Tag field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractDates200ResponseDatesInner) GetTagOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Tag.Get(), o.Tag.IsSet()
}

// HasTag returns a boolean if a field has been set.
func (o *ExtractDates200ResponseDatesInner) HasTag() bool {
	if o != nil && o.Tag.IsSet() {
		return true
	}

	return false
}

// SetTag gets a reference to the given NullableString and assigns it to the Tag field.
func (o *ExtractDates200ResponseDatesInner) SetTag(v string) {
	o.Tag.Set(&v)
}
// SetTagNil sets the value for Tag to be an explicit nil
func (o *ExtractDates200ResponseDatesInner) SetTagNil() {
	o.Tag.Set(nil)
}

// UnsetTag ensures that no value is present for Tag, not even an explicit nil
func (o *ExtractDates200ResponseDatesInner) UnsetTag() {
	o.Tag.Unset()
}

// GetEndPosition returns the EndPosition field value if set, zero value otherwise.
func (o *ExtractDates200ResponseDatesInner) GetEndPosition() int32 {
	if o == nil || IsNil(o.EndPosition) {
		var ret int32
		return ret
	}
	return *o.EndPosition
}

// GetEndPositionOk returns a tuple with the EndPosition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractDates200ResponseDatesInner) GetEndPositionOk() (*int32, bool) {
	if o == nil || IsNil(o.EndPosition) {
		return nil, false
	}
	return o.EndPosition, true
}

// HasEndPosition returns a boolean if a field has been set.
func (o *ExtractDates200ResponseDatesInner) HasEndPosition() bool {
	if o != nil && !IsNil(o.EndPosition) {
		return true
	}

	return false
}

// SetEndPosition gets a reference to the given int32 and assigns it to the EndPosition field.
func (o *ExtractDates200ResponseDatesInner) SetEndPosition(v int32) {
	o.EndPosition = &v
}

func (o ExtractDates200ResponseDatesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractDates200ResponseDatesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.StartPosition) {
		toSerialize["start_position"] = o.StartPosition
	}
	if o.Date.IsSet() {
		toSerialize["date"] = o.Date.Get()
	}
	if !IsNil(o.NormalizedDate) {
		toSerialize["normalized_date"] = o.NormalizedDate
	}
	if o.Tag.IsSet() {
		toSerialize["tag"] = o.Tag.Get()
	}
	if !IsNil(o.EndPosition) {
		toSerialize["end_position"] = o.EndPosition
	}
	return toSerialize, nil
}

type NullableExtractDates200ResponseDatesInner struct {
	value *ExtractDates200ResponseDatesInner
	isSet bool
}

func (v NullableExtractDates200ResponseDatesInner) Get() *ExtractDates200ResponseDatesInner {
	return v.value
}

func (v *NullableExtractDates200ResponseDatesInner) Set(val *ExtractDates200ResponseDatesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractDates200ResponseDatesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractDates200ResponseDatesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractDates200ResponseDatesInner(val *ExtractDates200ResponseDatesInner) *NullableExtractDates200ResponseDatesInner {
	return &NullableExtractDates200ResponseDatesInner{value: val, isSet: true}
}

func (v NullableExtractDates200ResponseDatesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractDates200ResponseDatesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


