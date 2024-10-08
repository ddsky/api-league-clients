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
import { RetrieveRecipeInformation200ResponseTaste } from './retrieveRecipeInformation200ResponseTaste';
import { RetrieveRecipeInformation200ResponseCredits } from './retrieveRecipeInformation200ResponseCredits';
import { RetrieveRecipeInformation200ResponseDietaryProperties } from './retrieveRecipeInformation200ResponseDietaryProperties';
import { RetrieveRecipeInformation200ResponseScores } from './retrieveRecipeInformation200ResponseScores';
import { RetrieveRecipeInformation200ResponseInstructionsInner } from './retrieveRecipeInformation200ResponseInstructionsInner';
import { RetrieveRecipeInformation200ResponseIngredientsInner } from './retrieveRecipeInformation200ResponseIngredientsInner';
import { RetrieveRecipeInformation200ResponseNutrition } from './retrieveRecipeInformation200ResponseNutrition';
import { RetrieveRecipeInformation200ResponseTimes } from './retrieveRecipeInformation200ResponseTimes';


export interface RetrieveRecipeInformation200Response { 
    id?: number;
    title?: string | null;
    servings?: number;
    images?: Array<string>;
    dietary_properties?: RetrieveRecipeInformation200ResponseDietaryProperties;
    price_per_serving?: number;
    times?: RetrieveRecipeInformation200ResponseTimes;
    nutrition?: RetrieveRecipeInformation200ResponseNutrition;
    taste?: RetrieveRecipeInformation200ResponseTaste;
    cuisines?: Array<string>;
    meal_types?: Array<string>;
    occasions?: Array<string>;
    ingredients?: Array<RetrieveRecipeInformation200ResponseIngredientsInner>;
    instructions?: Array<RetrieveRecipeInformation200ResponseInstructionsInner>;
    credits?: RetrieveRecipeInformation200ResponseCredits;
    scores?: RetrieveRecipeInformation200ResponseScores;
}

