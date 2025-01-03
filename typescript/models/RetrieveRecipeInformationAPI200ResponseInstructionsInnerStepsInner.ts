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

import { SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner {
    'number'?: number;
    'ingredients'?: Array<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>;
    'equipment'?: Array<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>;
    'step'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "number",
            "baseName": "number",
            "type": "number",
            "format": ""
        },
        {
            "name": "ingredients",
            "baseName": "ingredients",
            "type": "Array<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>",
            "format": ""
        },
        {
            "name": "equipment",
            "baseName": "equipment",
            "type": "Array<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>",
            "format": ""
        },
        {
            "name": "step",
            "baseName": "step",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

