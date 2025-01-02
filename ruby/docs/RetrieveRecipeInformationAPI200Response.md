# OpenapiClient::RetrieveRecipeInformationAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **servings** | **Integer** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **dietary_properties** | [**RetrieveRecipeInformationAPI200ResponseDietaryProperties**](RetrieveRecipeInformationAPI200ResponseDietaryProperties.md) |  | [optional] |
| **price_per_serving** | **Float** |  | [optional] |
| **times** | [**RetrieveRecipeInformationAPI200ResponseTimes**](RetrieveRecipeInformationAPI200ResponseTimes.md) |  | [optional] |
| **nutrition** | [**RetrieveRecipeInformationAPI200ResponseNutrition**](RetrieveRecipeInformationAPI200ResponseNutrition.md) |  | [optional] |
| **taste** | [**RetrieveRecipeInformationAPI200ResponseTaste**](RetrieveRecipeInformationAPI200ResponseTaste.md) |  | [optional] |
| **cuisines** | **Array&lt;String&gt;** |  | [optional] |
| **meal_types** | **Array&lt;String&gt;** |  | [optional] |
| **occasions** | **Array&lt;String&gt;** |  | [optional] |
| **ingredients** | [**Array&lt;RetrieveRecipeInformationAPI200ResponseIngredientsInner&gt;**](RetrieveRecipeInformationAPI200ResponseIngredientsInner.md) |  | [optional] |
| **instructions** | [**Array&lt;RetrieveRecipeInformationAPI200ResponseInstructionsInner&gt;**](RetrieveRecipeInformationAPI200ResponseInstructionsInner.md) |  | [optional] |
| **credits** | [**RetrieveRecipeInformationAPI200ResponseCredits**](RetrieveRecipeInformationAPI200ResponseCredits.md) |  | [optional] |
| **scores** | [**RetrieveRecipeInformationAPI200ResponseScores**](RetrieveRecipeInformationAPI200ResponseScores.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveRecipeInformationAPI200Response.new(
  id: null,
  title: null,
  servings: null,
  images: null,
  dietary_properties: null,
  price_per_serving: null,
  times: null,
  nutrition: null,
  taste: null,
  cuisines: null,
  meal_types: null,
  occasions: null,
  ingredients: null,
  instructions: null,
  credits: null,
  scores: null
)
```

