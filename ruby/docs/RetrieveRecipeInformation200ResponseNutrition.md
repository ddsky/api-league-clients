# OpenapiClient::RetrieveRecipeInformation200ResponseNutrition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **weight_per_serving** | [**RetrieveRecipeInformation200ResponseNutritionWeightPerServing**](RetrieveRecipeInformation200ResponseNutritionWeightPerServing.md) |  | [optional] |
| **caloric_breakdown** | [**RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown**](RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.md) |  | [optional] |
| **flavonoids** | [**Array&lt;RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner&gt;**](RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner&gt;**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] |
| **properties** | [**Array&lt;SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **nutrients** | [**Array&lt;RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner&gt;**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveRecipeInformation200ResponseNutrition.new(
  weight_per_serving: null,
  caloric_breakdown: null,
  flavonoids: null,
  ingredient_breakdown: null,
  properties: null,
  nutrients: null
)
```

