/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner } from './searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner';


export interface SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner { 
    number?: number;
    ingredients?: Array<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>;
    equipment?: Array<string>;
    step?: string | null;
}

