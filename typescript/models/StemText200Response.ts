/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class StemText200Response {
    'original'?: string | null;
    'stemmed'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "original",
            "baseName": "original",
            "type": "string",
            "format": ""
        },
        {
            "name": "stemmed",
            "baseName": "stemmed",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return StemText200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

