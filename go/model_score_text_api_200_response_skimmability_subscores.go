/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.4
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ScoreTextAPI200ResponseSkimmabilitySubscores type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ScoreTextAPI200ResponseSkimmabilitySubscores{}

// ScoreTextAPI200ResponseSkimmabilitySubscores struct for ScoreTextAPI200ResponseSkimmabilitySubscores
type ScoreTextAPI200ResponseSkimmabilitySubscores struct {
	BulletPointRatioScore []int32 `json:"bullet_point_ratio_score,omitempty"`
	ImageScore []int32 `json:"image_score,omitempty"`
	HighlightedWordRatioScore []int32 `json:"highlighted_word_ratio_score,omitempty"`
	VideoScore []int32 `json:"video_score,omitempty"`
	ParagraphScore []int32 `json:"paragraph_score,omitempty"`
	ParagraphHeadlineRatioScore []int32 `json:"paragraph_headline_ratio_score,omitempty"`
}

// NewScoreTextAPI200ResponseSkimmabilitySubscores instantiates a new ScoreTextAPI200ResponseSkimmabilitySubscores object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewScoreTextAPI200ResponseSkimmabilitySubscores() *ScoreTextAPI200ResponseSkimmabilitySubscores {
	this := ScoreTextAPI200ResponseSkimmabilitySubscores{}
	return &this
}

// NewScoreTextAPI200ResponseSkimmabilitySubscoresWithDefaults instantiates a new ScoreTextAPI200ResponseSkimmabilitySubscores object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewScoreTextAPI200ResponseSkimmabilitySubscoresWithDefaults() *ScoreTextAPI200ResponseSkimmabilitySubscores {
	this := ScoreTextAPI200ResponseSkimmabilitySubscores{}
	return &this
}

// GetBulletPointRatioScore returns the BulletPointRatioScore field value if set, zero value otherwise.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetBulletPointRatioScore() []int32 {
	if o == nil || IsNil(o.BulletPointRatioScore) {
		var ret []int32
		return ret
	}
	return o.BulletPointRatioScore
}

// GetBulletPointRatioScoreOk returns a tuple with the BulletPointRatioScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetBulletPointRatioScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.BulletPointRatioScore) {
		return nil, false
	}
	return o.BulletPointRatioScore, true
}

// HasBulletPointRatioScore returns a boolean if a field has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) HasBulletPointRatioScore() bool {
	if o != nil && !IsNil(o.BulletPointRatioScore) {
		return true
	}

	return false
}

// SetBulletPointRatioScore gets a reference to the given []int32 and assigns it to the BulletPointRatioScore field.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) SetBulletPointRatioScore(v []int32) {
	o.BulletPointRatioScore = v
}

// GetImageScore returns the ImageScore field value if set, zero value otherwise.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetImageScore() []int32 {
	if o == nil || IsNil(o.ImageScore) {
		var ret []int32
		return ret
	}
	return o.ImageScore
}

// GetImageScoreOk returns a tuple with the ImageScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetImageScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.ImageScore) {
		return nil, false
	}
	return o.ImageScore, true
}

// HasImageScore returns a boolean if a field has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) HasImageScore() bool {
	if o != nil && !IsNil(o.ImageScore) {
		return true
	}

	return false
}

// SetImageScore gets a reference to the given []int32 and assigns it to the ImageScore field.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) SetImageScore(v []int32) {
	o.ImageScore = v
}

// GetHighlightedWordRatioScore returns the HighlightedWordRatioScore field value if set, zero value otherwise.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetHighlightedWordRatioScore() []int32 {
	if o == nil || IsNil(o.HighlightedWordRatioScore) {
		var ret []int32
		return ret
	}
	return o.HighlightedWordRatioScore
}

// GetHighlightedWordRatioScoreOk returns a tuple with the HighlightedWordRatioScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetHighlightedWordRatioScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.HighlightedWordRatioScore) {
		return nil, false
	}
	return o.HighlightedWordRatioScore, true
}

// HasHighlightedWordRatioScore returns a boolean if a field has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) HasHighlightedWordRatioScore() bool {
	if o != nil && !IsNil(o.HighlightedWordRatioScore) {
		return true
	}

	return false
}

// SetHighlightedWordRatioScore gets a reference to the given []int32 and assigns it to the HighlightedWordRatioScore field.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) SetHighlightedWordRatioScore(v []int32) {
	o.HighlightedWordRatioScore = v
}

// GetVideoScore returns the VideoScore field value if set, zero value otherwise.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetVideoScore() []int32 {
	if o == nil || IsNil(o.VideoScore) {
		var ret []int32
		return ret
	}
	return o.VideoScore
}

