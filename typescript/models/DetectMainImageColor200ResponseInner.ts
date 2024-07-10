/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class DetectMainImageColor200ResponseInner {
    'specificColor'?: string | null;
    'mainColor'?: string | null;
    'hexCode'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "specificColor",
            "baseName": "specific_color",
            "type": "string",
            "format": ""
        },
        {
            "name": "mainColor",
            "baseName": "main_color",
            "type": "string",
            "format": ""
        },
        {
            "name": "hexCode",
            "baseName": "hex_code",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return DetectMainImageColor200ResponseInner.attributeTypeMap;
    }

    public constructor() {
    }
}

