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

export class RetrieveRecipeInformation200ResponseCredits {
    'license'?: string | null;
    'text'?: string | null;
    'sourceName'?: string | null;
    'sourceUrl'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "license",
            "baseName": "license",
            "type": "string",
            "format": ""
        },
        {
            "name": "text",
            "baseName": "text",
            "type": "string",
            "format": ""
        },
        {
            "name": "sourceName",
            "baseName": "source_name",
            "type": "string",
            "format": ""
        },
        {
            "name": "sourceUrl",
            "baseName": "source_url",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformation200ResponseCredits.attributeTypeMap;
    }

    public constructor() {
    }
}

