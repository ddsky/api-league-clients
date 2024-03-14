# SearchRestaurants200ResponseRestaurantsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OffersThirdPartyDelivery** | Pointer to **bool** |  | [optional] 
**Address** | Pointer to [**SearchRestaurants200ResponseRestaurantsInnerAddress**](SearchRestaurants200ResponseRestaurantsInnerAddress.md) |  | [optional] 
**SupportsUpcCodes** | Pointer to **bool** |  | [optional] 
**IsOpen** | Pointer to **bool** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**WeightedRatingValue** | Pointer to **int32** |  | [optional] 
**Type** | Pointer to **NullableString** |  | [optional] 
**OffersFirstPartyDelivery** | Pointer to **bool** |  | [optional] 
**AggregatedRatingCount** | Pointer to **int32** |  | [optional] 
**PickupEnabled** | Pointer to **bool** |  | [optional] 
**Cuisines** | Pointer to **[]string** |  | [optional] 
**Miles** | Pointer to **float32** |  | [optional] 
**DollarSigns** | Pointer to **int32** |  | [optional] 
**DeliveryEnabled** | Pointer to **bool** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**PhoneNumber** | Pointer to **float32** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**LocalHours** | Pointer to [**SearchRestaurants200ResponseRestaurantsInnerLocalHours**](SearchRestaurants200ResponseRestaurantsInnerLocalHours.md) |  | [optional] 

## Methods

### NewSearchRestaurants200ResponseRestaurantsInner

`func NewSearchRestaurants200ResponseRestaurantsInner() *SearchRestaurants200ResponseRestaurantsInner`

NewSearchRestaurants200ResponseRestaurantsInner instantiates a new SearchRestaurants200ResponseRestaurantsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchRestaurants200ResponseRestaurantsInnerWithDefaults

`func NewSearchRestaurants200ResponseRestaurantsInnerWithDefaults() *SearchRestaurants200ResponseRestaurantsInner`

NewSearchRestaurants200ResponseRestaurantsInnerWithDefaults instantiates a new SearchRestaurants200ResponseRestaurantsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffersThirdPartyDelivery

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersThirdPartyDelivery() bool`

GetOffersThirdPartyDelivery returns the OffersThirdPartyDelivery field if non-nil, zero value otherwise.

### GetOffersThirdPartyDeliveryOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersThirdPartyDeliveryOk() (*bool, bool)`

GetOffersThirdPartyDeliveryOk returns a tuple with the OffersThirdPartyDelivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffersThirdPartyDelivery

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetOffersThirdPartyDelivery(v bool)`

SetOffersThirdPartyDelivery sets OffersThirdPartyDelivery field to given value.

### HasOffersThirdPartyDelivery

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasOffersThirdPartyDelivery() bool`

HasOffersThirdPartyDelivery returns a boolean if a field has been set.

### GetAddress

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetAddress() SearchRestaurants200ResponseRestaurantsInnerAddress`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetAddressOk() (*SearchRestaurants200ResponseRestaurantsInnerAddress, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetAddress(v SearchRestaurants200ResponseRestaurantsInnerAddress)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetSupportsUpcCodes

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetSupportsUpcCodes() bool`

GetSupportsUpcCodes returns the SupportsUpcCodes field if non-nil, zero value otherwise.

### GetSupportsUpcCodesOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetSupportsUpcCodesOk() (*bool, bool)`

GetSupportsUpcCodesOk returns a tuple with the SupportsUpcCodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupportsUpcCodes

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetSupportsUpcCodes(v bool)`

SetSupportsUpcCodes sets SupportsUpcCodes field to given value.

### HasSupportsUpcCodes

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasSupportsUpcCodes() bool`

HasSupportsUpcCodes returns a boolean if a field has been set.

### GetIsOpen

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetIsOpen() bool`

GetIsOpen returns the IsOpen field if non-nil, zero value otherwise.

### GetIsOpenOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetIsOpenOk() (*bool, bool)`

GetIsOpenOk returns a tuple with the IsOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOpen

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetIsOpen(v bool)`

SetIsOpen sets IsOpen field to given value.

### HasIsOpen

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasIsOpen() bool`

HasIsOpen returns a boolean if a field has been set.

### GetDescription

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetWeightedRatingValue

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetWeightedRatingValue() int32`

GetWeightedRatingValue returns the WeightedRatingValue field if non-nil, zero value otherwise.

### GetWeightedRatingValueOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetWeightedRatingValueOk() (*int32, bool)`

GetWeightedRatingValueOk returns a tuple with the WeightedRatingValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightedRatingValue

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetWeightedRatingValue(v int32)`

SetWeightedRatingValue sets WeightedRatingValue field to given value.

### HasWeightedRatingValue

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasWeightedRatingValue() bool`

HasWeightedRatingValue returns a boolean if a field has been set.

