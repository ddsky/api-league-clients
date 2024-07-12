/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchRestaurants200ResponseRestaurantsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRestaurants200ResponseRestaurantsInner{}

// SearchRestaurants200ResponseRestaurantsInner struct for SearchRestaurants200ResponseRestaurantsInner
type SearchRestaurants200ResponseRestaurantsInner struct {
	OffersThirdPartyDelivery *bool `json:"offers_third_party_delivery,omitempty"`
	Address *SearchRestaurants200ResponseRestaurantsInnerAddress `json:"address,omitempty"`
	SupportsUpcCodes *bool `json:"supports_upc_codes,omitempty"`
	IsOpen *bool `json:"is_open,omitempty"`
	Description NullableString `json:"description,omitempty"`
	WeightedRatingValue *int32 `json:"weighted_rating_value,omitempty"`
	Type NullableString `json:"type,omitempty"`
	OffersFirstPartyDelivery *bool `json:"offers_first_party_delivery,omitempty"`
	AggregatedRatingCount *int32 `json:"aggregated_rating_count,omitempty"`
	PickupEnabled *bool `json:"pickup_enabled,omitempty"`
	Cuisines []*string `json:"cuisines,omitempty"`
	Miles *float32 `json:"miles,omitempty"`
	DollarSigns *int32 `json:"dollar_signs,omitempty"`
	DeliveryEnabled *bool `json:"delivery_enabled,omitempty"`
	Name NullableString `json:"name,omitempty"`
	PhoneNumber *float32 `json:"phone_number,omitempty"`
	Id NullableString `json:"_id,omitempty"`
	LocalHours *SearchRestaurants200ResponseRestaurantsInnerLocalHours `json:"local_hours,omitempty"`
}

// NewSearchRestaurants200ResponseRestaurantsInner instantiates a new SearchRestaurants200ResponseRestaurantsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurants200ResponseRestaurantsInner() *SearchRestaurants200ResponseRestaurantsInner {
	this := SearchRestaurants200ResponseRestaurantsInner{}
	return &this
}

// NewSearchRestaurants200ResponseRestaurantsInnerWithDefaults instantiates a new SearchRestaurants200ResponseRestaurantsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurants200ResponseRestaurantsInnerWithDefaults() *SearchRestaurants200ResponseRestaurantsInner {
	this := SearchRestaurants200ResponseRestaurantsInner{}
	return &this
}

// GetOffersThirdPartyDelivery returns the OffersThirdPartyDelivery field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersThirdPartyDelivery() bool {
	if o == nil || IsNil(o.OffersThirdPartyDelivery) {
		var ret bool
		return ret
	}
	return *o.OffersThirdPartyDelivery
}

// GetOffersThirdPartyDeliveryOk returns a tuple with the OffersThirdPartyDelivery field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersThirdPartyDeliveryOk() (*bool, bool) {
	if o == nil || IsNil(o.OffersThirdPartyDelivery) {
		return nil, false
	}
	return o.OffersThirdPartyDelivery, true
}

// HasOffersThirdPartyDelivery returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasOffersThirdPartyDelivery() bool {
	if o != nil && !IsNil(o.OffersThirdPartyDelivery) {
		return true
	}

	return false
}

// SetOffersThirdPartyDelivery gets a reference to the given bool and assigns it to the OffersThirdPartyDelivery field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetOffersThirdPartyDelivery(v bool) {
	o.OffersThirdPartyDelivery = &v
}

// GetAddress returns the Address field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetAddress() SearchRestaurants200ResponseRestaurantsInnerAddress {
	if o == nil || IsNil(o.Address) {
		var ret SearchRestaurants200ResponseRestaurantsInnerAddress
		return ret
	}
	return *o.Address
}

// GetAddressOk returns a tuple with the Address field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetAddressOk() (*SearchRestaurants200ResponseRestaurantsInnerAddress, bool) {
	if o == nil || IsNil(o.Address) {
		return nil, false
	}
	return o.Address, true
}

// HasAddress returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasAddress() bool {
	if o != nil && !IsNil(o.Address) {
		return true
	}

	return false
}

// SetAddress gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerAddress and assigns it to the Address field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetAddress(v SearchRestaurants200ResponseRestaurantsInnerAddress) {
	o.Address = &v
}

// GetSupportsUpcCodes returns the SupportsUpcCodes field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetSupportsUpcCodes() bool {
	if o == nil || IsNil(o.SupportsUpcCodes) {
		var ret bool
		return ret
	}
	return *o.SupportsUpcCodes
}

// GetSupportsUpcCodesOk returns a tuple with the SupportsUpcCodes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetSupportsUpcCodesOk() (*bool, bool) {
	if o == nil || IsNil(o.SupportsUpcCodes) {
		return nil, false
	}
	return o.SupportsUpcCodes, true
}

