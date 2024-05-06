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

import { HttpFile } from '../http/http';

export class GenerateNonsenseWord200Response {
    'word'?: string | null;
    'rating'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "word",
            "baseName": "word",
            "type": "string",
            "format": ""
        },
        {
            "name": "rating",
            "baseName": "rating",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return GenerateNonsenseWord200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

