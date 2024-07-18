/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing } from './searchDrinks200ResponseDrinksInnerNutritionWeightPerServing';
import { SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown } from './searchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown';
import { SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner } from './searchDrinks200ResponseDrinksInnerNutritionNutrientsInner';
import { SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner } from './searchRecipes200ResponseRecipesInnerNutritionNutrientsInner';
import { RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner } from './retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner';
import { SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner } from './searchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner';


export interface RetrieveRecipeInformation200ResponseNutrition { 
    weight_per_serving?: SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing;
    caloric_breakdown?: SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown;
    flavonoids?: Array<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>;
    ingredient_breakdown?: Array<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner>;
    properties?: Array<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>;
    nutrients?: Array<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>;
}

