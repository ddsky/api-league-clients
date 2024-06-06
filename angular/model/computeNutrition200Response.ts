/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown } from './retrieveRecipeInformation200ResponseNutritionCaloricBreakdown';
import { RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner } from './retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner';
import { RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner } from './retrieveRecipeInformation200ResponseNutritionFlavonoidsInner';
import { ComputeNutrition200ResponseIngredientBreakdownInner } from './computeNutrition200ResponseIngredientBreakdownInner';
import { RetrieveRecipeInformation200ResponseNutritionWeightPerServing } from './retrieveRecipeInformation200ResponseNutritionWeightPerServing';
import { SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner } from './searchRecipes200ResponseRecipesInnerNutritionNutrientsInner';


export interface ComputeNutrition200Response { 
    nutrients?: Array<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner>;
    properties?: Array<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner>;
    flavonoids?: Array<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>;
    ingredient_breakdown?: Array<ComputeNutrition200ResponseIngredientBreakdownInner>;
    caloric_breakdown?: RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
    weight_per_serving?: RetrieveRecipeInformation200ResponseNutritionWeightPerServing;
}

