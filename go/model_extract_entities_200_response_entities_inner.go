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

// checks if the ExtractEntities200ResponseEntitiesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractEntities200ResponseEntitiesInner{}

// ExtractEntities200ResponseEntitiesInner struct for ExtractEntities200ResponseEntitiesInner
type ExtractEntities200ResponseEntitiesInner struct {
	StartPosition *int32 `json:"start_position,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Type NullableString `json:"type,omitempty"`
	Value NullableString `json:"value,omitempty"`
	EndPosition *int32 `json:"end_position,omitempty"`
}

// NewExtractEntities200ResponseEntitiesInner instantiates a new ExtractEntities200ResponseEntitiesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractEntities200ResponseEntitiesInner() *ExtractEntities200ResponseEntitiesInner {
	this := ExtractEntities200ResponseEntitiesInner{}
	return &this
}

// NewExtractEntities200ResponseEntitiesInnerWithDefaults instantiates a new ExtractEntities200ResponseEntitiesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractEntities200ResponseEntitiesInnerWithDefaults() *ExtractEntities200ResponseEntitiesInner {
	this := ExtractEntities200ResponseEntitiesInner{}
	return &this
}

// GetStartPosition returns the StartPosition field value if set, zero value otherwise.
func (o *ExtractEntities200ResponseEntitiesInner) GetStartPosition() int32 {
	if o == nil || IsNil(o.StartPosition) {
		var ret int32
		return ret
	}
	return *o.StartPosition
}

// GetStartPositionOk returns a tuple with the StartPosition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractEntities200ResponseEntitiesInner) GetStartPositionOk() (*int32, bool) {
	if o == nil || IsNil(o.StartPosition) {
		return nil, false
	}
	return o.StartPosition, true
}

// HasStartPosition returns a boolean if a field has been set.
func (o *ExtractEntities200ResponseEntitiesInner) HasStartPosition() bool {
	if o != nil && !IsNil(o.StartPosition) {
		return true
	}

	return false
}

// SetStartPosition gets a reference to the given int32 and assigns it to the StartPosition field.
func (o *ExtractEntities200ResponseEntitiesInner) SetStartPosition(v int32) {
	o.StartPosition = &v
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractEntities200ResponseEntitiesInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractEntities200ResponseEntitiesInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *ExtractEntities200ResponseEntitiesInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *ExtractEntities200ResponseEntitiesInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *ExtractEntities200ResponseEntitiesInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *ExtractEntities200ResponseEntitiesInner) UnsetImage() {
	o.Image.Unset()
}

// GetType returns the Type field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractEntities200ResponseEntitiesInner) GetType() string {
	if o == nil || IsNil(o.Type.Get()) {
		var ret string
		return ret
	}
	return *o.Type.Get()
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractEntities200ResponseEntitiesInner) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Type.Get(), o.Type.IsSet()
}

// HasType returns a boolean if a field has been set.
func (o *ExtractEntities200ResponseEntitiesInner) HasType() bool {
	if o != nil && o.Type.IsSet() {
		return true
	}

	return false
}

// SetType gets a reference to the given NullableString and assigns it to the Type field.
func (o *ExtractEntities200ResponseEntitiesInner) SetType(v string) {
	o.Type.Set(&v)
}
// SetTypeNil sets the value for Type to be an explicit nil
func (o *ExtractEntities200ResponseEntitiesInner) SetTypeNil() {
	o.Type.Set(nil)
}

// UnsetType ensures that no value is present for Type, not even an explicit nil
func (o *ExtractEntities200ResponseEntitiesInner) UnsetType() {
	o.Type.Unset()
}

// GetValue returns the Value field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractEntities200ResponseEntitiesInner) GetValue() string {
	if o == nil || IsNil(o.Value.Get()) {
		var ret string
		return ret
	}
	return *o.Value.Get()
}

// GetValueOk returns a tuple with the Value field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractEntities200ResponseEntitiesInner) GetValueOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Value.Get(), o.Value.IsSet()
}

// HasValue returns a boolean if a field has been set.
func (o *ExtractEntities200ResponseEntitiesInner) HasValue() bool {
	if o != nil && o.Value.IsSet() {
		return true
	}

	return false
}

// SetValue gets a reference to the given NullableString and assigns it to the Value field.
func (o *ExtractEntities200ResponseEntitiesInner) SetValue(v string) {
	o.Value.Set(&v)
}
// SetValueNil sets the value for Value to be an explicit nil
func (o *ExtractEntities200ResponseEntitiesInner) SetValueNil() {
	o.Value.Set(nil)
}

// UnsetValue ensures that no value is present for Value, not even an explicit nil
func (o *ExtractEntities200ResponseEntitiesInner) UnsetValue() {
	o.Value.Unset()
}

// GetEndPosition returns the EndPosition field value if set, zero value otherwise.
func (o *ExtractEntities200ResponseEntitiesInner) GetEndPosition() int32 {
	if o == nil || IsNil(o.EndPosition) {
		var ret int32
		return ret
	}
	return *o.EndPosition
}

// GetEndPositionOk returns a tuple with the EndPosition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractEntities200ResponseEntitiesInner) GetEndPositionOk() (*int32, bool) {
	if o == nil || IsNil(o.EndPosition) {
		return nil, false
	}
	return o.EndPosition, true
}

// HasEndPosition returns a boolean if a field has been set.
func (o *ExtractEntities200ResponseEntitiesInner) HasEndPosition() bool {
	if o != nil && !IsNil(o.EndPosition) {
		return true
	}

	return false
}

// SetEndPosition gets a reference to the given int32 and assigns it to the EndPosition field.
func (o *ExtractEntities200ResponseEntitiesInner) SetEndPosition(v int32) {
	o.EndPosition = &v
}

func (o ExtractEntities200ResponseEntitiesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractEntities200ResponseEntitiesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.StartPosition) {
		toSerialize["start_position"] = o.StartPosition
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if o.Type.IsSet() {
		toSerialize["type"] = o.Type.Get()
	}
	if o.Value.IsSet() {
		toSerialize["value"] = o.Value.Get()
	}
	if !IsNil(o.EndPosition) {
		toSerialize["end_position"] = o.EndPosition
	}
	return toSerialize, nil
}

type NullableExtractEntities200ResponseEntitiesInner struct {
	value *ExtractEntities200ResponseEntitiesInner
	isSet bool
}

func (v NullableExtractEntities200ResponseEntitiesInner) Get() *ExtractEntities200ResponseEntitiesInner {
	return v.value
}

func (v *NullableExtractEntities200ResponseEntitiesInner) Set(val *ExtractEntities200ResponseEntitiesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractEntities200ResponseEntitiesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractEntities200ResponseEntitiesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractEntities200ResponseEntitiesInner(val *ExtractEntities200ResponseEntitiesInner) *NullableExtractEntities200ResponseEntitiesInner {
	return &NullableExtractEntities200ResponseEntitiesInner{value: val, isSet: true}
}

func (v NullableExtractEntities200ResponseEntitiesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractEntities200ResponseEntitiesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


