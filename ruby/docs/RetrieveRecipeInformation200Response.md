# OpenapiClient::RetrieveRecipeInformation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **servings** | **Integer** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **dietary_properties** | [**RetrieveRecipeInformation200ResponseDietaryProperties**](RetrieveRecipeInformation200ResponseDietaryProperties.md) |  | [optional] |
| **price_per_serving** | **Float** |  | [optional] |
| **times** | [**RetrieveRecipeInformation200ResponseTimes**](RetrieveRecipeInformation200ResponseTimes.md) |  | [optional] |
| **nutrition** | [**RetrieveRecipeInformation200ResponseNutrition**](RetrieveRecipeInformation200ResponseNutrition.md) |  | [optional] |
| **taste** | [**RetrieveRecipeInformation200ResponseTaste**](RetrieveRecipeInformation200ResponseTaste.md) |  | [optional] |
| **cuisines** | **Array&lt;String&gt;** |  | [optional] |
| **meal_types** | **Array&lt;String&gt;** |  | [optional] |
| **occasions** | **Array&lt;String&gt;** |  | [optional] |
| **ingredients** | [**Array&lt;RetrieveRecipeInformation200ResponseIngredientsInner&gt;**](RetrieveRecipeInformation200ResponseIngredientsInner.md) |  | [optional] |
| **instructions** | [**Array&lt;RetrieveRecipeInformation200ResponseInstructionsInner&gt;**](RetrieveRecipeInformation200ResponseInstructionsInner.md) |  | [optional] |
| **credits** | [**RetrieveRecipeInformation200ResponseCredits**](RetrieveRecipeInformation200ResponseCredits.md) |  | [optional] |
| **scores** | [**RetrieveRecipeInformation200ResponseScores**](RetrieveRecipeInformation200ResponseScores.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveRecipeInformation200Response.new(
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

