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

// checks if the SearchRestaurantsAPI200ResponseRestaurantsInnerAddress type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRestaurantsAPI200ResponseRestaurantsInnerAddress{}

// SearchRestaurantsAPI200ResponseRestaurantsInnerAddress struct for SearchRestaurantsAPI200ResponseRestaurantsInnerAddress
type SearchRestaurantsAPI200ResponseRestaurantsInnerAddress struct {
	Zipcode NullableString `json:"zipcode,omitempty"`
	Country NullableString `json:"country,omitempty"`
	City NullableString `json:"city,omitempty"`
	Latitude *float32 `json:"latitude,omitempty"`
	Lon *float32 `json:"lon,omitempty"`
	StreetAddr2 NullableString `json:"street_addr_2,omitempty"`
	State NullableString `json:"state,omitempty"`
	StreetAddr NullableString `json:"street_addr,omitempty"`
	Lat *float32 `json:"lat,omitempty"`
	Longitude *float32 `json:"longitude,omitempty"`
}

// NewSearchRestaurantsAPI200ResponseRestaurantsInnerAddress instantiates a new SearchRestaurantsAPI200ResponseRestaurantsInnerAddress object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurantsAPI200ResponseRestaurantsInnerAddress() *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress {
	this := SearchRestaurantsAPI200ResponseRestaurantsInnerAddress{}
	return &this
}

// NewSearchRestaurantsAPI200ResponseRestaurantsInnerAddressWithDefaults instantiates a new SearchRestaurantsAPI200ResponseRestaurantsInnerAddress object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurantsAPI200ResponseRestaurantsInnerAddressWithDefaults() *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress {
	this := SearchRestaurantsAPI200ResponseRestaurantsInnerAddress{}
	return &this
}

// GetZipcode returns the Zipcode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetZipcode() string {
	if o == nil || IsNil(o.Zipcode.Get()) {
		var ret string
		return ret
	}
	return *o.Zipcode.Get()
}

// GetZipcodeOk returns a tuple with the Zipcode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetZipcodeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Zipcode.Get(), o.Zipcode.IsSet()
}

// HasZipcode returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasZipcode() bool {
	if o != nil && o.Zipcode.IsSet() {
		return true
	}

	return false
}

// SetZipcode gets a reference to the given NullableString and assigns it to the Zipcode field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetZipcode(v string) {
	o.Zipcode.Set(&v)
}
// SetZipcodeNil sets the value for Zipcode to be an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetZipcodeNil() {
	o.Zipcode.Set(nil)
}

// UnsetZipcode ensures that no value is present for Zipcode, not even an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnsetZipcode() {
	o.Zipcode.Unset()
}

// GetCountry returns the Country field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetCountry() string {
	if o == nil || IsNil(o.Country.Get()) {
		var ret string
		return ret
	}
	return *o.Country.Get()
}

// GetCountryOk returns a tuple with the Country field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetCountryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Country.Get(), o.Country.IsSet()
}

// HasCountry returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasCountry() bool {
	if o != nil && o.Country.IsSet() {
		return true
	}

	return false
}

// SetCountry gets a reference to the given NullableString and assigns it to the Country field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetCountry(v string) {
	o.Country.Set(&v)
}
// SetCountryNil sets the value for Country to be an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetCountryNil() {
	o.Country.Set(nil)
}

// UnsetCountry ensures that no value is present for Country, not even an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnsetCountry() {
	o.Country.Unset()
}

// GetCity returns the City field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetCity() string {
	if o == nil || IsNil(o.City.Get()) {
		var ret string
		return ret
	}
	return *o.City.Get()
}

// GetCityOk returns a tuple with the City field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetCityOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.City.Get(), o.City.IsSet()
}

// HasCity returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasCity() bool {
	if o != nil && o.City.IsSet() {
		return true
	}

	return false
}

// SetCity gets a reference to the given NullableString and assigns it to the City field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetCity(v string) {
	o.City.Set(&v)
}
// SetCityNil sets the value for City to be an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetCityNil() {
	o.City.Set(nil)
}

// UnsetCity ensures that no value is present for City, not even an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnsetCity() {
	o.City.Unset()
}

// GetLatitude returns the Latitude field value if set, zero value otherwise.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLatitude() float32 {
	if o == nil || IsNil(o.Latitude) {
		var ret float32
		return ret
	}
	return *o.Latitude
}

// GetLatitudeOk returns a tuple with the Latitude field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLatitudeOk() (*float32, bool) {
	if o == nil || IsNil(o.Latitude) {
		return nil, false
	}
	return o.Latitude, true
}

// HasLatitude returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasLatitude() bool {
	if o != nil && !IsNil(o.Latitude) {
		return true
	}

	return false
}

// SetLatitude gets a reference to the given float32 and assigns it to the Latitude field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetLatitude(v float32) {
	o.Latitude = &v
}

// GetLon returns the Lon field value if set, zero value otherwise.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLon() float32 {
	if o == nil || IsNil(o.Lon) {
		var ret float32
		return ret
	}
	return *o.Lon
}

// GetLonOk returns a tuple with the Lon field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLonOk() (*float32, bool) {
	if o == nil || IsNil(o.Lon) {
		return nil, false
	}
	return o.Lon, true
}

// HasLon returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasLon() bool {
	if o != nil && !IsNil(o.Lon) {
		return true
	}

	return false
}

// SetLon gets a reference to the given float32 and assigns it to the Lon field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetLon(v float32) {
	o.Lon = &v
}

