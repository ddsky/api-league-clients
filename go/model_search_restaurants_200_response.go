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

// checks if the SearchRestaurants200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRestaurants200Response{}

// SearchRestaurants200Response struct for SearchRestaurants200Response
type SearchRestaurants200Response struct {
	Restaurants []SearchRestaurants200ResponseRestaurantsInner `json:"restaurants,omitempty"`
}

// NewSearchRestaurants200Response instantiates a new SearchRestaurants200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurants200Response() *SearchRestaurants200Response {
	this := SearchRestaurants200Response{}
	return &this
}

// NewSearchRestaurants200ResponseWithDefaults instantiates a new SearchRestaurants200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurants200ResponseWithDefaults() *SearchRestaurants200Response {
	this := SearchRestaurants200Response{}
	return &this
}

// GetRestaurants returns the Restaurants field value if set, zero value otherwise.
func (o *SearchRestaurants200Response) GetRestaurants() []SearchRestaurants200ResponseRestaurantsInner {
	if o == nil || IsNil(o.Restaurants) {
		var ret []SearchRestaurants200ResponseRestaurantsInner
		return ret
	}
	return o.Restaurants
}

// GetRestaurantsOk returns a tuple with the Restaurants field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200Response) GetRestaurantsOk() ([]SearchRestaurants200ResponseRestaurantsInner, bool) {
	if o == nil || IsNil(o.Restaurants) {
		return nil, false
	}
	return o.Restaurants, true
}

// HasRestaurants returns a boolean if a field has been set.
func (o *SearchRestaurants200Response) HasRestaurants() bool {
	if o != nil && !IsNil(o.Restaurants) {
		return true
	}

	return false
}

// SetRestaurants gets a reference to the given []SearchRestaurants200ResponseRestaurantsInner and assigns it to the Restaurants field.
func (o *SearchRestaurants200Response) SetRestaurants(v []SearchRestaurants200ResponseRestaurantsInner) {
	o.Restaurants = v
}

func (o SearchRestaurants200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRestaurants200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Restaurants) {
		toSerialize["restaurants"] = o.Restaurants
	}
	return toSerialize, nil
}

type NullableSearchRestaurants200Response struct {
	value *SearchRestaurants200Response
	isSet bool
}

func (v NullableSearchRestaurants200Response) Get() *SearchRestaurants200Response {
	return v.value
}

func (v *NullableSearchRestaurants200Response) Set(val *SearchRestaurants200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurants200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurants200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurants200Response(val *SearchRestaurants200Response) *NullableSearchRestaurants200Response {
	return &NullableSearchRestaurants200Response{value: val, isSet: true}
}

func (v NullableSearchRestaurants200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurants200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

