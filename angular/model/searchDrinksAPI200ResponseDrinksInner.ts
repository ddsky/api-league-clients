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
import { SearchDrinksAPI200ResponseDrinksInnerInstructionsInner } from './searchDrinksAPI200ResponseDrinksInnerInstructionsInner';
import { SearchDrinksAPI200ResponseDrinksInnerIngredientsInner } from './searchDrinksAPI200ResponseDrinksInnerIngredientsInner';
import { SearchDrinksAPI200ResponseDrinksInnerCredits } from './searchDrinksAPI200ResponseDrinksInnerCredits';
import { SearchDrinksAPI200ResponseDrinksInnerNutrition } from './searchDrinksAPI200ResponseDrinksInnerNutrition';


export interface SearchDrinksAPI200ResponseDrinksInner { 
    flavors?: Array<string>;
    instructions?: Array<SearchDrinksAPI200ResponseDrinksInnerInstructionsInner>;
    images?: Array<string>;
    nutrition?: SearchDrinksAPI200ResponseDrinksInnerNutrition;
    glass_type?: string | null;
    credits?: SearchDrinksAPI200ResponseDrinksInnerCredits;
    price_per_serving?: number;
    description?: string | null;
    ingredients?: Array<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner>;
    id?: number;
    title?: string | null;
    cuisines?: Array<string>;
}

