/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner } from '../models/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
    'number'?: number;
    'ingredients'?: Array<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>;
    'equipment'?: Array<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>;
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
            "type": "Array<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>",
            "format": ""
        },
        {
            "name": "equipment",
            "baseName": "equipment",
            "type": "Array<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner>",
            "format": ""
        },
        {
            "name": "step",
            "baseName": "step",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

