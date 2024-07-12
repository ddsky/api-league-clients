/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RetrieveRecipeInformation200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RetrieveRecipeInformation200Response{}

// RetrieveRecipeInformation200Response struct for RetrieveRecipeInformation200Response
type RetrieveRecipeInformation200Response struct {
	Id *int32 `json:"id,omitempty"`
	Title NullableString `json:"title,omitempty"`
	Servings *int32 `json:"servings,omitempty"`
	Images []*string `json:"images,omitempty"`
	DietaryProperties *RetrieveRecipeInformation200ResponseDietaryProperties `json:"dietary_properties,omitempty"`
	PricePerServing *float32 `json:"price_per_serving,omitempty"`
	Times *RetrieveRecipeInformation200ResponseTimes `json:"times,omitempty"`
	Nutrition *RetrieveRecipeInformation200ResponseNutrition `json:"nutrition,omitempty"`
	Taste *RetrieveRecipeInformation200ResponseTaste `json:"taste,omitempty"`
	Cuisines []*string `json:"cuisines,omitempty"`
	MealTypes []*string `json:"meal_types,omitempty"`
	Occasions []*string `json:"occasions,omitempty"`
	Ingredients []RetrieveRecipeInformation200ResponseIngredientsInner `json:"ingredients,omitempty"`
	Instructions []RetrieveRecipeInformation200ResponseInstructionsInner `json:"instructions,omitempty"`
	Credits *RetrieveRecipeInformation200ResponseCredits `json:"credits,omitempty"`
	Scores *RetrieveRecipeInformation200ResponseScores `json:"scores,omitempty"`
}

// NewRetrieveRecipeInformation200Response instantiates a new RetrieveRecipeInformation200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRetrieveRecipeInformation200Response() *RetrieveRecipeInformation200Response {
	this := RetrieveRecipeInformation200Response{}
	return &this
}

// NewRetrieveRecipeInformation200ResponseWithDefaults instantiates a new RetrieveRecipeInformation200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRetrieveRecipeInformation200ResponseWithDefaults() *RetrieveRecipeInformation200Response {
	this := RetrieveRecipeInformation200Response{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *RetrieveRecipeInformation200Response) SetId(v int32) {
	o.Id = &v
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RetrieveRecipeInformation200Response) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RetrieveRecipeInformation200Response) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *RetrieveRecipeInformation200Response) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *RetrieveRecipeInformation200Response) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *RetrieveRecipeInformation200Response) UnsetTitle() {
	o.Title.Unset()
}

// GetServings returns the Servings field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetServings() int32 {
	if o == nil || IsNil(o.Servings) {
		var ret int32
		return ret
	}
	return *o.Servings
}

// GetServingsOk returns a tuple with the Servings field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetServingsOk() (*int32, bool) {
	if o == nil || IsNil(o.Servings) {
		return nil, false
	}
	return o.Servings, true
}

// HasServings returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasServings() bool {
	if o != nil && !IsNil(o.Servings) {
		return true
	}

	return false
}

// SetServings gets a reference to the given int32 and assigns it to the Servings field.
func (o *RetrieveRecipeInformation200Response) SetServings(v int32) {
	o.Servings = &v
}

// GetImages returns the Images field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetImages() []*string {
	if o == nil || IsNil(o.Images) {
		var ret []*string
		return ret
	}
	return o.Images
}

// GetImagesOk returns a tuple with the Images field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetImagesOk() ([]*string, bool) {
	if o == nil || IsNil(o.Images) {
		return nil, false
	}
	return o.Images, true
}

// HasImages returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasImages() bool {
	if o != nil && !IsNil(o.Images) {
		return true
	}

	return false
}

// SetImages gets a reference to the given []*string and assigns it to the Images field.
func (o *RetrieveRecipeInformation200Response) SetImages(v []*string) {
	o.Images = v
}

// GetDietaryProperties returns the DietaryProperties field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetDietaryProperties() RetrieveRecipeInformation200ResponseDietaryProperties {
	if o == nil || IsNil(o.DietaryProperties) {
		var ret RetrieveRecipeInformation200ResponseDietaryProperties
		return ret
	}
	return *o.DietaryProperties
}

