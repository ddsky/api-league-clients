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

import { HttpFile } from '../http/http';

export class SearchDrinksAPI200ResponseDrinksInnerCredits {
    'text'?: string | null;
    'sourceName'?: string | null;
    'sourceUrl'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
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
        return SearchDrinksAPI200ResponseDrinksInnerCredits.attributeTypeMap;
    }

    public constructor() {
    }
}

