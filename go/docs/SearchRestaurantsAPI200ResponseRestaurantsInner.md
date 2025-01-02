# SearchRestaurantsAPI200ResponseRestaurantsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OffersThirdPartyDelivery** | Pointer to **bool** |  | [optional] 
**Address** | Pointer to [**SearchRestaurantsAPI200ResponseRestaurantsInnerAddress**](SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.md) |  | [optional] 
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
**LocalHours** | Pointer to [**SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours**](SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.md) |  | [optional] 

## Methods

### NewSearchRestaurantsAPI200ResponseRestaurantsInner

`func NewSearchRestaurantsAPI200ResponseRestaurantsInner() *SearchRestaurantsAPI200ResponseRestaurantsInner`

NewSearchRestaurantsAPI200ResponseRestaurantsInner instantiates a new SearchRestaurantsAPI200ResponseRestaurantsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchRestaurantsAPI200ResponseRestaurantsInnerWithDefaults

`func NewSearchRestaurantsAPI200ResponseRestaurantsInnerWithDefaults() *SearchRestaurantsAPI200ResponseRestaurantsInner`

NewSearchRestaurantsAPI200ResponseRestaurantsInnerWithDefaults instantiates a new SearchRestaurantsAPI200ResponseRestaurantsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOffersThirdPartyDelivery

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetOffersThirdPartyDelivery() bool`

GetOffersThirdPartyDelivery returns the OffersThirdPartyDelivery field if non-nil, zero value otherwise.

### GetOffersThirdPartyDeliveryOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetOffersThirdPartyDeliveryOk() (*bool, bool)`

GetOffersThirdPartyDeliveryOk returns a tuple with the OffersThirdPartyDelivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffersThirdPartyDelivery

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetOffersThirdPartyDelivery(v bool)`

SetOffersThirdPartyDelivery sets OffersThirdPartyDelivery field to given value.

### HasOffersThirdPartyDelivery

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasOffersThirdPartyDelivery() bool`

HasOffersThirdPartyDelivery returns a boolean if a field has been set.

### GetAddress

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetAddress() SearchRestaurantsAPI200ResponseRestaurantsInnerAddress`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetAddressOk() (*SearchRestaurantsAPI200ResponseRestaurantsInnerAddress, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetAddress(v SearchRestaurantsAPI200ResponseRestaurantsInnerAddress)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetSupportsUpcCodes

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetSupportsUpcCodes() bool`

GetSupportsUpcCodes returns the SupportsUpcCodes field if non-nil, zero value otherwise.

### GetSupportsUpcCodesOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetSupportsUpcCodesOk() (*bool, bool)`

GetSupportsUpcCodesOk returns a tuple with the SupportsUpcCodes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSupportsUpcCodes

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetSupportsUpcCodes(v bool)`

SetSupportsUpcCodes sets SupportsUpcCodes field to given value.

### HasSupportsUpcCodes

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasSupportsUpcCodes() bool`

HasSupportsUpcCodes returns a boolean if a field has been set.

### GetIsOpen

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetIsOpen() bool`

GetIsOpen returns the IsOpen field if non-nil, zero value otherwise.

### GetIsOpenOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetIsOpenOk() (*bool, bool)`

GetIsOpenOk returns a tuple with the IsOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOpen

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetIsOpen(v bool)`

SetIsOpen sets IsOpen field to given value.

### HasIsOpen

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasIsOpen() bool`

HasIsOpen returns a boolean if a field has been set.

### GetDescription

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetWeightedRatingValue

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetWeightedRatingValue() int32`

GetWeightedRatingValue returns the WeightedRatingValue field if non-nil, zero value otherwise.

### GetWeightedRatingValueOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetWeightedRatingValueOk() (*int32, bool)`

GetWeightedRatingValueOk returns a tuple with the WeightedRatingValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightedRatingValue

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetWeightedRatingValue(v int32)`

SetWeightedRatingValue sets WeightedRatingValue field to given value.

### HasWeightedRatingValue

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasWeightedRatingValue() bool`

HasWeightedRatingValue returns a boolean if a field has been set.

### GetType

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasType() bool`

HasType returns a boolean if a field has been set.

### SetTypeNil

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetTypeNil(b bool)`

 SetTypeNil sets the value for Type to be an explicit nil

### UnsetType
`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) UnsetType()`

