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
import { RetrieveRecipeInformationAPI200ResponseDietaryProperties } from './retrieveRecipeInformationAPI200ResponseDietaryProperties';
import { RetrieveRecipeInformationAPI200ResponseInstructionsInner } from './retrieveRecipeInformationAPI200ResponseInstructionsInner';
import { RetrieveRecipeInformationAPI200ResponseTimes } from './retrieveRecipeInformationAPI200ResponseTimes';
import { RetrieveRecipeInformationAPI200ResponseNutrition } from './retrieveRecipeInformationAPI200ResponseNutrition';
import { RetrieveRecipeInformationAPI200ResponseTaste } from './retrieveRecipeInformationAPI200ResponseTaste';
import { RetrieveRecipeInformationAPI200ResponseCredits } from './retrieveRecipeInformationAPI200ResponseCredits';
import { RetrieveRecipeInformationAPI200ResponseScores } from './retrieveRecipeInformationAPI200ResponseScores';
import { RetrieveRecipeInformationAPI200ResponseIngredientsInner } from './retrieveRecipeInformationAPI200ResponseIngredientsInner';


export interface RetrieveRecipeInformationAPI200Response { 
    id?: number;
    title?: string | null;
    servings?: number;
    images?: Array<string>;
    dietary_properties?: RetrieveRecipeInformationAPI200ResponseDietaryProperties;
    price_per_serving?: number;
    times?: RetrieveRecipeInformationAPI200ResponseTimes;
    nutrition?: RetrieveRecipeInformationAPI200ResponseNutrition;
    taste?: RetrieveRecipeInformationAPI200ResponseTaste;
    cuisines?: Array<string>;
    meal_types?: Array<string>;
    occasions?: Array<string>;
    ingredients?: Array<RetrieveRecipeInformationAPI200ResponseIngredientsInner>;
    instructions?: Array<RetrieveRecipeInformationAPI200ResponseInstructionsInner>;
    credits?: RetrieveRecipeInformationAPI200ResponseCredits;
    scores?: RetrieveRecipeInformationAPI200ResponseScores;
}

