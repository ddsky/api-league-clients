/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { TopNews200ResponseTopNewsInner } from '../models/TopNews200ResponseTopNewsInner';
import { HttpFile } from '../http/http';

export class TopNews200Response {
    'topNews'?: Array<TopNews200ResponseTopNewsInner>;
    'language'?: string | null;
    'country'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "topNews",
            "baseName": "top_news",
            "type": "Array<TopNews200ResponseTopNewsInner>",
            "format": ""
        },
        {
            "name": "language",
            "baseName": "language",
            "type": "string",
            "format": ""
        },
        {
            "name": "country",
            "baseName": "country",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return TopNews200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