// GetDietaryPropertiesOk returns a tuple with the DietaryProperties field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetDietaryPropertiesOk() (*RetrieveRecipeInformation200ResponseDietaryProperties, bool) {
	if o == nil || IsNil(o.DietaryProperties) {
		return nil, false
	}
	return o.DietaryProperties, true
}

// HasDietaryProperties returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasDietaryProperties() bool {
	if o != nil && !IsNil(o.DietaryProperties) {
		return true
	}

	return false
}

// SetDietaryProperties gets a reference to the given RetrieveRecipeInformation200ResponseDietaryProperties and assigns it to the DietaryProperties field.
func (o *RetrieveRecipeInformation200Response) SetDietaryProperties(v RetrieveRecipeInformation200ResponseDietaryProperties) {
	o.DietaryProperties = &v
}

// GetPricePerServing returns the PricePerServing field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetPricePerServing() float32 {
	if o == nil || IsNil(o.PricePerServing) {
		var ret float32
		return ret
	}
	return *o.PricePerServing
}

// GetPricePerServingOk returns a tuple with the PricePerServing field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetPricePerServingOk() (*float32, bool) {
	if o == nil || IsNil(o.PricePerServing) {
		return nil, false
	}
	return o.PricePerServing, true
}

// HasPricePerServing returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasPricePerServing() bool {
	if o != nil && !IsNil(o.PricePerServing) {
		return true
	}

	return false
}

// SetPricePerServing gets a reference to the given float32 and assigns it to the PricePerServing field.
func (o *RetrieveRecipeInformation200Response) SetPricePerServing(v float32) {
	o.PricePerServing = &v
}

// GetTimes returns the Times field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetTimes() RetrieveRecipeInformation200ResponseTimes {
	if o == nil || IsNil(o.Times) {
		var ret RetrieveRecipeInformation200ResponseTimes
		return ret
	}
	return *o.Times
}

// GetTimesOk returns a tuple with the Times field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetTimesOk() (*RetrieveRecipeInformation200ResponseTimes, bool) {
	if o == nil || IsNil(o.Times) {
		return nil, false
	}
	return o.Times, true
}

// HasTimes returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasTimes() bool {
	if o != nil && !IsNil(o.Times) {
		return true
	}

	return false
}

// SetTimes gets a reference to the given RetrieveRecipeInformation200ResponseTimes and assigns it to the Times field.
func (o *RetrieveRecipeInformation200Response) SetTimes(v RetrieveRecipeInformation200ResponseTimes) {
	o.Times = &v
}

// GetNutrition returns the Nutrition field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetNutrition() RetrieveRecipeInformation200ResponseNutrition {
	if o == nil || IsNil(o.Nutrition) {
		var ret RetrieveRecipeInformation200ResponseNutrition
		return ret
	}
	return *o.Nutrition
}

// GetNutritionOk returns a tuple with the Nutrition field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetNutritionOk() (*RetrieveRecipeInformation200ResponseNutrition, bool) {
	if o == nil || IsNil(o.Nutrition) {
		return nil, false
	}
	return o.Nutrition, true
}

// HasNutrition returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasNutrition() bool {
	if o != nil && !IsNil(o.Nutrition) {
		return true
	}

	return false
}

// SetNutrition gets a reference to the given RetrieveRecipeInformation200ResponseNutrition and assigns it to the Nutrition field.
func (o *RetrieveRecipeInformation200Response) SetNutrition(v RetrieveRecipeInformation200ResponseNutrition) {
	o.Nutrition = &v
}

// GetTaste returns the Taste field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetTaste() RetrieveRecipeInformation200ResponseTaste {
	if o == nil || IsNil(o.Taste) {
		var ret RetrieveRecipeInformation200ResponseTaste
		return ret
	}
	return *o.Taste
}

// GetTasteOk returns a tuple with the Taste field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetTasteOk() (*RetrieveRecipeInformation200ResponseTaste, bool) {
	if o == nil || IsNil(o.Taste) {
		return nil, false
	}
	return o.Taste, true
}

// HasTaste returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasTaste() bool {
	if o != nil && !IsNil(o.Taste) {
		return true
	}

	return false
}

// SetTaste gets a reference to the given RetrieveRecipeInformation200ResponseTaste and assigns it to the Taste field.
func (o *RetrieveRecipeInformation200Response) SetTaste(v RetrieveRecipeInformation200ResponseTaste) {
	o.Taste = &v
}

