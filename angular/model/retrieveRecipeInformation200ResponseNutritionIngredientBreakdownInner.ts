/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner } from './retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner';


export interface RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner { 
    name?: string | null;
    amount?: number;
    unit?: string | null;
    id?: number;
    nutrients?: Array<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner>;
}

