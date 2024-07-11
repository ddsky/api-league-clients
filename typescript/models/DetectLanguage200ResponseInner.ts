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

export class DetectLanguage200ResponseInner {
    'language'?: string | null;
    'confidence'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "language",
            "baseName": "language",
            "type": "string",
            "format": ""
        },
        {
            "name": "confidence",
            "baseName": "confidence",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return DetectLanguage200ResponseInner.attributeTypeMap;
    }

    public constructor() {
    }
}

