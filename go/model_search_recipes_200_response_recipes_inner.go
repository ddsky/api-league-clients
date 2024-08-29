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

// checks if the SearchRecipes200ResponseRecipesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRecipes200ResponseRecipesInner{}

// SearchRecipes200ResponseRecipesInner struct for SearchRecipes200ResponseRecipesInner
type SearchRecipes200ResponseRecipesInner struct {
	Images []*string `json:"images,omitempty"`
	Nutrition *SearchRecipes200ResponseRecipesInnerNutrition `json:"nutrition,omitempty"`
	Id *int32 `json:"id,omitempty"`
	Title NullableString `json:"title,omitempty"`
}

// NewSearchRecipes200ResponseRecipesInner instantiates a new SearchRecipes200ResponseRecipesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRecipes200ResponseRecipesInner() *SearchRecipes200ResponseRecipesInner {
	this := SearchRecipes200ResponseRecipesInner{}
	return &this
}

// NewSearchRecipes200ResponseRecipesInnerWithDefaults instantiates a new SearchRecipes200ResponseRecipesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRecipes200ResponseRecipesInnerWithDefaults() *SearchRecipes200ResponseRecipesInner {
	this := SearchRecipes200ResponseRecipesInner{}
	return &this
}

// GetImages returns the Images field value if set, zero value otherwise.
func (o *SearchRecipes200ResponseRecipesInner) GetImages() []*string {
	if o == nil || IsNil(o.Images) {
		var ret []*string
		return ret
	}
	return o.Images
}

// GetImagesOk returns a tuple with the Images field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200ResponseRecipesInner) GetImagesOk() ([]*string, bool) {
	if o == nil || IsNil(o.Images) {
		return nil, false
	}
	return o.Images, true
}

// HasImages returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInner) HasImages() bool {
	if o != nil && !IsNil(o.Images) {
		return true
	}

	return false
}

// SetImages gets a reference to the given []*string and assigns it to the Images field.
func (o *SearchRecipes200ResponseRecipesInner) SetImages(v []*string) {
	o.Images = v
}

// GetNutrition returns the Nutrition field value if set, zero value otherwise.
func (o *SearchRecipes200ResponseRecipesInner) GetNutrition() SearchRecipes200ResponseRecipesInnerNutrition {
	if o == nil || IsNil(o.Nutrition) {
		var ret SearchRecipes200ResponseRecipesInnerNutrition
		return ret
	}
	return *o.Nutrition
}

// GetNutritionOk returns a tuple with the Nutrition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200ResponseRecipesInner) GetNutritionOk() (*SearchRecipes200ResponseRecipesInnerNutrition, bool) {
	if o == nil || IsNil(o.Nutrition) {
		return nil, false
	}
	return o.Nutrition, true
}

// HasNutrition returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInner) HasNutrition() bool {
	if o != nil && !IsNil(o.Nutrition) {
		return true
	}

	return false
}

// SetNutrition gets a reference to the given SearchRecipes200ResponseRecipesInnerNutrition and assigns it to the Nutrition field.
func (o *SearchRecipes200ResponseRecipesInner) SetNutrition(v SearchRecipes200ResponseRecipesInnerNutrition) {
	o.Nutrition = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *SearchRecipes200ResponseRecipesInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRecipes200ResponseRecipesInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *SearchRecipes200ResponseRecipesInner) SetId(v int32) {
	o.Id = &v
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchRecipes200ResponseRecipesInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchRecipes200ResponseRecipesInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *SearchRecipes200ResponseRecipesInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *SearchRecipes200ResponseRecipesInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *SearchRecipes200ResponseRecipesInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *SearchRecipes200ResponseRecipesInner) UnsetTitle() {
	o.Title.Unset()
}

func (o SearchRecipes200ResponseRecipesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRecipes200ResponseRecipesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Images) {
		toSerialize["images"] = o.Images
	}
	if !IsNil(o.Nutrition) {
		toSerialize["nutrition"] = o.Nutrition
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	return toSerialize, nil
}

type NullableSearchRecipes200ResponseRecipesInner struct {
	value *SearchRecipes200ResponseRecipesInner
	isSet bool
}

func (v NullableSearchRecipes200ResponseRecipesInner) Get() *SearchRecipes200ResponseRecipesInner {
	return v.value
}

func (v *NullableSearchRecipes200ResponseRecipesInner) Set(val *SearchRecipes200ResponseRecipesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRecipes200ResponseRecipesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRecipes200ResponseRecipesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRecipes200ResponseRecipesInner(val *SearchRecipes200ResponseRecipesInner) *NullableSearchRecipes200ResponseRecipesInner {
	return &NullableSearchRecipes200ResponseRecipesInner{value: val, isSet: true}
}

func (v NullableSearchRecipes200ResponseRecipesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRecipes200ResponseRecipesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