// GetCuisines returns the Cuisines field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetCuisines() []*string {
	if o == nil || IsNil(o.Cuisines) {
		var ret []*string
		return ret
	}
	return o.Cuisines
}

// GetCuisinesOk returns a tuple with the Cuisines field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetCuisinesOk() ([]*string, bool) {
	if o == nil || IsNil(o.Cuisines) {
		return nil, false
	}
	return o.Cuisines, true
}

// HasCuisines returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasCuisines() bool {
	if o != nil && !IsNil(o.Cuisines) {
		return true
	}

	return false
}

// SetCuisines gets a reference to the given []*string and assigns it to the Cuisines field.
func (o *RetrieveRecipeInformation200Response) SetCuisines(v []*string) {
	o.Cuisines = v
}

// GetMealTypes returns the MealTypes field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetMealTypes() []*string {
	if o == nil || IsNil(o.MealTypes) {
		var ret []*string
		return ret
	}
	return o.MealTypes
}

// GetMealTypesOk returns a tuple with the MealTypes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetMealTypesOk() ([]*string, bool) {
	if o == nil || IsNil(o.MealTypes) {
		return nil, false
	}
	return o.MealTypes, true
}

// HasMealTypes returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasMealTypes() bool {
	if o != nil && !IsNil(o.MealTypes) {
		return true
	}

	return false
}

// SetMealTypes gets a reference to the given []*string and assigns it to the MealTypes field.
func (o *RetrieveRecipeInformation200Response) SetMealTypes(v []*string) {
	o.MealTypes = v
}

// GetOccasions returns the Occasions field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetOccasions() []*string {
	if o == nil || IsNil(o.Occasions) {
		var ret []*string
		return ret
	}
	return o.Occasions
}

// GetOccasionsOk returns a tuple with the Occasions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetOccasionsOk() ([]*string, bool) {
	if o == nil || IsNil(o.Occasions) {
		return nil, false
	}
	return o.Occasions, true
}

// HasOccasions returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasOccasions() bool {
	if o != nil && !IsNil(o.Occasions) {
		return true
	}

	return false
}

// SetOccasions gets a reference to the given []*string and assigns it to the Occasions field.
func (o *RetrieveRecipeInformation200Response) SetOccasions(v []*string) {
	o.Occasions = v
}

// GetIngredients returns the Ingredients field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetIngredients() []RetrieveRecipeInformation200ResponseIngredientsInner {
	if o == nil || IsNil(o.Ingredients) {
		var ret []RetrieveRecipeInformation200ResponseIngredientsInner
		return ret
	}
	return o.Ingredients
}

// GetIngredientsOk returns a tuple with the Ingredients field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetIngredientsOk() ([]RetrieveRecipeInformation200ResponseIngredientsInner, bool) {
	if o == nil || IsNil(o.Ingredients) {
		return nil, false
	}
	return o.Ingredients, true
}

// HasIngredients returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasIngredients() bool {
	if o != nil && !IsNil(o.Ingredients) {
		return true
	}

	return false
}

// SetIngredients gets a reference to the given []RetrieveRecipeInformation200ResponseIngredientsInner and assigns it to the Ingredients field.
func (o *RetrieveRecipeInformation200Response) SetIngredients(v []RetrieveRecipeInformation200ResponseIngredientsInner) {
	o.Ingredients = v
}

// GetInstructions returns the Instructions field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetInstructions() []RetrieveRecipeInformation200ResponseInstructionsInner {
	if o == nil || IsNil(o.Instructions) {
		var ret []RetrieveRecipeInformation200ResponseInstructionsInner
		return ret
	}
	return o.Instructions
}

// GetInstructionsOk returns a tuple with the Instructions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetInstructionsOk() ([]RetrieveRecipeInformation200ResponseInstructionsInner, bool) {
	if o == nil || IsNil(o.Instructions) {
		return nil, false
	}
	return o.Instructions, true
}

// HasInstructions returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasInstructions() bool {
	if o != nil && !IsNil(o.Instructions) {
		return true
	}

	return false
}

// SetInstructions gets a reference to the given []RetrieveRecipeInformation200ResponseInstructionsInner and assigns it to the Instructions field.
func (o *RetrieveRecipeInformation200Response) SetInstructions(v []RetrieveRecipeInformation200ResponseInstructionsInner) {
	o.Instructions = v
}

