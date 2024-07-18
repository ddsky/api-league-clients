# OpenapiClient::RetrieveRecipeInformation200ResponseNutrition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **weight_per_serving** | [**SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] |
| **caloric_breakdown** | [**SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] |
| **flavonoids** | [**Array&lt;SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner&gt;**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner&gt;**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] |
| **properties** | [**Array&lt;SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **nutrients** | [**Array&lt;SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner&gt;**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] |

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

