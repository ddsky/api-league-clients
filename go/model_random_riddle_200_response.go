/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.1
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RandomRiddle200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RandomRiddle200Response{}

// RandomRiddle200Response struct for RandomRiddle200Response
type RandomRiddle200Response struct {
	Riddle NullableString `json:"riddle,omitempty"`
	Answer NullableString `json:"answer,omitempty"`
	Difficulty NullableString `json:"difficulty,omitempty"`
}

// NewRandomRiddle200Response instantiates a new RandomRiddle200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRandomRiddle200Response() *RandomRiddle200Response {
	this := RandomRiddle200Response{}
	return &this
}

// NewRandomRiddle200ResponseWithDefaults instantiates a new RandomRiddle200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRandomRiddle200ResponseWithDefaults() *RandomRiddle200Response {
	this := RandomRiddle200Response{}
	return &this
}

// GetRiddle returns the Riddle field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomRiddle200Response) GetRiddle() string {
	if o == nil || IsNil(o.Riddle.Get()) {
		var ret string
		return ret
	}
	return *o.Riddle.Get()
}

// GetRiddleOk returns a tuple with the Riddle field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomRiddle200Response) GetRiddleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Riddle.Get(), o.Riddle.IsSet()
}

// HasRiddle returns a boolean if a field has been set.
func (o *RandomRiddle200Response) HasRiddle() bool {
	if o != nil && o.Riddle.IsSet() {
		return true
	}

	return false
}

// SetRiddle gets a reference to the given NullableString and assigns it to the Riddle field.
func (o *RandomRiddle200Response) SetRiddle(v string) {
	o.Riddle.Set(&v)
}
// SetRiddleNil sets the value for Riddle to be an explicit nil
func (o *RandomRiddle200Response) SetRiddleNil() {
	o.Riddle.Set(nil)
}

// UnsetRiddle ensures that no value is present for Riddle, not even an explicit nil
func (o *RandomRiddle200Response) UnsetRiddle() {
	o.Riddle.Unset()
}

// GetAnswer returns the Answer field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomRiddle200Response) GetAnswer() string {
	if o == nil || IsNil(o.Answer.Get()) {
		var ret string
		return ret
	}
	return *o.Answer.Get()
}

// GetAnswerOk returns a tuple with the Answer field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomRiddle200Response) GetAnswerOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Answer.Get(), o.Answer.IsSet()
}

// HasAnswer returns a boolean if a field has been set.
func (o *RandomRiddle200Response) HasAnswer() bool {
	if o != nil && o.Answer.IsSet() {
		return true
	}

	return false
}

// SetAnswer gets a reference to the given NullableString and assigns it to the Answer field.
func (o *RandomRiddle200Response) SetAnswer(v string) {
	o.Answer.Set(&v)
}
// SetAnswerNil sets the value for Answer to be an explicit nil
func (o *RandomRiddle200Response) SetAnswerNil() {
	o.Answer.Set(nil)
}

// UnsetAnswer ensures that no value is present for Answer, not even an explicit nil
func (o *RandomRiddle200Response) UnsetAnswer() {
	o.Answer.Unset()
}

// GetDifficulty returns the Difficulty field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomRiddle200Response) GetDifficulty() string {
	if o == nil || IsNil(o.Difficulty.Get()) {
		var ret string
		return ret
	}
	return *o.Difficulty.Get()
}

// GetDifficultyOk returns a tuple with the Difficulty field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomRiddle200Response) GetDifficultyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Difficulty.Get(), o.Difficulty.IsSet()
}

// HasDifficulty returns a boolean if a field has been set.
func (o *RandomRiddle200Response) HasDifficulty() bool {
	if o != nil && o.Difficulty.IsSet() {
		return true
	}

	return false
}

// SetDifficulty gets a reference to the given NullableString and assigns it to the Difficulty field.
func (o *RandomRiddle200Response) SetDifficulty(v string) {
	o.Difficulty.Set(&v)
}
// SetDifficultyNil sets the value for Difficulty to be an explicit nil
func (o *RandomRiddle200Response) SetDifficultyNil() {
	o.Difficulty.Set(nil)
}

// UnsetDifficulty ensures that no value is present for Difficulty, not even an explicit nil
func (o *RandomRiddle200Response) UnsetDifficulty() {
	o.Difficulty.Unset()
}

func (o RandomRiddle200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RandomRiddle200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Riddle.IsSet() {
		toSerialize["riddle"] = o.Riddle.Get()
	}
	if o.Answer.IsSet() {
		toSerialize["answer"] = o.Answer.Get()
	}
	if o.Difficulty.IsSet() {
		toSerialize["difficulty"] = o.Difficulty.Get()
	}
	return toSerialize, nil
}

type NullableRandomRiddle200Response struct {
	value *RandomRiddle200Response
	isSet bool
}

func (v NullableRandomRiddle200Response) Get() *RandomRiddle200Response {
	return v.value
}

func (v *NullableRandomRiddle200Response) Set(val *RandomRiddle200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRandomRiddle200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRandomRiddle200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRandomRiddle200Response(val *RandomRiddle200Response) *NullableRandomRiddle200Response {
	return &NullableRandomRiddle200Response{value: val, isSet: true}
}

func (v NullableRandomRiddle200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRandomRiddle200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


