/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchRecipes200ResponseRecipesInner } from './searchRecipes200ResponseRecipesInner';


export interface SearchRecipes200Response { 
    offset?: number;
    number?: number;
    recipes?: Array<SearchRecipes200ResponseRecipesInner>;
    total_results?: number;
}

