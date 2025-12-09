# OpenapiClient::RetrieveRecipeInformationAPI200ResponseNutrition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrients** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] |
| **properties** | [**Array&lt;SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner&gt;**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] |
| **flavonoids** | [**Array&lt;SearchDrinksAPI200ResponseDrinksInnerNutritionPropertiesInner&gt;**](SearchDrinksAPI200ResponseDrinksInnerNutritionPropertiesInner.md) |  | [optional] |
| **ingredient_breakdown** | [**Array&lt;RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner&gt;**](RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] |
| **caloric_breakdown** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] |
| **weight_per_serving** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveRecipeInformationAPI200ResponseNutrition.new(
  nutrients: null,
  properties: null,
  flavonoids: null,
  ingredient_breakdown: null,
  caloric_breakdown: null,
  weight_per_serving: null
)
```

