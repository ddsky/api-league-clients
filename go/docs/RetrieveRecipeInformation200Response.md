# RetrieveRecipeInformation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Title** | Pointer to **NullableString** |  | [optional] 
**Servings** | Pointer to **int32** |  | [optional] 
**Images** | Pointer to **[]string** |  | [optional] 
**DietaryProperties** | Pointer to [**RetrieveRecipeInformation200ResponseDietaryProperties**](RetrieveRecipeInformation200ResponseDietaryProperties.md) |  | [optional] 
**PricePerServing** | Pointer to **float32** |  | [optional] 
**Times** | Pointer to [**RetrieveRecipeInformation200ResponseTimes**](RetrieveRecipeInformation200ResponseTimes.md) |  | [optional] 
**Nutrition** | Pointer to [**RetrieveRecipeInformation200ResponseNutrition**](RetrieveRecipeInformation200ResponseNutrition.md) |  | [optional] 
**Taste** | Pointer to [**RetrieveRecipeInformation200ResponseTaste**](RetrieveRecipeInformation200ResponseTaste.md) |  | [optional] 
**Cuisines** | Pointer to **[]string** |  | [optional] 
**MealTypes** | Pointer to **[]string** |  | [optional] 
**Occasions** | Pointer to **[]string** |  | [optional] 
**Ingredients** | Pointer to [**[]RetrieveRecipeInformation200ResponseIngredientsInner**](RetrieveRecipeInformation200ResponseIngredientsInner.md) |  | [optional] 
**Instructions** | Pointer to [**[]RetrieveRecipeInformation200ResponseInstructionsInner**](RetrieveRecipeInformation200ResponseInstructionsInner.md) |  | [optional] 
**Credits** | Pointer to [**RetrieveRecipeInformation200ResponseCredits**](RetrieveRecipeInformation200ResponseCredits.md) |  | [optional] 
**Scores** | Pointer to [**RetrieveRecipeInformation200ResponseScores**](RetrieveRecipeInformation200ResponseScores.md) |  | [optional] 

## Methods

### NewRetrieveRecipeInformation200Response

`func NewRetrieveRecipeInformation200Response() *RetrieveRecipeInformation200Response`

NewRetrieveRecipeInformation200Response instantiates a new RetrieveRecipeInformation200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformation200ResponseWithDefaults

`func NewRetrieveRecipeInformation200ResponseWithDefaults() *RetrieveRecipeInformation200Response`

NewRetrieveRecipeInformation200ResponseWithDefaults instantiates a new RetrieveRecipeInformation200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RetrieveRecipeInformation200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveRecipeInformation200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveRecipeInformation200Response) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveRecipeInformation200Response) HasId() bool`

HasId returns a boolean if a field has been set.

### GetTitle

`func (o *RetrieveRecipeInformation200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *RetrieveRecipeInformation200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *RetrieveRecipeInformation200Response) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *RetrieveRecipeInformation200Response) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *RetrieveRecipeInformation200Response) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *RetrieveRecipeInformation200Response) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetServings

`func (o *RetrieveRecipeInformation200Response) GetServings() int32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *RetrieveRecipeInformation200Response) GetServingsOk() (*int32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *RetrieveRecipeInformation200Response) SetServings(v int32)`

SetServings sets Servings field to given value.

### HasServings

`func (o *RetrieveRecipeInformation200Response) HasServings() bool`

HasServings returns a boolean if a field has been set.

### GetImages

`func (o *RetrieveRecipeInformation200Response) GetImages() []*string`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *RetrieveRecipeInformation200Response) GetImagesOk() (*[]*string, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *RetrieveRecipeInformation200Response) SetImages(v []*string)`

SetImages sets Images field to given value.

### HasImages

`func (o *RetrieveRecipeInformation200Response) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetDietaryProperties

`func (o *RetrieveRecipeInformation200Response) GetDietaryProperties() RetrieveRecipeInformation200ResponseDietaryProperties`

GetDietaryProperties returns the DietaryProperties field if non-nil, zero value otherwise.

### GetDietaryPropertiesOk

`func (o *RetrieveRecipeInformation200Response) GetDietaryPropertiesOk() (*RetrieveRecipeInformation200ResponseDietaryProperties, bool)`

GetDietaryPropertiesOk returns a tuple with the DietaryProperties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDietaryProperties

`func (o *RetrieveRecipeInformation200Response) SetDietaryProperties(v RetrieveRecipeInformation200ResponseDietaryProperties)`

SetDietaryProperties sets DietaryProperties field to given value.

### HasDietaryProperties

`func (o *RetrieveRecipeInformation200Response) HasDietaryProperties() bool`

HasDietaryProperties returns a boolean if a field has been set.

### GetPricePerServing

