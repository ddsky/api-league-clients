# OpenapiClient::SearchDrinksAPI200ResponseDrinksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flavors** | **Array&lt;String&gt;** |  | [optional] |
| **instructions** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerInstructionsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md) |  | [optional] |
| **images** | **Array&lt;String&gt;** |  | [optional] |
| **nutrition** | [**SearchDrinksAPI200ResponseDrinksInnerNutrition**](SearchDrinksAPI200ResponseDrinksInnerNutrition.md) |  | [optional] |
| **glass_type** | **String** |  | [optional] |
| **credits** | [**SearchDrinksAPI200ResponseDrinksInnerCredits**](SearchDrinksAPI200ResponseDrinksInnerCredits.md) |  | [optional] |
| **price_per_serving** | **Float** |  | [optional] |
| **description** | **String** |  | [optional] |
| **ingredients** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerIngredientsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md) |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **cuisines** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchDrinksAPI200ResponseDrinksInner.new(
  flavors: null,
  instructions: null,
  images: null,
  nutrition: null,
  glass_type: null,
  credits: null,
  price_per_serving: null,
  description: null,
  ingredients: null,
  id: null,
  title: null,
  cuisines: null
)
```

