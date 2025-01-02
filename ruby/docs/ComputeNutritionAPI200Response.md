# OpenapiClient::ComputeNutritionAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrients** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] |
| **properties** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] |
| **flavonoids** | [**Array&lt;SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;ComputeNutritionAPI200ResponseIngredientBreakdownInner&gt;**](ComputeNutritionAPI200ResponseIngredientBreakdownInner.md) |  | [optional] |
| **caloric_breakdown** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] |
| **weight_per_serving** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ComputeNutritionAPI200Response.new(
  nutrients: null,
  properties: null,
  flavonoids: null,
  ingredient_breakdown: null,
  caloric_breakdown: null,
  weight_per_serving: null
)
```

