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

export class RandomPoem200Response {
    'title'?: string | null;
    'author'?: string | null;
    'poem'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        },
        {
            "name": "author",
            "baseName": "author",
            "type": "string",
            "format": ""
        },
        {
            "name": "poem",
            "baseName": "poem",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RandomPoem200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

