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
import { SearchRecipesAPI200ResponseRecipesInner } from './searchRecipesAPI200ResponseRecipesInner';


export interface SearchRecipesAPI200Response { 
    offset?: number;
    number?: number;
    recipes?: Array<SearchRecipesAPI200ResponseRecipesInner>;
    total_results?: number;
}

