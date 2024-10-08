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

// checks if the ExtractAuthors200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractAuthors200Response{}

// ExtractAuthors200Response struct for ExtractAuthors200Response
type ExtractAuthors200Response struct {
	Authors []ExtractAuthors200ResponseAuthorsInner `json:"authors,omitempty"`
}

// NewExtractAuthors200Response instantiates a new ExtractAuthors200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractAuthors200Response() *ExtractAuthors200Response {
	this := ExtractAuthors200Response{}
	return &this
}

// NewExtractAuthors200ResponseWithDefaults instantiates a new ExtractAuthors200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractAuthors200ResponseWithDefaults() *ExtractAuthors200Response {
	this := ExtractAuthors200Response{}
	return &this
}

// GetAuthors returns the Authors field value if set, zero value otherwise.
func (o *ExtractAuthors200Response) GetAuthors() []ExtractAuthors200ResponseAuthorsInner {
	if o == nil || IsNil(o.Authors) {
		var ret []ExtractAuthors200ResponseAuthorsInner
		return ret
	}
	return o.Authors
}

// GetAuthorsOk returns a tuple with the Authors field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractAuthors200Response) GetAuthorsOk() ([]ExtractAuthors200ResponseAuthorsInner, bool) {
	if o == nil || IsNil(o.Authors) {
		return nil, false
	}
	return o.Authors, true
}

// HasAuthors returns a boolean if a field has been set.
func (o *ExtractAuthors200Response) HasAuthors() bool {
	if o != nil && !IsNil(o.Authors) {
		return true
	}

	return false
}

// SetAuthors gets a reference to the given []ExtractAuthors200ResponseAuthorsInner and assigns it to the Authors field.
func (o *ExtractAuthors200Response) SetAuthors(v []ExtractAuthors200ResponseAuthorsInner) {
	o.Authors = v
}

func (o ExtractAuthors200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractAuthors200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Authors) {
		toSerialize["authors"] = o.Authors
	}
	return toSerialize, nil
}

type NullableExtractAuthors200Response struct {
	value *ExtractAuthors200Response
	isSet bool
}

func (v NullableExtractAuthors200Response) Get() *ExtractAuthors200Response {
	return v.value
}

func (v *NullableExtractAuthors200Response) Set(val *ExtractAuthors200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractAuthors200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractAuthors200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractAuthors200Response(val *ExtractAuthors200Response) *NullableExtractAuthors200Response {
	return &NullableExtractAuthors200Response{value: val, isSet: true}
}

func (v NullableExtractAuthors200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractAuthors200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