// HasSupportsUpcCodes returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasSupportsUpcCodes() bool {
	if o != nil && !IsNil(o.SupportsUpcCodes) {
		return true
	}

	return false
}

// SetSupportsUpcCodes gets a reference to the given bool and assigns it to the SupportsUpcCodes field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetSupportsUpcCodes(v bool) {
	o.SupportsUpcCodes = &v
}

// GetIsOpen returns the IsOpen field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetIsOpen() bool {
	if o == nil || IsNil(o.IsOpen) {
		var ret bool
		return ret
	}
	return *o.IsOpen
}

// GetIsOpenOk returns a tuple with the IsOpen field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetIsOpenOk() (*bool, bool) {
	if o == nil || IsNil(o.IsOpen) {
		return nil, false
	}
	return o.IsOpen, true
}

// HasIsOpen returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasIsOpen() bool {
	if o != nil && !IsNil(o.IsOpen) {
		return true
	}

	return false
}

// SetIsOpen gets a reference to the given bool and assigns it to the IsOpen field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetIsOpen(v bool) {
	o.IsOpen = &v
}

// GetDescription returns the Description field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInner) GetDescription() string {
	if o == nil || IsNil(o.Description.Get()) {
		var ret string
		return ret
	}
	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInner) GetDescriptionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// HasDescription returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasDescription() bool {
	if o != nil && o.Description.IsSet() {
		return true
	}

	return false
}

// SetDescription gets a reference to the given NullableString and assigns it to the Description field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetDescription(v string) {
	o.Description.Set(&v)
}
// SetDescriptionNil sets the value for Description to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) SetDescriptionNil() {
	o.Description.Set(nil)
}

// UnsetDescription ensures that no value is present for Description, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetDescription() {
	o.Description.Unset()
}

// GetWeightedRatingValue returns the WeightedRatingValue field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetWeightedRatingValue() int32 {
	if o == nil || IsNil(o.WeightedRatingValue) {
		var ret int32
		return ret
	}
	return *o.WeightedRatingValue
}

// GetWeightedRatingValueOk returns a tuple with the WeightedRatingValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetWeightedRatingValueOk() (*int32, bool) {
	if o == nil || IsNil(o.WeightedRatingValue) {
		return nil, false
	}
	return o.WeightedRatingValue, true
}

// HasWeightedRatingValue returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasWeightedRatingValue() bool {
	if o != nil && !IsNil(o.WeightedRatingValue) {
		return true
	}

	return false
}

// SetWeightedRatingValue gets a reference to the given int32 and assigns it to the WeightedRatingValue field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetWeightedRatingValue(v int32) {
	o.WeightedRatingValue = &v
}

// GetType returns the Type field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInner) GetType() string {
	if o == nil || IsNil(o.Type.Get()) {
		var ret string
		return ret
	}
	return *o.Type.Get()
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInner) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Type.Get(), o.Type.IsSet()
}

// HasType returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasType() bool {
	if o != nil && o.Type.IsSet() {
		return true
	}

	return false
}

// SetType gets a reference to the given NullableString and assigns it to the Type field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetType(v string) {
	o.Type.Set(&v)
}
// SetTypeNil sets the value for Type to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) SetTypeNil() {
	o.Type.Set(nil)
}

// UnsetType ensures that no value is present for Type, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetType() {
	o.Type.Unset()
}

// GetOffersFirstPartyDelivery returns the OffersFirstPartyDelivery field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersFirstPartyDelivery() bool {
	if o == nil || IsNil(o.OffersFirstPartyDelivery) {
		var ret bool
		return ret
	}
	return *o.OffersFirstPartyDelivery
}

// GetOffersFirstPartyDeliveryOk returns a tuple with the OffersFirstPartyDelivery field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersFirstPartyDeliveryOk() (*bool, bool) {
	if o == nil || IsNil(o.OffersFirstPartyDelivery) {
		return nil, false
	}
	return o.OffersFirstPartyDelivery, true
}

// HasOffersFirstPartyDelivery returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasOffersFirstPartyDelivery() bool {
	if o != nil && !IsNil(o.OffersFirstPartyDelivery) {
		return true
	}

	return false
}

// SetOffersFirstPartyDelivery gets a reference to the given bool and assigns it to the OffersFirstPartyDelivery field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetOffersFirstPartyDelivery(v bool) {
	o.OffersFirstPartyDelivery = &v
}

// GetAggregatedRatingCount returns the AggregatedRatingCount field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetAggregatedRatingCount() int32 {
	if o == nil || IsNil(o.AggregatedRatingCount) {
		var ret int32
		return ret
	}
	return *o.AggregatedRatingCount
}

// GetAggregatedRatingCountOk returns a tuple with the AggregatedRatingCount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetAggregatedRatingCountOk() (*int32, bool) {
	if o == nil || IsNil(o.AggregatedRatingCount) {
		return nil, false
	}
	return o.AggregatedRatingCount, true
}

