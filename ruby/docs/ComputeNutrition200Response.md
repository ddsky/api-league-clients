# OpenapiClient::ComputeNutrition200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrients** | [**Array&lt;SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner&gt;**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] |
| **properties** | [**Array&lt;SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner&gt;**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] |
| **flavonoids** | [**Array&lt;SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;ComputeNutrition200ResponseIngredientBreakdownInner&gt;**](ComputeNutrition200ResponseIngredientBreakdownInner.md) |  | [optional] |
| **caloric_breakdown** | [**SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] |
| **weight_per_serving** | [**SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ComputeNutrition200Response.new(
  nutrients: null,
  properties: null,
  flavonoids: null,
  ingredient_breakdown: null,
  caloric_breakdown: null,
  weight_per_serving: null
)
```