// GetCredits returns the Credits field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetCredits() RetrieveRecipeInformation200ResponseCredits {
	if o == nil || IsNil(o.Credits) {
		var ret RetrieveRecipeInformation200ResponseCredits
		return ret
	}
	return *o.Credits
}

// GetCreditsOk returns a tuple with the Credits field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetCreditsOk() (*RetrieveRecipeInformation200ResponseCredits, bool) {
	if o == nil || IsNil(o.Credits) {
		return nil, false
	}
	return o.Credits, true
}

// HasCredits returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasCredits() bool {
	if o != nil && !IsNil(o.Credits) {
		return true
	}

	return false
}

// SetCredits gets a reference to the given RetrieveRecipeInformation200ResponseCredits and assigns it to the Credits field.
func (o *RetrieveRecipeInformation200Response) SetCredits(v RetrieveRecipeInformation200ResponseCredits) {
	o.Credits = &v
}

// GetScores returns the Scores field value if set, zero value otherwise.
func (o *RetrieveRecipeInformation200Response) GetScores() RetrieveRecipeInformation200ResponseScores {
	if o == nil || IsNil(o.Scores) {
		var ret RetrieveRecipeInformation200ResponseScores
		return ret
	}
	return *o.Scores
}

// GetScoresOk returns a tuple with the Scores field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RetrieveRecipeInformation200Response) GetScoresOk() (*RetrieveRecipeInformation200ResponseScores, bool) {
	if o == nil || IsNil(o.Scores) {
		return nil, false
	}
	return o.Scores, true
}

// HasScores returns a boolean if a field has been set.
func (o *RetrieveRecipeInformation200Response) HasScores() bool {
	if o != nil && !IsNil(o.Scores) {
		return true
	}

	return false
}

// SetScores gets a reference to the given RetrieveRecipeInformation200ResponseScores and assigns it to the Scores field.
func (o *RetrieveRecipeInformation200Response) SetScores(v RetrieveRecipeInformation200ResponseScores) {
	o.Scores = &v
}

func (o RetrieveRecipeInformation200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RetrieveRecipeInformation200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if !IsNil(o.Servings) {
		toSerialize["servings"] = o.Servings
	}
	if !IsNil(o.Images) {
		toSerialize["images"] = o.Images
	}
	if !IsNil(o.DietaryProperties) {
		toSerialize["dietary_properties"] = o.DietaryProperties
	}
	if !IsNil(o.PricePerServing) {
		toSerialize["price_per_serving"] = o.PricePerServing
	}
	if !IsNil(o.Times) {
		toSerialize["times"] = o.Times
	}
	if !IsNil(o.Nutrition) {
		toSerialize["nutrition"] = o.Nutrition
	}
	if !IsNil(o.Taste) {
		toSerialize["taste"] = o.Taste
	}
	if !IsNil(o.Cuisines) {
		toSerialize["cuisines"] = o.Cuisines
	}
	if !IsNil(o.MealTypes) {
		toSerialize["meal_types"] = o.MealTypes
	}
	if !IsNil(o.Occasions) {
		toSerialize["occasions"] = o.Occasions
	}
	if !IsNil(o.Ingredients) {
		toSerialize["ingredients"] = o.Ingredients
	}
	if !IsNil(o.Instructions) {
		toSerialize["instructions"] = o.Instructions
	}
	if !IsNil(o.Credits) {
		toSerialize["credits"] = o.Credits
	}
	if !IsNil(o.Scores) {
		toSerialize["scores"] = o.Scores
	}
	return toSerialize, nil
}

type NullableRetrieveRecipeInformation200Response struct {
	value *RetrieveRecipeInformation200Response
	isSet bool
}

func (v NullableRetrieveRecipeInformation200Response) Get() *RetrieveRecipeInformation200Response {
	return v.value
}

func (v *NullableRetrieveRecipeInformation200Response) Set(val *RetrieveRecipeInformation200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRetrieveRecipeInformation200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRetrieveRecipeInformation200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRetrieveRecipeInformation200Response(val *RetrieveRecipeInformation200Response) *NullableRetrieveRecipeInformation200Response {
	return &NullableRetrieveRecipeInformation200Response{value: val, isSet: true}
}

func (v NullableRetrieveRecipeInformation200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRetrieveRecipeInformation200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


