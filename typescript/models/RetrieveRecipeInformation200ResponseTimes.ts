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

import { HttpFile } from '../http/http';

export class RetrieveRecipeInformation200ResponseTimes {
    'totalMinutes'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "totalMinutes",
            "baseName": "total_minutes",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseTimes.attributeTypeMap;
    }

    public constructor() {
    }
}

