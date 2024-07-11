/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class ExtractContentFromAWebPage200Response {
    'title'?: string | null;
    'mainText'?: string | null;
    'mainHtml'?: string | null;
    'images'?: Array<string>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        },
        {
            "name": "mainText",
            "baseName": "main_text",
            "type": "string",
            "format": ""
        },
        {
            "name": "mainHtml",
            "baseName": "main_html",
            "type": "string",
            "format": ""
        },
        {
            "name": "images",
            "baseName": "images",
            "type": "Array<string>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractContentFromAWebPage200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

