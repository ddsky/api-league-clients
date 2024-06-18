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

// checks if the ListWordSynonyms200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ListWordSynonyms200Response{}

// ListWordSynonyms200Response struct for ListWordSynonyms200Response
type ListWordSynonyms200Response struct {
	Synonyms []*string `json:"synonyms,omitempty"`
}

// NewListWordSynonyms200Response instantiates a new ListWordSynonyms200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewListWordSynonyms200Response() *ListWordSynonyms200Response {
	this := ListWordSynonyms200Response{}
	return &this
}

// NewListWordSynonyms200ResponseWithDefaults instantiates a new ListWordSynonyms200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewListWordSynonyms200ResponseWithDefaults() *ListWordSynonyms200Response {
	this := ListWordSynonyms200Response{}
	return &this
}

// GetSynonyms returns the Synonyms field value if set, zero value otherwise.
func (o *ListWordSynonyms200Response) GetSynonyms() []*string {
	if o == nil || IsNil(o.Synonyms) {
		var ret []*string
		return ret
	}
	return o.Synonyms
}

// GetSynonymsOk returns a tuple with the Synonyms field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ListWordSynonyms200Response) GetSynonymsOk() ([]*string, bool) {
	if o == nil || IsNil(o.Synonyms) {
		return nil, false
	}
	return o.Synonyms, true
}

// HasSynonyms returns a boolean if a field has been set.
func (o *ListWordSynonyms200Response) HasSynonyms() bool {
	if o != nil && !IsNil(o.Synonyms) {
		return true
	}

	return false
}

// SetSynonyms gets a reference to the given []*string and assigns it to the Synonyms field.
func (o *ListWordSynonyms200Response) SetSynonyms(v []*string) {
	o.Synonyms = v
}

func (o ListWordSynonyms200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ListWordSynonyms200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Synonyms) {
		toSerialize["synonyms"] = o.Synonyms
	}
	return toSerialize, nil
}

type NullableListWordSynonyms200Response struct {
	value *ListWordSynonyms200Response
	isSet bool
}

func (v NullableListWordSynonyms200Response) Get() *ListWordSynonyms200Response {
	return v.value
}

func (v *NullableListWordSynonyms200Response) Set(val *ListWordSynonyms200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableListWordSynonyms200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableListWordSynonyms200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableListWordSynonyms200Response(val *ListWordSynonyms200Response) *NullableListWordSynonyms200Response {
	return &NullableListWordSynonyms200Response{value: val, isSet: true}
}

func (v NullableListWordSynonyms200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableListWordSynonyms200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