// HasAggregatedRatingCount returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasAggregatedRatingCount() bool {
	if o != nil && !IsNil(o.AggregatedRatingCount) {
		return true
	}

	return false
}

// SetAggregatedRatingCount gets a reference to the given int32 and assigns it to the AggregatedRatingCount field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetAggregatedRatingCount(v int32) {
	o.AggregatedRatingCount = &v
}

// GetPickupEnabled returns the PickupEnabled field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetPickupEnabled() bool {
	if o == nil || IsNil(o.PickupEnabled) {
		var ret bool
		return ret
	}
	return *o.PickupEnabled
}

// GetPickupEnabledOk returns a tuple with the PickupEnabled field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetPickupEnabledOk() (*bool, bool) {
	if o == nil || IsNil(o.PickupEnabled) {
		return nil, false
	}
	return o.PickupEnabled, true
}

// HasPickupEnabled returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasPickupEnabled() bool {
	if o != nil && !IsNil(o.PickupEnabled) {
		return true
	}

	return false
}

// SetPickupEnabled gets a reference to the given bool and assigns it to the PickupEnabled field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetPickupEnabled(v bool) {
	o.PickupEnabled = &v
}

// GetCuisines returns the Cuisines field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetCuisines() []*string {
	if o == nil || IsNil(o.Cuisines) {
		var ret []*string
		return ret
	}
	return o.Cuisines
}

// GetCuisinesOk returns a tuple with the Cuisines field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetCuisinesOk() ([]*string, bool) {
	if o == nil || IsNil(o.Cuisines) {
		return nil, false
	}
	return o.Cuisines, true
}

// HasCuisines returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasCuisines() bool {
	if o != nil && !IsNil(o.Cuisines) {
		return true
	}

	return false
}

// SetCuisines gets a reference to the given []*string and assigns it to the Cuisines field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetCuisines(v []*string) {
	o.Cuisines = v
}

// GetMiles returns the Miles field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetMiles() float32 {
	if o == nil || IsNil(o.Miles) {
		var ret float32
		return ret
	}
	return *o.Miles
}

// GetMilesOk returns a tuple with the Miles field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetMilesOk() (*float32, bool) {
	if o == nil || IsNil(o.Miles) {
		return nil, false
	}
	return o.Miles, true
}

// HasMiles returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasMiles() bool {
	if o != nil && !IsNil(o.Miles) {
		return true
	}

	return false
}

// SetMiles gets a reference to the given float32 and assigns it to the Miles field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetMiles(v float32) {
	o.Miles = &v
}

// GetDollarSigns returns the DollarSigns field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetDollarSigns() int32 {
	if o == nil || IsNil(o.DollarSigns) {
		var ret int32
		return ret
	}
	return *o.DollarSigns
}

// GetDollarSignsOk returns a tuple with the DollarSigns field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetDollarSignsOk() (*int32, bool) {
	if o == nil || IsNil(o.DollarSigns) {
		return nil, false
	}
	return o.DollarSigns, true
}

// HasDollarSigns returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasDollarSigns() bool {
	if o != nil && !IsNil(o.DollarSigns) {
		return true
	}

	return false
}

// SetDollarSigns gets a reference to the given int32 and assigns it to the DollarSigns field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetDollarSigns(v int32) {
	o.DollarSigns = &v
}

// GetDeliveryEnabled returns the DeliveryEnabled field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetDeliveryEnabled() bool {
	if o == nil || IsNil(o.DeliveryEnabled) {
		var ret bool
		return ret
	}
	return *o.DeliveryEnabled
}

// GetDeliveryEnabledOk returns a tuple with the DeliveryEnabled field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetDeliveryEnabledOk() (*bool, bool) {
	if o == nil || IsNil(o.DeliveryEnabled) {
		return nil, false
	}
	return o.DeliveryEnabled, true
}

// HasDeliveryEnabled returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasDeliveryEnabled() bool {
	if o != nil && !IsNil(o.DeliveryEnabled) {
		return true
	}

	return false
}

// SetDeliveryEnabled gets a reference to the given bool and assigns it to the DeliveryEnabled field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetDeliveryEnabled(v bool) {
	o.DeliveryEnabled = &v
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetName() {
	o.Name.Unset()
}

// GetPhoneNumber returns the PhoneNumber field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetPhoneNumber() float32 {
	if o == nil || IsNil(o.PhoneNumber) {
		var ret float32
		return ret
	}
	return *o.PhoneNumber
}

// GetPhoneNumberOk returns a tuple with the PhoneNumber field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetPhoneNumberOk() (*float32, bool) {
	if o == nil || IsNil(o.PhoneNumber) {
		return nil, false
	}
	return o.PhoneNumber, true
}

