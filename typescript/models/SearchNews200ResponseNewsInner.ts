/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class SearchNews200ResponseNewsInner {
    'summary'?: string | null;
    'image'?: string | null;
    'sentiment'?: number;
    'sourceCountry'?: string | null;
    'language'?: string | null;
    'id'?: number;
    'text'?: string | null;
    'video'?: string | null;
    'title'?: string | null;
    'publishDate'?: string | null;
    'url'?: string | null;
    'authors'?: Array<string>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "summary",
            "baseName": "summary",
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
            "name": "sentiment",
            "baseName": "sentiment",
            "type": "number",
            "format": ""
        },
        {
            "name": "sourceCountry",
            "baseName": "source_country",
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
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "text",
            "baseName": "text",
            "type": "string",
            "format": ""
        },
        {
            "name": "video",
            "baseName": "video",
            "type": "string",
            "format": ""
        },
        {
            "name": "title",
            "baseName": "title",
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
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        },
        {
            "name": "authors",
            "baseName": "authors",
            "type": "Array<string>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchNews200ResponseNewsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

