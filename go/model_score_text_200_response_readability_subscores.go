/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreText200ResponseReadabilitySubscores type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreText200ResponseReadabilitySubscores{}

// ScoreText200ResponseReadabilitySubscores struct for ScoreText200ResponseReadabilitySubscores
type ScoreText200ResponseReadabilitySubscores struct {
	ReadingTimeSeconds *int32 `json:"reading_time_seconds,omitempty"`
	Forcast *float32 `json:"forcast,omitempty"`
	Flesch *float32 `json:"flesch,omitempty"`
	Smog *float32 `json:"smog,omitempty"`
	Ari *float32 `json:"ari,omitempty"`
	Lix *float32 `json:"lix,omitempty"`
	ColemanLiau *float32 `json:"coleman_liau,omitempty"`
	Kincaid *float32 `json:"kincaid,omitempty"`
	Fog *float32 `json:"fog,omitempty"`
}

// NewScoreText200ResponseReadabilitySubscores instantiates a new ScoreText200ResponseReadabilitySubscores object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreText200ResponseReadabilitySubscores() *ScoreText200ResponseReadabilitySubscores {
	this := ScoreText200ResponseReadabilitySubscores{}
	return &this
}

// NewScoreText200ResponseReadabilitySubscoresWithDefaults instantiates a new ScoreText200ResponseReadabilitySubscores object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreText200ResponseReadabilitySubscoresWithDefaults() *ScoreText200ResponseReadabilitySubscores {
	this := ScoreText200ResponseReadabilitySubscores{}
	return &this
}

// GetReadingTimeSeconds returns the ReadingTimeSeconds field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetReadingTimeSeconds() int32 {
	if o == nil || IsNil(o.ReadingTimeSeconds) {
		var ret int32
		return ret
	}
	return *o.ReadingTimeSeconds
}

// GetReadingTimeSecondsOk returns a tuple with the ReadingTimeSeconds field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetReadingTimeSecondsOk() (*int32, bool) {
	if o == nil || IsNil(o.ReadingTimeSeconds) {
		return nil, false
	}
	return o.ReadingTimeSeconds, true
}

// HasReadingTimeSeconds returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasReadingTimeSeconds() bool {
	if o != nil && !IsNil(o.ReadingTimeSeconds) {
		return true
	}

	return false
}

// SetReadingTimeSeconds gets a reference to the given int32 and assigns it to the ReadingTimeSeconds field.
func (o *ScoreText200ResponseReadabilitySubscores) SetReadingTimeSeconds(v int32) {
	o.ReadingTimeSeconds = &v
}

// GetForcast returns the Forcast field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetForcast() float32 {
	if o == nil || IsNil(o.Forcast) {
		var ret float32
		return ret
	}
	return *o.Forcast
}

// GetForcastOk returns a tuple with the Forcast field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetForcastOk() (*float32, bool) {
	if o == nil || IsNil(o.Forcast) {
		return nil, false
	}
	return o.Forcast, true
}

// HasForcast returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasForcast() bool {
	if o != nil && !IsNil(o.Forcast) {
		return true
	}

	return false
}

// SetForcast gets a reference to the given float32 and assigns it to the Forcast field.
func (o *ScoreText200ResponseReadabilitySubscores) SetForcast(v float32) {
	o.Forcast = &v
}

// GetFlesch returns the Flesch field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetFlesch() float32 {
	if o == nil || IsNil(o.Flesch) {
		var ret float32
		return ret
	}
	return *o.Flesch
}

// GetFleschOk returns a tuple with the Flesch field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetFleschOk() (*float32, bool) {
	if o == nil || IsNil(o.Flesch) {
		return nil, false
	}
	return o.Flesch, true
}

// HasFlesch returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasFlesch() bool {
	if o != nil && !IsNil(o.Flesch) {
		return true
	}

	return false
}

// SetFlesch gets a reference to the given float32 and assigns it to the Flesch field.
func (o *ScoreText200ResponseReadabilitySubscores) SetFlesch(v float32) {
	o.Flesch = &v
}

// GetSmog returns the Smog field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetSmog() float32 {
	if o == nil || IsNil(o.Smog) {
		var ret float32
		return ret
	}
	return *o.Smog
}

// GetSmogOk returns a tuple with the Smog field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetSmogOk() (*float32, bool) {
	if o == nil || IsNil(o.Smog) {
		return nil, false
	}
	return o.Smog, true
}

// HasSmog returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasSmog() bool {
	if o != nil && !IsNil(o.Smog) {
		return true
	}

	return false
}

// SetSmog gets a reference to the given float32 and assigns it to the Smog field.
func (o *ScoreText200ResponseReadabilitySubscores) SetSmog(v float32) {
	o.Smog = &v
}

// GetAri returns the Ari field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetAri() float32 {
	if o == nil || IsNil(o.Ari) {
		var ret float32
		return ret
	}
	return *o.Ari
}

// GetAriOk returns a tuple with the Ari field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetAriOk() (*float32, bool) {
	if o == nil || IsNil(o.Ari) {
		return nil, false
	}
	return o.Ari, true
}

// HasAri returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasAri() bool {
	if o != nil && !IsNil(o.Ari) {
		return true
	}

	return false
}

