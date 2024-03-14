# OpenapiClient::ComputeNutrition200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrients** | [**Array&lt;RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner&gt;**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] |
| **properties** | [**Array&lt;RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner&gt;**](RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.md) |  | [optional] |
| **flavonoids** | [**Array&lt;SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;ComputeNutrition200ResponseIngredientBreakdownInner&gt;**](ComputeNutrition200ResponseIngredientBreakdownInner.md) |  | [optional] |
| **caloric_breakdown** | [**RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown**](RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.md) |  | [optional] |
| **weight_per_serving** | [**RetrieveRecipeInformation200ResponseNutritionWeightPerServing**](RetrieveRecipeInformation200ResponseNutritionWeightPerServing.md) |  | [optional] |

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