// GetStreetAddr2 returns the StreetAddr2 field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetStreetAddr2() string {
	if o == nil || IsNil(o.StreetAddr2.Get()) {
		var ret string
		return ret
	}
	return *o.StreetAddr2.Get()
}

// GetStreetAddr2Ok returns a tuple with the StreetAddr2 field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetStreetAddr2Ok() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.StreetAddr2.Get(), o.StreetAddr2.IsSet()
}

// HasStreetAddr2 returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasStreetAddr2() bool {
	if o != nil && o.StreetAddr2.IsSet() {
		return true
	}

	return false
}

// SetStreetAddr2 gets a reference to the given NullableString and assigns it to the StreetAddr2 field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetStreetAddr2(v string) {
	o.StreetAddr2.Set(&v)
}
// SetStreetAddr2Nil sets the value for StreetAddr2 to be an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetStreetAddr2Nil() {
	o.StreetAddr2.Set(nil)
}

// UnsetStreetAddr2 ensures that no value is present for StreetAddr2, not even an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnsetStreetAddr2() {
	o.StreetAddr2.Unset()
}

// GetState returns the State field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetState() string {
	if o == nil || IsNil(o.State.Get()) {
		var ret string
		return ret
	}
	return *o.State.Get()
}

// GetStateOk returns a tuple with the State field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetStateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.State.Get(), o.State.IsSet()
}

// HasState returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasState() bool {
	if o != nil && o.State.IsSet() {
		return true
	}

	return false
}

// SetState gets a reference to the given NullableString and assigns it to the State field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetState(v string) {
	o.State.Set(&v)
}
// SetStateNil sets the value for State to be an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetStateNil() {
	o.State.Set(nil)
}

// UnsetState ensures that no value is present for State, not even an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnsetState() {
	o.State.Unset()
}

// GetStreetAddr returns the StreetAddr field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetStreetAddr() string {
	if o == nil || IsNil(o.StreetAddr.Get()) {
		var ret string
		return ret
	}
	return *o.StreetAddr.Get()
}

// GetStreetAddrOk returns a tuple with the StreetAddr field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetStreetAddrOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.StreetAddr.Get(), o.StreetAddr.IsSet()
}

// HasStreetAddr returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasStreetAddr() bool {
	if o != nil && o.StreetAddr.IsSet() {
		return true
	}

	return false
}

// SetStreetAddr gets a reference to the given NullableString and assigns it to the StreetAddr field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetStreetAddr(v string) {
	o.StreetAddr.Set(&v)
}
// SetStreetAddrNil sets the value for StreetAddr to be an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetStreetAddrNil() {
	o.StreetAddr.Set(nil)
}

// UnsetStreetAddr ensures that no value is present for StreetAddr, not even an explicit nil
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnsetStreetAddr() {
	o.StreetAddr.Unset()
}

// GetLat returns the Lat field value if set, zero value otherwise.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLat() float32 {
	if o == nil || IsNil(o.Lat) {
		var ret float32
		return ret
	}
	return *o.Lat
}

// GetLatOk returns a tuple with the Lat field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLatOk() (*float32, bool) {
	if o == nil || IsNil(o.Lat) {
		return nil, false
	}
	return o.Lat, true
}

// HasLat returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasLat() bool {
	if o != nil && !IsNil(o.Lat) {
		return true
	}

	return false
}

// SetLat gets a reference to the given float32 and assigns it to the Lat field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetLat(v float32) {
	o.Lat = &v
}

// GetLongitude returns the Longitude field value if set, zero value otherwise.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLongitude() float32 {
	if o == nil || IsNil(o.Longitude) {
		var ret float32
		return ret
	}
	return *o.Longitude
}

// GetLongitudeOk returns a tuple with the Longitude field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) GetLongitudeOk() (*float32, bool) {
	if o == nil || IsNil(o.Longitude) {
		return nil, false
	}
	return o.Longitude, true
}

// HasLongitude returns a boolean if a field has been set.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) HasLongitude() bool {
	if o != nil && !IsNil(o.Longitude) {
		return true
	}

	return false
}

// SetLongitude gets a reference to the given float32 and assigns it to the Longitude field.
func (o *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) SetLongitude(v float32) {
	o.Longitude = &v
}

func (o SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Zipcode.IsSet() {
		toSerialize["zipcode"] = o.Zipcode.Get()
	}
	if o.Country.IsSet() {
		toSerialize["country"] = o.Country.Get()
	}
	if o.City.IsSet() {
		toSerialize["city"] = o.City.Get()
	}
	if !IsNil(o.Latitude) {
		toSerialize["latitude"] = o.Latitude
	}
	if !IsNil(o.Lon) {
		toSerialize["lon"] = o.Lon
	}
	if o.StreetAddr2.IsSet() {
		toSerialize["street_addr_2"] = o.StreetAddr2.Get()
	}
	if o.State.IsSet() {
		toSerialize["state"] = o.State.Get()
	}
	if o.StreetAddr.IsSet() {
		toSerialize["street_addr"] = o.StreetAddr.Get()
	}
	if !IsNil(o.Lat) {
		toSerialize["lat"] = o.Lat
	}
	if !IsNil(o.Longitude) {
		toSerialize["longitude"] = o.Longitude
	}
	return toSerialize, nil
}

type NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress struct {
	value *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress
	isSet bool
}

func (v NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress) Get() *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress {
	return v.value
}

func (v *NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress) Set(val *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress(val *SearchRestaurantsAPI200ResponseRestaurantsInnerAddress) *NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress {
	return &NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress{value: val, isSet: true}
}

func (v NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurantsAPI200ResponseRestaurantsInnerAddress) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


