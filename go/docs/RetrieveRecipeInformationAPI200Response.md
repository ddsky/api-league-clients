# RetrieveRecipeInformationAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Title** | Pointer to **NullableString** |  | [optional] 
**Servings** | Pointer to **int32** |  | [optional] 
**Images** | Pointer to **[]string** |  | [optional] 
**DietaryProperties** | Pointer to [**RetrieveRecipeInformationAPI200ResponseDietaryProperties**](RetrieveRecipeInformationAPI200ResponseDietaryProperties.md) |  | [optional] 
**PricePerServing** | Pointer to **float32** |  | [optional] 
**Times** | Pointer to [**RetrieveRecipeInformationAPI200ResponseTimes**](RetrieveRecipeInformationAPI200ResponseTimes.md) |  | [optional] 
**Nutrition** | Pointer to [**RetrieveRecipeInformationAPI200ResponseNutrition**](RetrieveRecipeInformationAPI200ResponseNutrition.md) |  | [optional] 
**Taste** | Pointer to [**RetrieveRecipeInformationAPI200ResponseTaste**](RetrieveRecipeInformationAPI200ResponseTaste.md) |  | [optional] 
**Cuisines** | Pointer to **[]string** |  | [optional] 
**MealTypes** | Pointer to **[]string** |  | [optional] 
**Occasions** | Pointer to **[]string** |  | [optional] 
**Ingredients** | Pointer to [**[]RetrieveRecipeInformationAPI200ResponseIngredientsInner**](RetrieveRecipeInformationAPI200ResponseIngredientsInner.md) |  | [optional] 
**Instructions** | Pointer to [**[]RetrieveRecipeInformationAPI200ResponseInstructionsInner**](RetrieveRecipeInformationAPI200ResponseInstructionsInner.md) |  | [optional] 
**Credits** | Pointer to [**RetrieveRecipeInformationAPI200ResponseCredits**](RetrieveRecipeInformationAPI200ResponseCredits.md) |  | [optional] 
**Scores** | Pointer to [**RetrieveRecipeInformationAPI200ResponseScores**](RetrieveRecipeInformationAPI200ResponseScores.md) |  | [optional] 

## Methods

### NewRetrieveRecipeInformationAPI200Response

`func NewRetrieveRecipeInformationAPI200Response() *RetrieveRecipeInformationAPI200Response`

NewRetrieveRecipeInformationAPI200Response instantiates a new RetrieveRecipeInformationAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveRecipeInformationAPI200ResponseWithDefaults

`func NewRetrieveRecipeInformationAPI200ResponseWithDefaults() *RetrieveRecipeInformationAPI200Response`

NewRetrieveRecipeInformationAPI200ResponseWithDefaults instantiates a new RetrieveRecipeInformationAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RetrieveRecipeInformationAPI200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveRecipeInformationAPI200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveRecipeInformationAPI200Response) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveRecipeInformationAPI200Response) HasId() bool`

HasId returns a boolean if a field has been set.

### GetTitle

`func (o *RetrieveRecipeInformationAPI200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *RetrieveRecipeInformationAPI200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *RetrieveRecipeInformationAPI200Response) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *RetrieveRecipeInformationAPI200Response) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *RetrieveRecipeInformationAPI200Response) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *RetrieveRecipeInformationAPI200Response) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetServings

`func (o *RetrieveRecipeInformationAPI200Response) GetServings() int32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *RetrieveRecipeInformationAPI200Response) GetServingsOk() (*int32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *RetrieveRecipeInformationAPI200Response) SetServings(v int32)`

SetServings sets Servings field to given value.

### HasServings

`func (o *RetrieveRecipeInformationAPI200Response) HasServings() bool`

HasServings returns a boolean if a field has been set.

### GetImages

`func (o *RetrieveRecipeInformationAPI200Response) GetImages() []*string`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *RetrieveRecipeInformationAPI200Response) GetImagesOk() (*[]*string, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *RetrieveRecipeInformationAPI200Response) SetImages(v []*string)`

SetImages sets Images field to given value.

### HasImages

`func (o *RetrieveRecipeInformationAPI200Response) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetDietaryProperties

