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

export class ExtractNews200Response {
    'title'?: string | null;
    'text'?: string | null;
    'url'?: string | null;
    'image'?: string | null;
    'publishDate'?: string | null;
    'author'?: string | null;
    'language'?: string | null;
    'sourceCountry'?: string | null;
    'sentiment'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "title",
            "baseName": "title",
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
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        },
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "publishDate",
            "baseName": "publish_date",
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
            "name": "language",
            "baseName": "language",
            "type": "string",
            "format": ""
        },
        {
            "name": "sourceCountry",
            "baseName": "source_country",
            "type": "string",
            "format": ""
        },
        {
            "name": "sentiment",
            "baseName": "sentiment",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractNews200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

