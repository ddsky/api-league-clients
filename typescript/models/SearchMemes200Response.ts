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

import { SearchMemes200ResponseMemesInner } from '../models/SearchMemes200ResponseMemesInner';
import { HttpFile } from '../http/http';

export class SearchMemes200Response {
    'memes'?: Array<SearchMemes200ResponseMemesInner>;
    'available'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "memes",
            "baseName": "memes",
            "type": "Array<SearchMemes200ResponseMemesInner>",
            "format": ""
        },
        {
            "name": "available",
            "baseName": "available",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchMemes200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

