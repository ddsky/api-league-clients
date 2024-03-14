/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RetrieveRecipeInformation200ResponseCredits } from '../models/RetrieveRecipeInformation200ResponseCredits';
import { RetrieveRecipeInformation200ResponseDietaryProperties } from '../models/RetrieveRecipeInformation200ResponseDietaryProperties';
import { RetrieveRecipeInformation200ResponseIngredientsInner } from '../models/RetrieveRecipeInformation200ResponseIngredientsInner';
import { RetrieveRecipeInformation200ResponseInstructionsInner } from '../models/RetrieveRecipeInformation200ResponseInstructionsInner';
import { RetrieveRecipeInformation200ResponseNutrition } from '../models/RetrieveRecipeInformation200ResponseNutrition';
import { RetrieveRecipeInformation200ResponseScores } from '../models/RetrieveRecipeInformation200ResponseScores';
import { RetrieveRecipeInformation200ResponseTaste } from '../models/RetrieveRecipeInformation200ResponseTaste';
import { RetrieveRecipeInformation200ResponseTimes } from '../models/RetrieveRecipeInformation200ResponseTimes';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200Response {
    'id'?: number;
    'title'?: string | null;
    'servings'?: number;
    'images'?: Array<string>;
    'dietaryProperties'?: RetrieveRecipeInformation200ResponseDietaryProperties;
    'pricePerServing'?: number;
    'times'?: RetrieveRecipeInformation200ResponseTimes;
    'nutrition'?: RetrieveRecipeInformation200ResponseNutrition;
    'taste'?: RetrieveRecipeInformation200ResponseTaste;
    'cuisines'?: Array<string>;
    'mealTypes'?: Array<string>;
    'occasions'?: Array<string>;
    'ingredients'?: Array<RetrieveRecipeInformation200ResponseIngredientsInner>;
    'instructions'?: Array<RetrieveRecipeInformation200ResponseInstructionsInner>;
    'credits'?: RetrieveRecipeInformation200ResponseCredits;
    'scores'?: RetrieveRecipeInformation200ResponseScores;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        },
        {
            "name": "servings",
            "baseName": "servings",
            "type": "number",
            "format": ""
        },
        {
            "name": "images",
            "baseName": "images",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "dietaryProperties",
            "baseName": "dietary_properties",
            "type": "RetrieveRecipeInformation200ResponseDietaryProperties",
            "format": ""
        },
        {
            "name": "pricePerServing",
            "baseName": "price_per_serving",
            "type": "number",
            "format": ""
        },
        {
            "name": "times",
            "baseName": "times",
            "type": "RetrieveRecipeInformation200ResponseTimes",
            "format": ""
        },
        {
            "name": "nutrition",
            "baseName": "nutrition",
            "type": "RetrieveRecipeInformation200ResponseNutrition",
            "format": ""
        },
        {
            "name": "taste",
            "baseName": "taste",
            "type": "RetrieveRecipeInformation200ResponseTaste",
            "format": ""
        },
        {
            "name": "cuisines",
            "baseName": "cuisines",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "mealTypes",
            "baseName": "meal_types",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "occasions",
            "baseName": "occasions",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "ingredients",
            "baseName": "ingredients",
            "type": "Array<RetrieveRecipeInformation200ResponseIngredientsInner>",
            "format": ""
        },
        {
            "name": "instructions",
            "baseName": "instructions",
            "type": "Array<RetrieveRecipeInformation200ResponseInstructionsInner>",
            "format": ""
        },
        {
            "name": "credits",
            "baseName": "credits",
            "type": "RetrieveRecipeInformation200ResponseCredits",
            "format": ""
        },
        {
            "name": "scores",
            "baseName": "scores",
            "type": "RetrieveRecipeInformation200ResponseScores",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

