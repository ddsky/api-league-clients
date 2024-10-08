/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.3
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ExtractEntities200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractEntities200Response{}

// ExtractEntities200Response struct for ExtractEntities200Response
type ExtractEntities200Response struct {
	Entities []ExtractEntities200ResponseEntitiesInner `json:"entities,omitempty"`
}

// NewExtractEntities200Response instantiates a new ExtractEntities200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractEntities200Response() *ExtractEntities200Response {
	this := ExtractEntities200Response{}
	return &this
}

// NewExtractEntities200ResponseWithDefaults instantiates a new ExtractEntities200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractEntities200ResponseWithDefaults() *ExtractEntities200Response {
	this := ExtractEntities200Response{}
	return &this
}

// GetEntities returns the Entities field value if set, zero value otherwise.
func (o *ExtractEntities200Response) GetEntities() []ExtractEntities200ResponseEntitiesInner {
	if o == nil || IsNil(o.Entities) {
		var ret []ExtractEntities200ResponseEntitiesInner
		return ret
	}
	return o.Entities
}

// GetEntitiesOk returns a tuple with the Entities field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractEntities200Response) GetEntitiesOk() ([]ExtractEntities200ResponseEntitiesInner, bool) {
	if o == nil || IsNil(o.Entities) {
		return nil, false
	}
	return o.Entities, true
}

// HasEntities returns a boolean if a field has been set.
func (o *ExtractEntities200Response) HasEntities() bool {
	if o != nil && !IsNil(o.Entities) {
		return true
	}

	return false
}

// SetEntities gets a reference to the given []ExtractEntities200ResponseEntitiesInner and assigns it to the Entities field.
func (o *ExtractEntities200Response) SetEntities(v []ExtractEntities200ResponseEntitiesInner) {
	o.Entities = v
}

func (o ExtractEntities200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractEntities200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Entities) {
		toSerialize["entities"] = o.Entities
	}
	return toSerialize, nil
}

type NullableExtractEntities200Response struct {
	value *ExtractEntities200Response
	isSet bool
}

func (v NullableExtractEntities200Response) Get() *ExtractEntities200Response {
	return v.value
}

func (v *NullableExtractEntities200Response) Set(val *ExtractEntities200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractEntities200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractEntities200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractEntities200Response(val *ExtractEntities200Response) *NullableExtractEntities200Response {
	return &NullableExtractEntities200Response{value: val, isSet: true}
}

func (v NullableExtractEntities200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractEntities200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


