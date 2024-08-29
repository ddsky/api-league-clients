/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchRestaurants200ResponseRestaurantsInnerLocalHours type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRestaurants200ResponseRestaurantsInnerLocalHours{}

// SearchRestaurants200ResponseRestaurantsInnerLocalHours struct for SearchRestaurants200ResponseRestaurantsInnerLocalHours
type SearchRestaurants200ResponseRestaurantsInnerLocalHours struct {
	Operational *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"operational,omitempty"`
	Delivery *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"delivery,omitempty"`
	Pickup *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"pickup,omitempty"`
	DineIn *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"dine_in,omitempty"`
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHours instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHours object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHours() *SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHours{}
	return &this
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursWithDefaults instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHours object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursWithDefaults() *SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHours{}
	return &this
}

// GetOperational returns the Operational field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetOperational() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || IsNil(o.Operational) {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.Operational
}

// GetOperationalOk returns a tuple with the Operational field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetOperationalOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || IsNil(o.Operational) {
		return nil, false
	}
	return o.Operational, true
}

// HasOperational returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasOperational() bool {
	if o != nil && !IsNil(o.Operational) {
		return true
	}

	return false
}

// SetOperational gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the Operational field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetOperational(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.Operational = &v
}

// GetDelivery returns the Delivery field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDelivery() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || IsNil(o.Delivery) {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.Delivery
}

// GetDeliveryOk returns a tuple with the Delivery field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDeliveryOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || IsNil(o.Delivery) {
		return nil, false
	}
	return o.Delivery, true
}

// HasDelivery returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasDelivery() bool {
	if o != nil && !IsNil(o.Delivery) {
		return true
	}

	return false
}

// SetDelivery gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the Delivery field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetDelivery(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.Delivery = &v
}

// GetPickup returns the Pickup field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetPickup() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || IsNil(o.Pickup) {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.Pickup
}

// GetPickupOk returns a tuple with the Pickup field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetPickupOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || IsNil(o.Pickup) {
		return nil, false
	}
	return o.Pickup, true
}

// HasPickup returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasPickup() bool {
	if o != nil && !IsNil(o.Pickup) {
		return true
	}

	return false
}

// SetPickup gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the Pickup field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetPickup(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.Pickup = &v
}

// GetDineIn returns the DineIn field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDineIn() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || IsNil(o.DineIn) {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.DineIn
}

// GetDineInOk returns a tuple with the DineIn field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDineInOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || IsNil(o.DineIn) {
		return nil, false
	}
	return o.DineIn, true
}

// HasDineIn returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasDineIn() bool {
	if o != nil && !IsNil(o.DineIn) {
		return true
	}

	return false
}

// SetDineIn gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the DineIn field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetDineIn(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.DineIn = &v
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHours) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHours) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Operational) {
		toSerialize["operational"] = o.Operational
	}
	if !IsNil(o.Delivery) {
		toSerialize["delivery"] = o.Delivery
	}
	if !IsNil(o.Pickup) {
		toSerialize["pickup"] = o.Pickup
	}
	if !IsNil(o.DineIn) {
		toSerialize["dine_in"] = o.DineIn
	}
	return toSerialize, nil
}

type NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours struct {
	value *SearchRestaurants200ResponseRestaurantsInnerLocalHours
	isSet bool
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) Get() *SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	return v.value
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) Set(val *SearchRestaurants200ResponseRestaurantsInnerLocalHours) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurants200ResponseRestaurantsInnerLocalHours(val *SearchRestaurants200ResponseRestaurantsInnerLocalHours) *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours {
	return &NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours{value: val, isSet: true}
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


