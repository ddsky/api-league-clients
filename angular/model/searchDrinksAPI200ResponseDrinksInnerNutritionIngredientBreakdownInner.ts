/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner } from './searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner';


export interface SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner { 
    name?: string | null;
    amount?: number;
    unit?: string | null;
    id?: number;
    nutrients?: Array<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>;
}