// GetVideoScoreOk returns a tuple with the VideoScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetVideoScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.VideoScore) {
		return nil, false
	}
	return o.VideoScore, true
}

// HasVideoScore returns a boolean if a field has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) HasVideoScore() bool {
	if o != nil && !IsNil(o.VideoScore) {
		return true
	}

	return false
}

// SetVideoScore gets a reference to the given []int32 and assigns it to the VideoScore field.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) SetVideoScore(v []int32) {
	o.VideoScore = v
}

// GetParagraphScore returns the ParagraphScore field value if set, zero value otherwise.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetParagraphScore() []int32 {
	if o == nil || IsNil(o.ParagraphScore) {
		var ret []int32
		return ret
	}
	return o.ParagraphScore
}

// GetParagraphScoreOk returns a tuple with the ParagraphScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetParagraphScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.ParagraphScore) {
		return nil, false
	}
	return o.ParagraphScore, true
}

// HasParagraphScore returns a boolean if a field has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) HasParagraphScore() bool {
	if o != nil && !IsNil(o.ParagraphScore) {
		return true
	}

	return false
}

// SetParagraphScore gets a reference to the given []int32 and assigns it to the ParagraphScore field.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) SetParagraphScore(v []int32) {
	o.ParagraphScore = v
}

// GetParagraphHeadlineRatioScore returns the ParagraphHeadlineRatioScore field value if set, zero value otherwise.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetParagraphHeadlineRatioScore() []int32 {
	if o == nil || IsNil(o.ParagraphHeadlineRatioScore) {
		var ret []int32
		return ret
	}
	return o.ParagraphHeadlineRatioScore
}

// GetParagraphHeadlineRatioScoreOk returns a tuple with the ParagraphHeadlineRatioScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) GetParagraphHeadlineRatioScoreOk() ([]int32, bool) {
	if o == nil || IsNil(o.ParagraphHeadlineRatioScore) {
		return nil, false
	}
	return o.ParagraphHeadlineRatioScore, true
}

// HasParagraphHeadlineRatioScore returns a boolean if a field has been set.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) HasParagraphHeadlineRatioScore() bool {
	if o != nil && !IsNil(o.ParagraphHeadlineRatioScore) {
		return true
	}

	return false
}

// SetParagraphHeadlineRatioScore gets a reference to the given []int32 and assigns it to the ParagraphHeadlineRatioScore field.
func (o *ScoreTextAPI200ResponseSkimmabilitySubscores) SetParagraphHeadlineRatioScore(v []int32) {
	o.ParagraphHeadlineRatioScore = v
}

func (o ScoreTextAPI200ResponseSkimmabilitySubscores) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ScoreTextAPI200ResponseSkimmabilitySubscores) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.BulletPointRatioScore) {
		toSerialize["bullet_point_ratio_score"] = o.BulletPointRatioScore
	}
	if !IsNil(o.ImageScore) {
		toSerialize["image_score"] = o.ImageScore
	}
	if !IsNil(o.HighlightedWordRatioScore) {
		toSerialize["highlighted_word_ratio_score"] = o.HighlightedWordRatioScore
	}
	if !IsNil(o.VideoScore) {
		toSerialize["video_score"] = o.VideoScore
	}
	if !IsNil(o.ParagraphScore) {
		toSerialize["paragraph_score"] = o.ParagraphScore
	}
	if !IsNil(o.ParagraphHeadlineRatioScore) {
		toSerialize["paragraph_headline_ratio_score"] = o.ParagraphHeadlineRatioScore
	}
	return toSerialize, nil
}

type NullableScoreTextAPI200ResponseSkimmabilitySubscores struct {
	value *ScoreTextAPI200ResponseSkimmabilitySubscores
	isSet bool
}

func (v NullableScoreTextAPI200ResponseSkimmabilitySubscores) Get() *ScoreTextAPI200ResponseSkimmabilitySubscores {
	return v.value
}

func (v *NullableScoreTextAPI200ResponseSkimmabilitySubscores) Set(val *ScoreTextAPI200ResponseSkimmabilitySubscores) {
	v.value = val
	v.isSet = true
}

func (v NullableScoreTextAPI200ResponseSkimmabilitySubscores) IsSet() bool {
	return v.isSet
}

func (v *NullableScoreTextAPI200ResponseSkimmabilitySubscores) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableScoreTextAPI200ResponseSkimmabilitySubscores(val *ScoreTextAPI200ResponseSkimmabilitySubscores) *NullableScoreTextAPI200ResponseSkimmabilitySubscores {
	return &NullableScoreTextAPI200ResponseSkimmabilitySubscores{value: val, isSet: true}
}

func (v NullableScoreTextAPI200ResponseSkimmabilitySubscores) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableScoreTextAPI200ResponseSkimmabilitySubscores) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


