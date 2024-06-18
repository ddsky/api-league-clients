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

// checks if the RandomTrivia200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RandomTrivia200Response{}

// RandomTrivia200Response struct for RandomTrivia200Response
type RandomTrivia200Response struct {
	Trivia NullableString `json:"trivia,omitempty"`
}

// NewRandomTrivia200Response instantiates a new RandomTrivia200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRandomTrivia200Response() *RandomTrivia200Response {
	this := RandomTrivia200Response{}
	return &this
}

// NewRandomTrivia200ResponseWithDefaults instantiates a new RandomTrivia200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRandomTrivia200ResponseWithDefaults() *RandomTrivia200Response {
	this := RandomTrivia200Response{}
	return &this
}

// GetTrivia returns the Trivia field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomTrivia200Response) GetTrivia() string {
	if o == nil || IsNil(o.Trivia.Get()) {
		var ret string
		return ret
	}
	return *o.Trivia.Get()
}

// GetTriviaOk returns a tuple with the Trivia field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomTrivia200Response) GetTriviaOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Trivia.Get(), o.Trivia.IsSet()
}

// HasTrivia returns a boolean if a field has been set.
func (o *RandomTrivia200Response) HasTrivia() bool {
	if o != nil && o.Trivia.IsSet() {
		return true
	}

	return false
}

// SetTrivia gets a reference to the given NullableString and assigns it to the Trivia field.
func (o *RandomTrivia200Response) SetTrivia(v string) {
	o.Trivia.Set(&v)
}
// SetTriviaNil sets the value for Trivia to be an explicit nil
func (o *RandomTrivia200Response) SetTriviaNil() {
	o.Trivia.Set(nil)
}

// UnsetTrivia ensures that no value is present for Trivia, not even an explicit nil
func (o *RandomTrivia200Response) UnsetTrivia() {
	o.Trivia.Unset()
}

func (o RandomTrivia200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RandomTrivia200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Trivia.IsSet() {
		toSerialize["trivia"] = o.Trivia.Get()
	}
	return toSerialize, nil
}

type NullableRandomTrivia200Response struct {
	value *RandomTrivia200Response
	isSet bool
}

func (v NullableRandomTrivia200Response) Get() *RandomTrivia200Response {
	return v.value
}

func (v *NullableRandomTrivia200Response) Set(val *RandomTrivia200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRandomTrivia200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRandomTrivia200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRandomTrivia200Response(val *RandomTrivia200Response) *NullableRandomTrivia200Response {
	return &NullableRandomTrivia200Response{value: val, isSet: true}
}

func (v NullableRandomTrivia200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRandomTrivia200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


