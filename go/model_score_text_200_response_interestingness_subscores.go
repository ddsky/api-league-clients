/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreText200ResponseInterestingnessSubscores type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreText200ResponseInterestingnessSubscores{}

// ScoreText200ResponseInterestingnessSubscores struct for ScoreText200ResponseInterestingnessSubscores
type ScoreText200ResponseInterestingnessSubscores struct {
	TitleRatingScore []int32 `json:"title_rating_score,omitempty"`
	QuoteScore []int32 `json:"quote_score,omitempty"`
	LengthScore []int32 `json:"length_score,omitempty"`
	LinkScore []int32 `json:"link_score,omitempty"`
	GoogleHitsScore []int32 `json:"google_hits_score,omitempty"`
}

// NewScoreText200ResponseInterestingnessSubscores instantiates a new ScoreText200ResponseInterestingnessSubscores object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreText200ResponseInterestingnessSubscores() *ScoreText200ResponseInterestingnessSubscores {
	this := ScoreText200ResponseInterestingnessSubscores{}
	return &this
}

// NewScoreText200ResponseInterestingnessSubscoresWithDefaults instantiates a new ScoreText200ResponseInterestingnessSubscores object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreText200ResponseInterestingnessSubscoresWithDefaults() *ScoreText200ResponseInterestingnessSubscores {
	this := ScoreText200ResponseInterestingnessSubscores{}
	return &this
}

// GetTitleRatingScore returns the TitleRatingScore field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingnessSubscores) GetTitleRatingScore() []int32 {
	if o == nil || IsNil(o.TitleRatingScore) {
		var ret []int32
		return ret
	}
	return o.TitleRatingScore
}

// GetTitleRatingScoreOk returns a tuple with the TitleRatingScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) GetTitleRatingScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.TitleRatingScore) {
		return nil, false
	}
	return o.TitleRatingScore, true
}

// HasTitleRatingScore returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) HasTitleRatingScore() bool {
	if o != nil && !IsNil(o.TitleRatingScore) {
		return true
	}

	return false
}

// SetTitleRatingScore gets a reference to the given []int32 and assigns it to the TitleRatingScore field.
func (o *ScoreText200ResponseInterestingnessSubscores) SetTitleRatingScore(v []int32) {
	o.TitleRatingScore = v
}

// GetQuoteScore returns the QuoteScore field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingnessSubscores) GetQuoteScore() []int32 {
	if o == nil || IsNil(o.QuoteScore) {
		var ret []int32
		return ret
	}
	return o.QuoteScore
}

// GetQuoteScoreOk returns a tuple with the QuoteScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) GetQuoteScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.QuoteScore) {
		return nil, false
	}
	return o.QuoteScore, true
}

// HasQuoteScore returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) HasQuoteScore() bool {
	if o != nil && !IsNil(o.QuoteScore) {
		return true
	}

	return false
}

// SetQuoteScore gets a reference to the given []int32 and assigns it to the QuoteScore field.
func (o *ScoreText200ResponseInterestingnessSubscores) SetQuoteScore(v []int32) {
	o.QuoteScore = v
}

// GetLengthScore returns the LengthScore field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingnessSubscores) GetLengthScore() []int32 {
	if o == nil || IsNil(o.LengthScore) {
		var ret []int32
		return ret
	}
	return o.LengthScore
}

// GetLengthScoreOk returns a tuple with the LengthScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) GetLengthScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.LengthScore) {
		return nil, false
	}
	return o.LengthScore, true
}

// HasLengthScore returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) HasLengthScore() bool {
	if o != nil && !IsNil(o.LengthScore) {
		return true
	}

	return false
}

// SetLengthScore gets a reference to the given []int32 and assigns it to the LengthScore field.
func (o *ScoreText200ResponseInterestingnessSubscores) SetLengthScore(v []int32) {
	o.LengthScore = v
}

// GetLinkScore returns the LinkScore field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingnessSubscores) GetLinkScore() []int32 {
	if o == nil || IsNil(o.LinkScore) {
		var ret []int32
		return ret
	}
	return o.LinkScore
}

// GetLinkScoreOk returns a tuple with the LinkScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) GetLinkScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.LinkScore) {
		return nil, false
	}
	return o.LinkScore, true
}

// HasLinkScore returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) HasLinkScore() bool {
	if o != nil && !IsNil(o.LinkScore) {
		return true
	}

	return false
}

// SetLinkScore gets a reference to the given []int32 and assigns it to the LinkScore field.
func (o *ScoreText200ResponseInterestingnessSubscores) SetLinkScore(v []int32) {
	o.LinkScore = v
}

// GetGoogleHitsScore returns the GoogleHitsScore field value if set, zero value otherwise.
func (o *ScoreText200ResponseInterestingnessSubscores) GetGoogleHitsScore() []int32 {
	if o == nil || IsNil(o.GoogleHitsScore) {
		var ret []int32
		return ret
	}
	return o.GoogleHitsScore
}

// GetGoogleHitsScoreOk returns a tuple with the GoogleHitsScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) GetGoogleHitsScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.GoogleHitsScore) {
		return nil, false
	}
	return o.GoogleHitsScore, true
}

// HasGoogleHitsScore returns a boolean if a field has been set.
func (o *ScoreText200ResponseInterestingnessSubscores) HasGoogleHitsScore() bool {
	if o != nil && !IsNil(o.GoogleHitsScore) {
		return true
	}

	return false
}

// SetGoogleHitsScore gets a reference to the given []int32 and assigns it to the GoogleHitsScore field.
func (o *ScoreText200ResponseInterestingnessSubscores) SetGoogleHitsScore(v []int32) {
	o.GoogleHitsScore = v
}

func (o ScoreText200ResponseInterestingnessSubscores) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreText200ResponseInterestingnessSubscores) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.TitleRatingScore) {
		toSerialize["title_rating_score"] = o.TitleRatingScore
	}
	if !IsNil(o.QuoteScore) {
		toSerialize["quote_score"] = o.QuoteScore
	}
	if !IsNil(o.LengthScore) {
		toSerialize["length_score"] = o.LengthScore
	}
	if !IsNil(o.LinkScore) {
		toSerialize["link_score"] = o.LinkScore
	}
	if !IsNil(o.GoogleHitsScore) {
		toSerialize["google_hits_score"] = o.GoogleHitsScore
	}
	return toSerialize, nil
}

type NullableScoreText200ResponseInterestingnessSubscores struct {
	value *ScoreText200ResponseInterestingnessSubscores
	isSet bool
}

func (v NullableScoreText200ResponseInterestingnessSubscores) Get() *ScoreText200ResponseInterestingnessSubscores {
	return v.value
}

func (v *NullableScoreText200ResponseInterestingnessSubscores) Set(val *ScoreText200ResponseInterestingnessSubscores) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreText200ResponseInterestingnessSubscores) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreText200ResponseInterestingnessSubscores) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreText200ResponseInterestingnessSubscores(val *ScoreText200ResponseInterestingnessSubscores) *NullableScoreText200ResponseInterestingnessSubscores {
	return &NullableScoreText200ResponseInterestingnessSubscores{value: val, isSet: true}
}

func (v NullableScoreText200ResponseInterestingnessSubscores) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreText200ResponseInterestingnessSubscores) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


