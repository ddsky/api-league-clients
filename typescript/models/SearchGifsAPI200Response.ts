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

import { SearchGifsAPI200ResponseImagesInner } from '../models/SearchGifsAPI200ResponseImagesInner';
import { HttpFile } from '../http/http';

export class SearchGifsAPI200Response {
    'images'?: Array<SearchGifsAPI200ResponseImagesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "images",
            "baseName": "images",
            "type": "Array<SearchGifsAPI200ResponseImagesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchGifsAPI200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

