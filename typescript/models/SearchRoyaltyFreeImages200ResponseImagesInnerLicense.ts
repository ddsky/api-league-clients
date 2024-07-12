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

export class SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
    'name'?: string | null;
    'link'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "link",
            "baseName": "link",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRoyaltyFreeImages200ResponseImagesInnerLicense.attributeTypeMap;
    }

    public constructor() {
    }
}

