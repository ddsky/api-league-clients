/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class DetectGenderByName200Response {
    'name'?: string | null;
    'probabilityMale'?: number;
    'probabilityFemale'?: number;
    'popularity'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "probabilityMale",
            "baseName": "probability_male",
            "type": "number",
            "format": ""
        },
        {
            "name": "probabilityFemale",
            "baseName": "probability_female",
            "type": "number",
            "format": ""
        },
        {
            "name": "popularity",
            "baseName": "popularity",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return DetectGenderByName200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

