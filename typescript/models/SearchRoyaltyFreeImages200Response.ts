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

import { SearchRoyaltyFreeImages200ResponseImagesInner } from '../models/SearchRoyaltyFreeImages200ResponseImagesInner';
import { HttpFile } from '../http/http';

export class SearchRoyaltyFreeImages200Response {
    'images'?: Array<SearchRoyaltyFreeImages200ResponseImagesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "images",
            "baseName": "images",
            "type": "Array<SearchRoyaltyFreeImages200ResponseImagesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRoyaltyFreeImages200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

