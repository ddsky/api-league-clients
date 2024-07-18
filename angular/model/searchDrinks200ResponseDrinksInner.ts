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
import { SearchDrinks200ResponseDrinksInnerInstructionsInner } from './searchDrinks200ResponseDrinksInnerInstructionsInner';
import { SearchDrinks200ResponseDrinksInnerIngredientsInner } from './searchDrinks200ResponseDrinksInnerIngredientsInner';
import { SearchDrinks200ResponseDrinksInnerNutrition } from './searchDrinks200ResponseDrinksInnerNutrition';
import { SearchDrinks200ResponseDrinksInnerCredits } from './searchDrinks200ResponseDrinksInnerCredits';


export interface SearchDrinks200ResponseDrinksInner { 
    flavors?: Array<string>;
    instructions?: Array<SearchDrinks200ResponseDrinksInnerInstructionsInner>;
    images?: Array<string>;
    nutrition?: SearchDrinks200ResponseDrinksInnerNutrition;
    glass_type?: string | null;
    credits?: SearchDrinks200ResponseDrinksInnerCredits;
    price_per_serving?: number;
    description?: string | null;
    ingredients?: Array<SearchDrinks200ResponseDrinksInnerIngredientsInner>;
    id?: number;
    title?: string | null;
    cuisines?: Array<string>;
}
