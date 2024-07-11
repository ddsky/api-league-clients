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

// checks if the SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{}

// SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational struct for SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
type SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational struct {
	Sunday NullableString `json:"sunday,omitempty"`
	Saturday NullableString `json:"saturday,omitempty"`
	Tuesday NullableString `json:"tuesday,omitempty"`
	Thursday NullableString `json:"thursday,omitempty"`
	Friday NullableString `json:"friday,omitempty"`
	Wednesday NullableString `json:"wednesday,omitempty"`
	Monday NullableString `json:"monday,omitempty"`
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational() *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{}
	return &this
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalWithDefaults instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalWithDefaults() *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{}
	return &this
}

// GetSunday returns the Sunday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSunday() string {
	if o == nil || IsNil(o.Sunday.Get()) {
		var ret string
		return ret
	}
	return *o.Sunday.Get()
}

// GetSundayOk returns a tuple with the Sunday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSundayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Sunday.Get(), o.Sunday.IsSet()
}

// HasSunday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasSunday() bool {
	if o != nil && o.Sunday.IsSet() {
		return true
	}

	return false
}

// SetSunday gets a reference to the given NullableString and assigns it to the Sunday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetSunday(v string) {
	o.Sunday.Set(&v)
}
// SetSundayNil sets the value for Sunday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetSundayNil() {
	o.Sunday.Set(nil)
}

// UnsetSunday ensures that no value is present for Sunday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetSunday() {
	o.Sunday.Unset()
}

// GetSaturday returns the Saturday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSaturday() string {
	if o == nil || IsNil(o.Saturday.Get()) {
		var ret string
		return ret
	}
	return *o.Saturday.Get()
}

// GetSaturdayOk returns a tuple with the Saturday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSaturdayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Saturday.Get(), o.Saturday.IsSet()
}

// HasSaturday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasSaturday() bool {
	if o != nil && o.Saturday.IsSet() {
		return true
	}

	return false
}

// SetSaturday gets a reference to the given NullableString and assigns it to the Saturday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetSaturday(v string) {
	o.Saturday.Set(&v)
}
// SetSaturdayNil sets the value for Saturday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetSaturdayNil() {
	o.Saturday.Set(nil)
}

// UnsetSaturday ensures that no value is present for Saturday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetSaturday() {
	o.Saturday.Unset()
}

// GetTuesday returns the Tuesday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetTuesday() string {
	if o == nil || IsNil(o.Tuesday.Get()) {
		var ret string
		return ret
	}
	return *o.Tuesday.Get()
}

// GetTuesdayOk returns a tuple with the Tuesday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetTuesdayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Tuesday.Get(), o.Tuesday.IsSet()
}

// HasTuesday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasTuesday() bool {
	if o != nil && o.Tuesday.IsSet() {
		return true
	}

	return false
}

// SetTuesday gets a reference to the given NullableString and assigns it to the Tuesday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetTuesday(v string) {
	o.Tuesday.Set(&v)
}
// SetTuesdayNil sets the value for Tuesday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetTuesdayNil() {
	o.Tuesday.Set(nil)
}

// UnsetTuesday ensures that no value is present for Tuesday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetTuesday() {
	o.Tuesday.Unset()
}

// GetThursday returns the Thursday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetThursday() string {
	if o == nil || IsNil(o.Thursday.Get()) {
		var ret string
		return ret
	}
	return *o.Thursday.Get()
}

// GetThursdayOk returns a tuple with the Thursday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetThursdayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Thursday.Get(), o.Thursday.IsSet()
}

// HasThursday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasThursday() bool {
	if o != nil && o.Thursday.IsSet() {
		return true
	}

	return false
}

// SetThursday gets a reference to the given NullableString and assigns it to the Thursday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetThursday(v string) {
	o.Thursday.Set(&v)
}
// SetThursdayNil sets the value for Thursday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetThursdayNil() {
	o.Thursday.Set(nil)
}

// UnsetThursday ensures that no value is present for Thursday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetThursday() {
	o.Thursday.Unset()
}

// GetFriday returns the Friday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetFriday() string {
	if o == nil || IsNil(o.Friday.Get()) {
		var ret string
		return ret
	}
	return *o.Friday.Get()
}

// GetFridayOk returns a tuple with the Friday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetFridayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Friday.Get(), o.Friday.IsSet()
}

// HasFriday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasFriday() bool {
	if o != nil && o.Friday.IsSet() {
		return true
	}

	return false
}

// SetFriday gets a reference to the given NullableString and assigns it to the Friday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetFriday(v string) {
	o.Friday.Set(&v)
}
// SetFridayNil sets the value for Friday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetFridayNil() {
	o.Friday.Set(nil)
}

// UnsetFriday ensures that no value is present for Friday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetFriday() {
	o.Friday.Unset()
}

// GetWednesday returns the Wednesday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetWednesday() string {
	if o == nil || IsNil(o.Wednesday.Get()) {
		var ret string
		return ret
	}
	return *o.Wednesday.Get()
}

// GetWednesdayOk returns a tuple with the Wednesday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetWednesdayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Wednesday.Get(), o.Wednesday.IsSet()
}

// HasWednesday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasWednesday() bool {
	if o != nil && o.Wednesday.IsSet() {
		return true
	}

	return false
}

// SetWednesday gets a reference to the given NullableString and assigns it to the Wednesday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetWednesday(v string) {
	o.Wednesday.Set(&v)
}
// SetWednesdayNil sets the value for Wednesday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetWednesdayNil() {
	o.Wednesday.Set(nil)
}

// UnsetWednesday ensures that no value is present for Wednesday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetWednesday() {
	o.Wednesday.Unset()
}

// GetMonday returns the Monday field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetMonday() string {
	if o == nil || IsNil(o.Monday.Get()) {
		var ret string
		return ret
	}
	return *o.Monday.Get()
}

// GetMondayOk returns a tuple with the Monday field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetMondayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Monday.Get(), o.Monday.IsSet()
}

// HasMonday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasMonday() bool {
	if o != nil && o.Monday.IsSet() {
		return true
	}

	return false
}

// SetMonday gets a reference to the given NullableString and assigns it to the Monday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetMonday(v string) {
	o.Monday.Set(&v)
}
// SetMondayNil sets the value for Monday to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetMondayNil() {
	o.Monday.Set(nil)
}

// UnsetMonday ensures that no value is present for Monday, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnsetMonday() {
	o.Monday.Unset()
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Sunday.IsSet() {
		toSerialize["sunday"] = o.Sunday.Get()
	}
	if o.Saturday.IsSet() {
		toSerialize["saturday"] = o.Saturday.Get()
	}
	if o.Tuesday.IsSet() {
		toSerialize["tuesday"] = o.Tuesday.Get()
	}
	if o.Thursday.IsSet() {
		toSerialize["thursday"] = o.Thursday.Get()
	}
	if o.Friday.IsSet() {
		toSerialize["friday"] = o.Friday.Get()
	}
	if o.Wednesday.IsSet() {
		toSerialize["wednesday"] = o.Wednesday.Get()
	}
	if o.Monday.IsSet() {
		toSerialize["monday"] = o.Monday.Get()
	}
	return toSerialize, nil
}

type NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational struct {
	value *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
	isSet bool
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) Get() *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	return v.value
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) Set(val *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(val *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	return &NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{value: val, isSet: true}
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