### GetType

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasType() bool`

HasType returns a boolean if a field has been set.

### SetTypeNil

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetTypeNil(b bool)`

 SetTypeNil sets the value for Type to be an explicit nil

### UnsetType
`func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetType()`

UnsetType ensures that no value is present for Type, not even an explicit nil
### GetOffersFirstPartyDelivery

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersFirstPartyDelivery() bool`

GetOffersFirstPartyDelivery returns the OffersFirstPartyDelivery field if non-nil, zero value otherwise.

### GetOffersFirstPartyDeliveryOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetOffersFirstPartyDeliveryOk() (*bool, bool)`

GetOffersFirstPartyDeliveryOk returns a tuple with the OffersFirstPartyDelivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffersFirstPartyDelivery

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetOffersFirstPartyDelivery(v bool)`

SetOffersFirstPartyDelivery sets OffersFirstPartyDelivery field to given value.

### HasOffersFirstPartyDelivery

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasOffersFirstPartyDelivery() bool`

HasOffersFirstPartyDelivery returns a boolean if a field has been set.

### GetAggregatedRatingCount

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetAggregatedRatingCount() int32`

GetAggregatedRatingCount returns the AggregatedRatingCount field if non-nil, zero value otherwise.

### GetAggregatedRatingCountOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetAggregatedRatingCountOk() (*int32, bool)`

GetAggregatedRatingCountOk returns a tuple with the AggregatedRatingCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAggregatedRatingCount

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetAggregatedRatingCount(v int32)`

SetAggregatedRatingCount sets AggregatedRatingCount field to given value.

### HasAggregatedRatingCount

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasAggregatedRatingCount() bool`

HasAggregatedRatingCount returns a boolean if a field has been set.

### GetPickupEnabled

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetPickupEnabled() bool`

GetPickupEnabled returns the PickupEnabled field if non-nil, zero value otherwise.

### GetPickupEnabledOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetPickupEnabledOk() (*bool, bool)`

GetPickupEnabledOk returns a tuple with the PickupEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPickupEnabled

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetPickupEnabled(v bool)`

SetPickupEnabled sets PickupEnabled field to given value.

### HasPickupEnabled

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasPickupEnabled() bool`

HasPickupEnabled returns a boolean if a field has been set.

### GetCuisines

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetCuisines() []*string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetCuisinesOk() (*[]*string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetCuisines(v []*string)`

SetCuisines sets Cuisines field to given value.

### HasCuisines

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasCuisines() bool`

HasCuisines returns a boolean if a field has been set.

### GetMiles

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetMiles() float32`

GetMiles returns the Miles field if non-nil, zero value otherwise.

### GetMilesOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetMilesOk() (*float32, bool)`

GetMilesOk returns a tuple with the Miles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMiles

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetMiles(v float32)`

SetMiles sets Miles field to given value.

### HasMiles

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasMiles() bool`

HasMiles returns a boolean if a field has been set.

### GetDollarSigns

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetDollarSigns() int32`

GetDollarSigns returns the DollarSigns field if non-nil, zero value otherwise.

### GetDollarSignsOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetDollarSignsOk() (*int32, bool)`

GetDollarSignsOk returns a tuple with the DollarSigns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDollarSigns

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetDollarSigns(v int32)`

SetDollarSigns sets DollarSigns field to given value.

### HasDollarSigns

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasDollarSigns() bool`

HasDollarSigns returns a boolean if a field has been set.

### GetDeliveryEnabled

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetDeliveryEnabled() bool`

GetDeliveryEnabled returns the DeliveryEnabled field if non-nil, zero value otherwise.

### GetDeliveryEnabledOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetDeliveryEnabledOk() (*bool, bool)`

GetDeliveryEnabledOk returns a tuple with the DeliveryEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeliveryEnabled

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetDeliveryEnabled(v bool)`

SetDeliveryEnabled sets DeliveryEnabled field to given value.

### HasDeliveryEnabled

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasDeliveryEnabled() bool`

HasDeliveryEnabled returns a boolean if a field has been set.

### GetName

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetPhoneNumber

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetPhoneNumber() float32`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetPhoneNumberOk() (*float32, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetPhoneNumber(v float32)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetId

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SearchRestaurants200ResponseRestaurantsInner) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetLocalHours

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetLocalHours() SearchRestaurants200ResponseRestaurantsInnerLocalHours`

GetLocalHours returns the LocalHours field if non-nil, zero value otherwise.

### GetLocalHoursOk

`func (o *SearchRestaurants200ResponseRestaurantsInner) GetLocalHoursOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHours, bool)`

GetLocalHoursOk returns a tuple with the LocalHours field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalHours

`func (o *SearchRestaurants200ResponseRestaurantsInner) SetLocalHours(v SearchRestaurants200ResponseRestaurantsInnerLocalHours)`

SetLocalHours sets LocalHours field to given value.

### HasLocalHours

`func (o *SearchRestaurants200ResponseRestaurantsInner) HasLocalHours() bool`

HasLocalHours returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


