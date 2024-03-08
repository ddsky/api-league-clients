/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class RandomMeme200Response {
    'description'?: string | null;
    'url'?: string | null;
    'type'?: string | null;
    'width'?: number;
    'height'?: number;
    'ratio'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "description",
            "baseName": "description",
            "type": "string",
            "format": ""
        },
        {
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "string",
            "format": ""
        },
        {
            "name": "width",
            "baseName": "width",
            "type": "number",
            "format": ""
        },
        {
            "name": "height",
            "baseName": "height",
            "type": "number",
            "format": ""
        },
        {
            "name": "ratio",
            "baseName": "ratio",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RandomMeme200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

