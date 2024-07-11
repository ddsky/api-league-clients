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

export class DetectSentiment200ResponseSentencesInner {
    'length'?: number;
    'sentiment'?: string | null;
    'offset'?: number;
    'confidence'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "length",
            "baseName": "length",
            "type": "number",
            "format": ""
        },
        {
            "name": "sentiment",
            "baseName": "sentiment",
            "type": "string",
            "format": ""
        },
        {
            "name": "offset",
            "baseName": "offset",
            "type": "number",
            "format": ""
        },
        {
            "name": "confidence",
            "baseName": "confidence",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return DetectSentiment200ResponseSentencesInner.attributeTypeMap;
    }

    public constructor() {
    }
}

