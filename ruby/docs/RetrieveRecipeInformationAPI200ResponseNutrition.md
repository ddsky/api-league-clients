# OpenapiClient::RetrieveRecipeInformationAPI200ResponseNutrition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **weight_per_serving** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] |
| **caloric_breakdown** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] |
| **flavonoids** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner&gt;**](RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] |
| **properties** | [**Array&lt;SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **nutrients** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveRecipeInformationAPI200ResponseNutrition.new(
  weight_per_serving: null,
  caloric_breakdown: null,
  flavonoids: null,
  ingredient_breakdown: null,
  properties: null,
  nutrients: null
)
```