UnsetType ensures that no value is present for Type, not even an explicit nil
### GetOffersFirstPartyDelivery

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetOffersFirstPartyDelivery() bool`

GetOffersFirstPartyDelivery returns the OffersFirstPartyDelivery field if non-nil, zero value otherwise.

### GetOffersFirstPartyDeliveryOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetOffersFirstPartyDeliveryOk() (*bool, bool)`

GetOffersFirstPartyDeliveryOk returns a tuple with the OffersFirstPartyDelivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffersFirstPartyDelivery

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetOffersFirstPartyDelivery(v bool)`

SetOffersFirstPartyDelivery sets OffersFirstPartyDelivery field to given value.

### HasOffersFirstPartyDelivery

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasOffersFirstPartyDelivery() bool`

HasOffersFirstPartyDelivery returns a boolean if a field has been set.

### GetAggregatedRatingCount

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetAggregatedRatingCount() int32`

GetAggregatedRatingCount returns the AggregatedRatingCount field if non-nil, zero value otherwise.

### GetAggregatedRatingCountOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetAggregatedRatingCountOk() (*int32, bool)`

GetAggregatedRatingCountOk returns a tuple with the AggregatedRatingCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAggregatedRatingCount

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetAggregatedRatingCount(v int32)`

SetAggregatedRatingCount sets AggregatedRatingCount field to given value.

### HasAggregatedRatingCount

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasAggregatedRatingCount() bool`

HasAggregatedRatingCount returns a boolean if a field has been set.

### GetPickupEnabled

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetPickupEnabled() bool`

GetPickupEnabled returns the PickupEnabled field if non-nil, zero value otherwise.

### GetPickupEnabledOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetPickupEnabledOk() (*bool, bool)`

GetPickupEnabledOk returns a tuple with the PickupEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPickupEnabled

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetPickupEnabled(v bool)`

SetPickupEnabled sets PickupEnabled field to given value.

### HasPickupEnabled

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasPickupEnabled() bool`

HasPickupEnabled returns a boolean if a field has been set.

### GetCuisines

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetCuisines() []*string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetCuisinesOk() (*[]*string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetCuisines(v []*string)`

SetCuisines sets Cuisines field to given value.

### HasCuisines

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasCuisines() bool`

HasCuisines returns a boolean if a field has been set.

### GetMiles

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetMiles() float32`

GetMiles returns the Miles field if non-nil, zero value otherwise.

### GetMilesOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetMilesOk() (*float32, bool)`

GetMilesOk returns a tuple with the Miles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMiles

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetMiles(v float32)`

SetMiles sets Miles field to given value.

### HasMiles

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasMiles() bool`

HasMiles returns a boolean if a field has been set.

### GetDollarSigns

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetDollarSigns() int32`

GetDollarSigns returns the DollarSigns field if non-nil, zero value otherwise.

### GetDollarSignsOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetDollarSignsOk() (*int32, bool)`

GetDollarSignsOk returns a tuple with the DollarSigns field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDollarSigns

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetDollarSigns(v int32)`

SetDollarSigns sets DollarSigns field to given value.

### HasDollarSigns

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasDollarSigns() bool`

HasDollarSigns returns a boolean if a field has been set.

### GetDeliveryEnabled

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetDeliveryEnabled() bool`

GetDeliveryEnabled returns the DeliveryEnabled field if non-nil, zero value otherwise.

### GetDeliveryEnabledOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetDeliveryEnabledOk() (*bool, bool)`

GetDeliveryEnabledOk returns a tuple with the DeliveryEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeliveryEnabled

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetDeliveryEnabled(v bool)`

SetDeliveryEnabled sets DeliveryEnabled field to given value.

### HasDeliveryEnabled

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasDeliveryEnabled() bool`

HasDeliveryEnabled returns a boolean if a field has been set.

### GetName

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetPhoneNumber

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetPhoneNumber() float32`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetPhoneNumberOk() (*float32, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetPhoneNumber(v float32)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetId

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetLocalHours

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetLocalHours() SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours`

GetLocalHours returns the LocalHours field if non-nil, zero value otherwise.

### GetLocalHoursOk

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) GetLocalHoursOk() (*SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours, bool)`

GetLocalHoursOk returns a tuple with the LocalHours field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalHours

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) SetLocalHours(v SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours)`

SetLocalHours sets LocalHours field to given value.

### HasLocalHours

`func (o *SearchRestaurantsAPI200ResponseRestaurantsInner) HasLocalHours() bool`

HasLocalHours returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