// SetAri gets a reference to the given float32 and assigns it to the Ari field.
func (o *ScoreText200ResponseReadabilitySubscores) SetAri(v float32) {
	o.Ari = &v
}

// GetLix returns the Lix field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetLix() float32 {
	if o == nil || IsNil(o.Lix) {
		var ret float32
		return ret
	}
	return *o.Lix
}

// GetLixOk returns a tuple with the Lix field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetLixOk() (*float32, bool) {
	if o == nil || IsNil(o.Lix) {
		return nil, false
	}
	return o.Lix, true
}

// HasLix returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasLix() bool {
	if o != nil && !IsNil(o.Lix) {
		return true
	}

	return false
}

// SetLix gets a reference to the given float32 and assigns it to the Lix field.
func (o *ScoreText200ResponseReadabilitySubscores) SetLix(v float32) {
	o.Lix = &v
}

// GetColemanLiau returns the ColemanLiau field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetColemanLiau() float32 {
	if o == nil || IsNil(o.ColemanLiau) {
		var ret float32
		return ret
	}
	return *o.ColemanLiau
}

// GetColemanLiauOk returns a tuple with the ColemanLiau field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetColemanLiauOk() (*float32, bool) {
	if o == nil || IsNil(o.ColemanLiau) {
		return nil, false
	}
	return o.ColemanLiau, true
}

// HasColemanLiau returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasColemanLiau() bool {
	if o != nil && !IsNil(o.ColemanLiau) {
		return true
	}

	return false
}

// SetColemanLiau gets a reference to the given float32 and assigns it to the ColemanLiau field.
func (o *ScoreText200ResponseReadabilitySubscores) SetColemanLiau(v float32) {
	o.ColemanLiau = &v
}

// GetKincaid returns the Kincaid field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetKincaid() float32 {
	if o == nil || IsNil(o.Kincaid) {
		var ret float32
		return ret
	}
	return *o.Kincaid
}

// GetKincaidOk returns a tuple with the Kincaid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetKincaidOk() (*float32, bool) {
	if o == nil || IsNil(o.Kincaid) {
		return nil, false
	}
	return o.Kincaid, true
}

// HasKincaid returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasKincaid() bool {
	if o != nil && !IsNil(o.Kincaid) {
		return true
	}

	return false
}

// SetKincaid gets a reference to the given float32 and assigns it to the Kincaid field.
func (o *ScoreText200ResponseReadabilitySubscores) SetKincaid(v float32) {
	o.Kincaid = &v
}

// GetFog returns the Fog field value if set, zero value otherwise.
func (o *ScoreText200ResponseReadabilitySubscores) GetFog() float32 {
	if o == nil || IsNil(o.Fog) {
		var ret float32
		return ret
	}
	return *o.Fog
}

// GetFogOk returns a tuple with the Fog field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseReadabilitySubscores) GetFogOk() (*float32, bool) {
	if o == nil || IsNil(o.Fog) {
		return nil, false
	}
	return o.Fog, true
}

// HasFog returns a boolean if a field has been set.
func (o *ScoreText200ResponseReadabilitySubscores) HasFog() bool {
	if o != nil && !IsNil(o.Fog) {
		return true
	}

	return false
}

// SetFog gets a reference to the given float32 and assigns it to the Fog field.
func (o *ScoreText200ResponseReadabilitySubscores) SetFog(v float32) {
	o.Fog = &v
}

func (o ScoreText200ResponseReadabilitySubscores) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreText200ResponseReadabilitySubscores) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.ReadingTimeSeconds) {
		toSerialize["reading_time_seconds"] = o.ReadingTimeSeconds
	}
	if !IsNil(o.Forcast) {
		toSerialize["forcast"] = o.Forcast
	}
	if !IsNil(o.Flesch) {
		toSerialize["flesch"] = o.Flesch
	}
	if !IsNil(o.Smog) {
		toSerialize["smog"] = o.Smog
	}
	if !IsNil(o.Ari) {
		toSerialize["ari"] = o.Ari
	}
	if !IsNil(o.Lix) {
		toSerialize["lix"] = o.Lix
	}
	if !IsNil(o.ColemanLiau) {
		toSerialize["coleman_liau"] = o.ColemanLiau
	}
	if !IsNil(o.Kincaid) {
		toSerialize["kincaid"] = o.Kincaid
	}
	if !IsNil(o.Fog) {
		toSerialize["fog"] = o.Fog
	}
	return toSerialize, nil
}

type NullableScoreText200ResponseReadabilitySubscores struct {
	value *ScoreText200ResponseReadabilitySubscores
	isSet bool
}

func (v NullableScoreText200ResponseReadabilitySubscores) Get() *ScoreText200ResponseReadabilitySubscores {
	return v.value
}

func (v *NullableScoreText200ResponseReadabilitySubscores) Set(val *ScoreText200ResponseReadabilitySubscores) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreText200ResponseReadabilitySubscores) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreText200ResponseReadabilitySubscores) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreText200ResponseReadabilitySubscores(val *ScoreText200ResponseReadabilitySubscores) *NullableScoreText200ResponseReadabilitySubscores {
	return &NullableScoreText200ResponseReadabilitySubscores{value: val, isSet: true}
}

func (v NullableScoreText200ResponseReadabilitySubscores) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreText200ResponseReadabilitySubscores) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


