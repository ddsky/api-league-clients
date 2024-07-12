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

export class ExtractPublishDate200Response {
    'publishDate'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "publishDate",
            "baseName": "publish_date",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractPublishDate200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

