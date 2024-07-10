/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner } from '../models/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner';
import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseInstructionsInner {
    'name'?: string | null;
    'steps'?: Array<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "steps",
            "baseName": "steps",
            "type": "Array<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseInstructionsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

