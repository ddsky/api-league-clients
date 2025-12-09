# OpenapiClient::SearchDrinksAPI200ResponseDrinksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **price_per_serving** | **Float** |  | [optional] |
| **nutrition** | [**SearchDrinksAPI200ResponseDrinksInnerNutrition**](SearchDrinksAPI200ResponseDrinksInnerNutrition.md) |  | [optional] |
| **flavors** | **Array&lt;String&gt;** |  | [optional] |
| **glass_type** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **cuisines** | **Array&lt;String&gt;** |  | [optional] |
| **ingredients** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerIngredientsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md) |  | [optional] |
| **instructions** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerInstructionsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md) |  | [optional] |
| **credits** | [**SearchDrinksAPI200ResponseDrinksInnerCredits**](SearchDrinksAPI200ResponseDrinksInnerCredits.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchDrinksAPI200ResponseDrinksInner.new(
  id: null,
  title: null,
  images: null,
  price_per_serving: null,
  nutrition: null,
  flavors: null,
  glass_type: null,
  description: null,
  cuisines: null,
  ingredients: null,
  instructions: null,
  credits: null
)
```

