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
import { ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner } from './computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner';


export interface ComputeNutrition200ResponseIngredientBreakdownInner { 
    name?: string | null;
    amount?: number;
    unit?: string | null;
    id?: number;
    nutrients?: Array<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>;
}