`func (o *RetrieveRecipeInformationAPI200Response) GetDietaryProperties() RetrieveRecipeInformationAPI200ResponseDietaryProperties`

GetDietaryProperties returns the DietaryProperties field if non-nil, zero value otherwise.

### GetDietaryPropertiesOk

`func (o *RetrieveRecipeInformationAPI200Response) GetDietaryPropertiesOk() (*RetrieveRecipeInformationAPI200ResponseDietaryProperties, bool)`

GetDietaryPropertiesOk returns a tuple with the DietaryProperties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDietaryProperties

`func (o *RetrieveRecipeInformationAPI200Response) SetDietaryProperties(v RetrieveRecipeInformationAPI200ResponseDietaryProperties)`

SetDietaryProperties sets DietaryProperties field to given value.

### HasDietaryProperties

`func (o *RetrieveRecipeInformationAPI200Response) HasDietaryProperties() bool`

HasDietaryProperties returns a boolean if a field has been set.

### GetPricePerServing

`func (o *RetrieveRecipeInformationAPI200Response) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *RetrieveRecipeInformationAPI200Response) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *RetrieveRecipeInformationAPI200Response) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.

### HasPricePerServing

`func (o *RetrieveRecipeInformationAPI200Response) HasPricePerServing() bool`

HasPricePerServing returns a boolean if a field has been set.

### GetTimes

`func (o *RetrieveRecipeInformationAPI200Response) GetTimes() RetrieveRecipeInformationAPI200ResponseTimes`

GetTimes returns the Times field if non-nil, zero value otherwise.

### GetTimesOk

`func (o *RetrieveRecipeInformationAPI200Response) GetTimesOk() (*RetrieveRecipeInformationAPI200ResponseTimes, bool)`

GetTimesOk returns a tuple with the Times field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimes

`func (o *RetrieveRecipeInformationAPI200Response) SetTimes(v RetrieveRecipeInformationAPI200ResponseTimes)`

SetTimes sets Times field to given value.

### HasTimes

`func (o *RetrieveRecipeInformationAPI200Response) HasTimes() bool`

HasTimes returns a boolean if a field has been set.

### GetNutrition

`func (o *RetrieveRecipeInformationAPI200Response) GetNutrition() RetrieveRecipeInformationAPI200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *RetrieveRecipeInformationAPI200Response) GetNutritionOk() (*RetrieveRecipeInformationAPI200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *RetrieveRecipeInformationAPI200Response) SetNutrition(v RetrieveRecipeInformationAPI200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.

### HasNutrition

`func (o *RetrieveRecipeInformationAPI200Response) HasNutrition() bool`

HasNutrition returns a boolean if a field has been set.

### GetTaste

`func (o *RetrieveRecipeInformationAPI200Response) GetTaste() RetrieveRecipeInformationAPI200ResponseTaste`

GetTaste returns the Taste field if non-nil, zero value otherwise.

### GetTasteOk

`func (o *RetrieveRecipeInformationAPI200Response) GetTasteOk() (*RetrieveRecipeInformationAPI200ResponseTaste, bool)`

GetTasteOk returns a tuple with the Taste field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaste

`func (o *RetrieveRecipeInformationAPI200Response) SetTaste(v RetrieveRecipeInformationAPI200ResponseTaste)`

SetTaste sets Taste field to given value.

### HasTaste

`func (o *RetrieveRecipeInformationAPI200Response) HasTaste() bool`

HasTaste returns a boolean if a field has been set.

### GetCuisines

`func (o *RetrieveRecipeInformationAPI200Response) GetCuisines() []*string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *RetrieveRecipeInformationAPI200Response) GetCuisinesOk() (*[]*string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *RetrieveRecipeInformationAPI200Response) SetCuisines(v []*string)`

SetCuisines sets Cuisines field to given value.

### HasCuisines

`func (o *RetrieveRecipeInformationAPI200Response) HasCuisines() bool`

HasCuisines returns a boolean if a field has been set.

### GetMealTypes

`func (o *RetrieveRecipeInformationAPI200Response) GetMealTypes() []*string`

GetMealTypes returns the MealTypes field if non-nil, zero value otherwise.

### GetMealTypesOk

`func (o *RetrieveRecipeInformationAPI200Response) GetMealTypesOk() (*[]*string, bool)`

GetMealTypesOk returns a tuple with the MealTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMealTypes

`func (o *RetrieveRecipeInformationAPI200Response) SetMealTypes(v []*string)`

SetMealTypes sets MealTypes field to given value.

### HasMealTypes

`func (o *RetrieveRecipeInformationAPI200Response) HasMealTypes() bool`

HasMealTypes returns a boolean if a field has been set.

### GetOccasions

`func (o *RetrieveRecipeInformationAPI200Response) GetOccasions() []*string`

GetOccasions returns the Occasions field if non-nil, zero value otherwise.

### GetOccasionsOk

`func (o *RetrieveRecipeInformationAPI200Response) GetOccasionsOk() (*[]*string, bool)`

GetOccasionsOk returns a tuple with the Occasions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccasions

`func (o *RetrieveRecipeInformationAPI200Response) SetOccasions(v []*string)`

SetOccasions sets Occasions field to given value.

### HasOccasions

`func (o *RetrieveRecipeInformationAPI200Response) HasOccasions() bool`

HasOccasions returns a boolean if a field has been set.

### GetIngredients

`func (o *RetrieveRecipeInformationAPI200Response) GetIngredients() []RetrieveRecipeInformationAPI200ResponseIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *RetrieveRecipeInformationAPI200Response) GetIngredientsOk() (*[]RetrieveRecipeInformationAPI200ResponseIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *RetrieveRecipeInformationAPI200Response) SetIngredients(v []RetrieveRecipeInformationAPI200ResponseIngredientsInner)`

SetIngredients sets Ingredients field to given value.

### HasIngredients

`func (o *RetrieveRecipeInformationAPI200Response) HasIngredients() bool`

HasIngredients returns a boolean if a field has been set.

### GetInstructions

`func (o *RetrieveRecipeInformationAPI200Response) GetInstructions() []RetrieveRecipeInformationAPI200ResponseInstructionsInner`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *RetrieveRecipeInformationAPI200Response) GetInstructionsOk() (*[]RetrieveRecipeInformationAPI200ResponseInstructionsInner, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *RetrieveRecipeInformationAPI200Response) SetInstructions(v []RetrieveRecipeInformationAPI200ResponseInstructionsInner)`

SetInstructions sets Instructions field to given value.

### HasInstructions

`func (o *RetrieveRecipeInformationAPI200Response) HasInstructions() bool`

HasInstructions returns a boolean if a field has been set.

### GetCredits

`func (o *RetrieveRecipeInformationAPI200Response) GetCredits() RetrieveRecipeInformationAPI200ResponseCredits`

GetCredits returns the Credits field if non-nil, zero value otherwise.

### GetCreditsOk

`func (o *RetrieveRecipeInformationAPI200Response) GetCreditsOk() (*RetrieveRecipeInformationAPI200ResponseCredits, bool)`

GetCreditsOk returns a tuple with the Credits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCredits

`func (o *RetrieveRecipeInformationAPI200Response) SetCredits(v RetrieveRecipeInformationAPI200ResponseCredits)`

SetCredits sets Credits field to given value.

### HasCredits

`func (o *RetrieveRecipeInformationAPI200Response) HasCredits() bool`

HasCredits returns a boolean if a field has been set.

### GetScores

`func (o *RetrieveRecipeInformationAPI200Response) GetScores() RetrieveRecipeInformationAPI200ResponseScores`

GetScores returns the Scores field if non-nil, zero value otherwise.

### GetScoresOk

`func (o *RetrieveRecipeInformationAPI200Response) GetScoresOk() (*RetrieveRecipeInformationAPI200ResponseScores, bool)`

GetScoresOk returns a tuple with the Scores field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScores

`func (o *RetrieveRecipeInformationAPI200Response) SetScores(v RetrieveRecipeInformationAPI200ResponseScores)`

SetScores sets Scores field to given value.

### HasScores

`func (o *RetrieveRecipeInformationAPI200Response) HasScores() bool`

HasScores returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


