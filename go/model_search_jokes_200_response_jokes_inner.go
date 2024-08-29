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

// checks if the SearchJokes200ResponseJokesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchJokes200ResponseJokesInner{}

// SearchJokes200ResponseJokesInner struct for SearchJokes200ResponseJokesInner
type SearchJokes200ResponseJokesInner struct {
	Joke NullableString `json:"joke,omitempty"`
}

// NewSearchJokes200ResponseJokesInner instantiates a new SearchJokes200ResponseJokesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchJokes200ResponseJokesInner() *SearchJokes200ResponseJokesInner {
	this := SearchJokes200ResponseJokesInner{}
	return &this
}

// NewSearchJokes200ResponseJokesInnerWithDefaults instantiates a new SearchJokes200ResponseJokesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchJokes200ResponseJokesInnerWithDefaults() *SearchJokes200ResponseJokesInner {
	this := SearchJokes200ResponseJokesInner{}
	return &this
}

// GetJoke returns the Joke field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchJokes200ResponseJokesInner) GetJoke() string {
	if o == nil || IsNil(o.Joke.Get()) {
		var ret string
		return ret
	}
	return *o.Joke.Get()
}

// GetJokeOk returns a tuple with the Joke field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchJokes200ResponseJokesInner) GetJokeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Joke.Get(), o.Joke.IsSet()
}

// HasJoke returns a boolean if a field has been set.
func (o *SearchJokes200ResponseJokesInner) HasJoke() bool {
	if o != nil && o.Joke.IsSet() {
		return true
	}

	return false
}

// SetJoke gets a reference to the given NullableString and assigns it to the Joke field.
func (o *SearchJokes200ResponseJokesInner) SetJoke(v string) {
	o.Joke.Set(&v)
}
// SetJokeNil sets the value for Joke to be an explicit nil
func (o *SearchJokes200ResponseJokesInner) SetJokeNil() {
	o.Joke.Set(nil)
}

// UnsetJoke ensures that no value is present for Joke, not even an explicit nil
func (o *SearchJokes200ResponseJokesInner) UnsetJoke() {
	o.Joke.Unset()
}

func (o SearchJokes200ResponseJokesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchJokes200ResponseJokesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Joke.IsSet() {
		toSerialize["joke"] = o.Joke.Get()
	}
	return toSerialize, nil
}

type NullableSearchJokes200ResponseJokesInner struct {
	value *SearchJokes200ResponseJokesInner
	isSet bool
}

func (v NullableSearchJokes200ResponseJokesInner) Get() *SearchJokes200ResponseJokesInner {
	return v.value
}

func (v *NullableSearchJokes200ResponseJokesInner) Set(val *SearchJokes200ResponseJokesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchJokes200ResponseJokesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchJokes200ResponseJokesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchJokes200ResponseJokesInner(val *SearchJokes200ResponseJokesInner) *NullableSearchJokes200ResponseJokesInner {
	return &NullableSearchJokes200ResponseJokesInner{value: val, isSet: true}
}

func (v NullableSearchJokes200ResponseJokesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchJokes200ResponseJokesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


