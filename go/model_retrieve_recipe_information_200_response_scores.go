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

// checks if the RetrieveRecipeInformation200ResponseScores type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200ResponseScores{}

// RetrieveRecipeInformation200ResponseScores struct for RetrieveRecipeInformation200ResponseScores
type RetrieveRecipeInformation200ResponseScores struct {
	MetaScore *float32 `json:"meta_score,omitempty"`
	WeightWatcherSmartPoints *int32 `json:"weight_watcher_smart_points,omitempty"`
	HealthScore *int32 `json:"health_score,omitempty"`
}

// NewRetrieveRecipeInformation200ResponseScores instantiates a new RetrieveRecipeInformation200ResponseScores object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200ResponseScores() *RetrieveRecipeInformation200ResponseScores {
	this := RetrieveRecipeInformation200ResponseScores{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseScoresWithDefaults instantiates a new RetrieveRecipeInformation200ResponseScores object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseScoresWithDefaults() *RetrieveRecipeInformation200ResponseScores {
	this := RetrieveRecipeInformation200ResponseScores{}
	return &this
}

// GetMetaScore returns the MetaScore field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseScores) GetMetaScore() float32 {
	if o == nil || IsNil(o.MetaScore) {
		var ret float32
		return ret
	}
	return *o.MetaScore
}

// GetMetaScoreOk returns a tuple with the MetaScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseScores) GetMetaScoreOk() (*float32, bool) {
	if o == nil || IsNil(o.MetaScore) {
		return nil, false
	}
	return o.MetaScore, true
}

// HasMetaScore returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseScores) HasMetaScore() bool {
	if o != nil && !IsNil(o.MetaScore) {
		return true
	}

	return false
}

// SetMetaScore gets a reference to the given float32 and assigns it to the MetaScore field.
func (o *RetrieveRecipeInformation200ResponseScores) SetMetaScore(v float32) {
	o.MetaScore = &v
}

// GetWeightWatcherSmartPoints returns the WeightWatcherSmartPoints field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseScores) GetWeightWatcherSmartPoints() int32 {
	if o == nil || IsNil(o.WeightWatcherSmartPoints) {
		var ret int32
		return ret
	}
	return *o.WeightWatcherSmartPoints
}

// GetWeightWatcherSmartPointsOk returns a tuple with the WeightWatcherSmartPoints field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseScores) GetWeightWatcherSmartPointsOk() (*int32, bool) {
	if o == nil || IsNil(o.WeightWatcherSmartPoints) {
		return nil, false
	}
	return o.WeightWatcherSmartPoints, true
}

// HasWeightWatcherSmartPoints returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseScores) HasWeightWatcherSmartPoints() bool {
	if o != nil && !IsNil(o.WeightWatcherSmartPoints) {
		return true
	}

	return false
}

// SetWeightWatcherSmartPoints gets a reference to the given int32 and assigns it to the WeightWatcherSmartPoints field.
func (o *RetrieveRecipeInformation200ResponseScores) SetWeightWatcherSmartPoints(v int32) {
	o.WeightWatcherSmartPoints = &v
}

// GetHealthScore returns the HealthScore field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200ResponseScores) GetHealthScore() int32 {
	if o == nil || IsNil(o.HealthScore) {
		var ret int32
		return ret
	}
	return *o.HealthScore
}

// GetHealthScoreOk returns a tuple with the HealthScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200ResponseScores) GetHealthScoreOk() (*int32, bool) {
	if o == nil || IsNil(o.HealthScore) {
		return nil, false
	}
	return o.HealthScore, true
}

// HasHealthScore returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200ResponseScores) HasHealthScore() bool {
	if o != nil && !IsNil(o.HealthScore) {
		return true
	}

	return false
}

// SetHealthScore gets a reference to the given int32 and assigns it to the HealthScore field.
func (o *RetrieveRecipeInformation200ResponseScores) SetHealthScore(v int32) {
	o.HealthScore = &v
}

func (o RetrieveRecipeInformation200ResponseScores) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200ResponseScores) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.MetaScore) {
		toSerialize["meta_score"] = o.MetaScore
	}
	if !IsNil(o.WeightWatcherSmartPoints) {
		toSerialize["weight_watcher_smart_points"] = o.WeightWatcherSmartPoints
	}
	if !IsNil(o.HealthScore) {
		toSerialize["health_score"] = o.HealthScore
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200ResponseScores struct {
	value *RetrieveRecipeInformation200ResponseScores
	isSet bool
}

func (v NullableRetrieveRecipeInformation200ResponseScores) Get() *RetrieveRecipeInformation200ResponseScores {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200ResponseScores) Set(val *RetrieveRecipeInformation200ResponseScores) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200ResponseScores) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200ResponseScores) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200ResponseScores(val *RetrieveRecipeInformation200ResponseScores) *NullableRetrieveRecipeInformation200ResponseScores {
	return &NullableRetrieveRecipeInformation200ResponseScores{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200ResponseScores) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200ResponseScores) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


