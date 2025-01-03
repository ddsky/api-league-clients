/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RetrieveRecipeInformationAPI200ResponseCredits } from '../models/RetrieveRecipeInformationAPI200ResponseCredits';
import { RetrieveRecipeInformationAPI200ResponseDietaryProperties } from '../models/RetrieveRecipeInformationAPI200ResponseDietaryProperties';
import { RetrieveRecipeInformationAPI200ResponseIngredientsInner } from '../models/RetrieveRecipeInformationAPI200ResponseIngredientsInner';
import { RetrieveRecipeInformationAPI200ResponseInstructionsInner } from '../models/RetrieveRecipeInformationAPI200ResponseInstructionsInner';
import { RetrieveRecipeInformationAPI200ResponseNutrition } from '../models/RetrieveRecipeInformationAPI200ResponseNutrition';
import { RetrieveRecipeInformationAPI200ResponseScores } from '../models/RetrieveRecipeInformationAPI200ResponseScores';
import { RetrieveRecipeInformationAPI200ResponseTaste } from '../models/RetrieveRecipeInformationAPI200ResponseTaste';
import { RetrieveRecipeInformationAPI200ResponseTimes } from '../models/RetrieveRecipeInformationAPI200ResponseTimes';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformationAPI200Response {
    'id'?: number;
    'title'?: string | null;
    'servings'?: number;
    'images'?: Array<string>;
    'dietaryProperties'?: RetrieveRecipeInformationAPI200ResponseDietaryProperties;
    'pricePerServing'?: number;
    'times'?: RetrieveRecipeInformationAPI200ResponseTimes;
    'nutrition'?: RetrieveRecipeInformationAPI200ResponseNutrition;
    'taste'?: RetrieveRecipeInformationAPI200ResponseTaste;
    'cuisines'?: Array<string>;
    'mealTypes'?: Array<string>;
    'occasions'?: Array<string>;
    'ingredients'?: Array<RetrieveRecipeInformationAPI200ResponseIngredientsInner>;
    'instructions'?: Array<RetrieveRecipeInformationAPI200ResponseInstructionsInner>;
    'credits'?: RetrieveRecipeInformationAPI200ResponseCredits;
    'scores'?: RetrieveRecipeInformationAPI200ResponseScores;

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
            "type": "RetrieveRecipeInformationAPI200ResponseDietaryProperties",
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
            "type": "RetrieveRecipeInformationAPI200ResponseTimes",
            "format": ""
        },
        {
            "name": "nutrition",
            "baseName": "nutrition",
            "type": "RetrieveRecipeInformationAPI200ResponseNutrition",
            "format": ""
        },
        {
            "name": "taste",
            "baseName": "taste",
            "type": "RetrieveRecipeInformationAPI200ResponseTaste",
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
            "type": "Array<RetrieveRecipeInformationAPI200ResponseIngredientsInner>",
            "format": ""
        },
        {
            "name": "instructions",
            "baseName": "instructions",
            "type": "Array<RetrieveRecipeInformationAPI200ResponseInstructionsInner>",
            "format": ""
        },
        {
            "name": "credits",
            "baseName": "credits",
            "type": "RetrieveRecipeInformationAPI200ResponseCredits",
            "format": ""
        },
        {
            "name": "scores",
            "baseName": "scores",
            "type": "RetrieveRecipeInformationAPI200ResponseScores",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformationAPI200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