`func (o *RetrieveRecipeInformation200Response) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *RetrieveRecipeInformation200Response) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *RetrieveRecipeInformation200Response) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.

### HasPricePerServing

`func (o *RetrieveRecipeInformation200Response) HasPricePerServing() bool`

HasPricePerServing returns a boolean if a field has been set.

### GetTimes

`func (o *RetrieveRecipeInformation200Response) GetTimes() RetrieveRecipeInformation200ResponseTimes`

GetTimes returns the Times field if non-nil, zero value otherwise.

### GetTimesOk

`func (o *RetrieveRecipeInformation200Response) GetTimesOk() (*RetrieveRecipeInformation200ResponseTimes, bool)`

GetTimesOk returns a tuple with the Times field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimes

`func (o *RetrieveRecipeInformation200Response) SetTimes(v RetrieveRecipeInformation200ResponseTimes)`

SetTimes sets Times field to given value.

### HasTimes

`func (o *RetrieveRecipeInformation200Response) HasTimes() bool`

HasTimes returns a boolean if a field has been set.

### GetNutrition

`func (o *RetrieveRecipeInformation200Response) GetNutrition() RetrieveRecipeInformation200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *RetrieveRecipeInformation200Response) GetNutritionOk() (*RetrieveRecipeInformation200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *RetrieveRecipeInformation200Response) SetNutrition(v RetrieveRecipeInformation200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.

### HasNutrition

`func (o *RetrieveRecipeInformation200Response) HasNutrition() bool`

HasNutrition returns a boolean if a field has been set.

### GetTaste

`func (o *RetrieveRecipeInformation200Response) GetTaste() RetrieveRecipeInformation200ResponseTaste`

GetTaste returns the Taste field if non-nil, zero value otherwise.

### GetTasteOk

`func (o *RetrieveRecipeInformation200Response) GetTasteOk() (*RetrieveRecipeInformation200ResponseTaste, bool)`

GetTasteOk returns a tuple with the Taste field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaste

`func (o *RetrieveRecipeInformation200Response) SetTaste(v RetrieveRecipeInformation200ResponseTaste)`

SetTaste sets Taste field to given value.

### HasTaste

`func (o *RetrieveRecipeInformation200Response) HasTaste() bool`

HasTaste returns a boolean if a field has been set.

### GetCuisines

`func (o *RetrieveRecipeInformation200Response) GetCuisines() []*string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *RetrieveRecipeInformation200Response) GetCuisinesOk() (*[]*string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *RetrieveRecipeInformation200Response) SetCuisines(v []*string)`

SetCuisines sets Cuisines field to given value.

### HasCuisines

`func (o *RetrieveRecipeInformation200Response) HasCuisines() bool`

HasCuisines returns a boolean if a field has been set.

### GetMealTypes

`func (o *RetrieveRecipeInformation200Response) GetMealTypes() []*string`

GetMealTypes returns the MealTypes field if non-nil, zero value otherwise.

### GetMealTypesOk

`func (o *RetrieveRecipeInformation200Response) GetMealTypesOk() (*[]*string, bool)`

GetMealTypesOk returns a tuple with the MealTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMealTypes

`func (o *RetrieveRecipeInformation200Response) SetMealTypes(v []*string)`

SetMealTypes sets MealTypes field to given value.

### HasMealTypes

`func (o *RetrieveRecipeInformation200Response) HasMealTypes() bool`

HasMealTypes returns a boolean if a field has been set.

### GetOccasions

`func (o *RetrieveRecipeInformation200Response) GetOccasions() []*string`

GetOccasions returns the Occasions field if non-nil, zero value otherwise.

### GetOccasionsOk

`func (o *RetrieveRecipeInformation200Response) GetOccasionsOk() (*[]*string, bool)`

GetOccasionsOk returns a tuple with the Occasions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccasions

`func (o *RetrieveRecipeInformation200Response) SetOccasions(v []*string)`

SetOccasions sets Occasions field to given value.

### HasOccasions

`func (o *RetrieveRecipeInformation200Response) HasOccasions() bool`

HasOccasions returns a boolean if a field has been set.

### GetIngredients

`func (o *RetrieveRecipeInformation200Response) GetIngredients() []RetrieveRecipeInformation200ResponseIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *RetrieveRecipeInformation200Response) GetIngredientsOk() (*[]RetrieveRecipeInformation200ResponseIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *RetrieveRecipeInformation200Response) SetIngredients(v []RetrieveRecipeInformation200ResponseIngredientsInner)`

SetIngredients sets Ingredients field to given value.

### HasIngredients

`func (o *RetrieveRecipeInformation200Response) HasIngredients() bool`

HasIngredients returns a boolean if a field has been set.

### GetInstructions

`func (o *RetrieveRecipeInformation200Response) GetInstructions() []RetrieveRecipeInformation200ResponseInstructionsInner`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *RetrieveRecipeInformation200Response) GetInstructionsOk() (*[]RetrieveRecipeInformation200ResponseInstructionsInner, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *RetrieveRecipeInformation200Response) SetInstructions(v []RetrieveRecipeInformation200ResponseInstructionsInner)`

SetInstructions sets Instructions field to given value.

### HasInstructions

`func (o *RetrieveRecipeInformation200Response) HasInstructions() bool`

HasInstructions returns a boolean if a field has been set.

### GetCredits

`func (o *RetrieveRecipeInformation200Response) GetCredits() RetrieveRecipeInformation200ResponseCredits`

GetCredits returns the Credits field if non-nil, zero value otherwise.

### GetCreditsOk

`func (o *RetrieveRecipeInformation200Response) GetCreditsOk() (*RetrieveRecipeInformation200ResponseCredits, bool)`

GetCreditsOk returns a tuple with the Credits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCredits

`func (o *RetrieveRecipeInformation200Response) SetCredits(v RetrieveRecipeInformation200ResponseCredits)`

SetCredits sets Credits field to given value.

### HasCredits

`func (o *RetrieveRecipeInformation200Response) HasCredits() bool`

HasCredits returns a boolean if a field has been set.

### GetScores

`func (o *RetrieveRecipeInformation200Response) GetScores() RetrieveRecipeInformation200ResponseScores`

GetScores returns the Scores field if non-nil, zero value otherwise.

### GetScoresOk

`func (o *RetrieveRecipeInformation200Response) GetScoresOk() (*RetrieveRecipeInformation200ResponseScores, bool)`

GetScoresOk returns a tuple with the Scores field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScores

`func (o *RetrieveRecipeInformation200Response) SetScores(v RetrieveRecipeInformation200ResponseScores)`

SetScores sets Scores field to given value.

### HasScores

`func (o *RetrieveRecipeInformation200Response) HasScores() bool`

HasScores returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