// HasPhoneNumber returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasPhoneNumber() bool {
	if o != nil && !IsNil(o.PhoneNumber) {
		return true
	}

	return false
}

// SetPhoneNumber gets a reference to the given float32 and assigns it to the PhoneNumber field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetPhoneNumber(v float32) {
	o.PhoneNumber = &v
}

// GetId returns the Id field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRestaurants200ResponseRestaurantsInner) GetId() string {
	if o == nil || IsNil(o.Id.Get()) {
		var ret string
		return ret
	}
	return *o.Id.Get()
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRestaurants200ResponseRestaurantsInner) GetIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Id.Get(), o.Id.IsSet()
}

// HasId returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasId() bool {
	if o != nil && o.Id.IsSet() {
		return true
	}

	return false
}

// SetId gets a reference to the given NullableString and assigns it to the Id field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetId(v string) {
	o.Id.Set(&v)
}
// SetIdNil sets the value for Id to be an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) SetIdNil() {
	o.Id.Set(nil)
}

// UnsetId ensures that no value is present for Id, not even an explicit nil
func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetId() {
	o.Id.Unset()
}

// GetLocalHours returns the LocalHours field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetLocalHours() SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	if o == nil || IsNil(o.LocalHours) {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHours
		return ret
	}
	return *o.LocalHours
}

// GetLocalHoursOk returns a tuple with the LocalHours field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) GetLocalHoursOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHours, bool) {
	if o == nil || IsNil(o.LocalHours) {
		return nil, false
	}
	return o.LocalHours, true
}

// HasLocalHours returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInner) HasLocalHours() bool {
	if o != nil && !IsNil(o.LocalHours) {
		return true
	}

	return false
}

// SetLocalHours gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHours and assigns it to the LocalHours field.
func (o *SearchRestaurants200ResponseRestaurantsInner) SetLocalHours(v SearchRestaurants200ResponseRestaurantsInnerLocalHours) {
	o.LocalHours = &v
}

func (o SearchRestaurants200ResponseRestaurantsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRestaurants200ResponseRestaurantsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.OffersThirdPartyDelivery) {
		toSerialize["offers_third_party_delivery"] = o.OffersThirdPartyDelivery
	}
	if !IsNil(o.Address) {
		toSerialize["address"] = o.Address
	}
	if !IsNil(o.SupportsUpcCodes) {
		toSerialize["supports_upc_codes"] = o.SupportsUpcCodes
	}
	if !IsNil(o.IsOpen) {
		toSerialize["is_open"] = o.IsOpen
	}
	if o.Description.IsSet() {
		toSerialize["description"] = o.Description.Get()
	}
	if !IsNil(o.WeightedRatingValue) {
		toSerialize["weighted_rating_value"] = o.WeightedRatingValue
	}
	if o.Type.IsSet() {
		toSerialize["type"] = o.Type.Get()
	}
	if !IsNil(o.OffersFirstPartyDelivery) {
		toSerialize["offers_first_party_delivery"] = o.OffersFirstPartyDelivery
	}
	if !IsNil(o.AggregatedRatingCount) {
		toSerialize["aggregated_rating_count"] = o.AggregatedRatingCount
	}
	if !IsNil(o.PickupEnabled) {
		toSerialize["pickup_enabled"] = o.PickupEnabled
	}
	if !IsNil(o.Cuisines) {
		toSerialize["cuisines"] = o.Cuisines
	}
	if !IsNil(o.Miles) {
		toSerialize["miles"] = o.Miles
	}
	if !IsNil(o.DollarSigns) {
		toSerialize["dollar_signs"] = o.DollarSigns
	}
	if !IsNil(o.DeliveryEnabled) {
		toSerialize["delivery_enabled"] = o.DeliveryEnabled
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !IsNil(o.PhoneNumber) {
		toSerialize["phone_number"] = o.PhoneNumber
	}
	if o.Id.IsSet() {
		toSerialize["_id"] = o.Id.Get()
	}
	if !IsNil(o.LocalHours) {
		toSerialize["local_hours"] = o.LocalHours
	}
	return toSerialize, nil
}

type NullableSearchRestaurants200ResponseRestaurantsInner struct {
	value *SearchRestaurants200ResponseRestaurantsInner
	isSet bool
}

func (v NullableSearchRestaurants200ResponseRestaurantsInner) Get() *SearchRestaurants200ResponseRestaurantsInner {
	return v.value
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInner) Set(val *SearchRestaurants200ResponseRestaurantsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurants200ResponseRestaurantsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurants200ResponseRestaurantsInner(val *SearchRestaurants200ResponseRestaurantsInner) *NullableSearchRestaurants200ResponseRestaurantsInner {
	return &NullableSearchRestaurants200ResponseRestaurantsInner{value: val, isSet: true}
}

func (v NullableSearchRestaurants200ResponseRestaurantsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


