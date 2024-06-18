/*
API League

API League is a Hub for World Class APIs.

API version: 1.3.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner{}

// RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner struct for RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner
type RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner struct {
	Name NullableString `json:"name,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Id *int32 `json:"id,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner instantiates a new RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner() *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
	this := RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInnerWithDefaults instantiates a new RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInnerWithDefaults() *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
	this := RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) GetName() string {
	if o == nil || IsNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) UnsetName() {
	o.Name.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) UnsetImage() {
	o.Image.Unset()
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) SetId(v int32) {
	o.Id = &v
}

func (o RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner struct {
	value *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) Get() *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) Set(val *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner(val *RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
	return &NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


