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

import { HttpFile } from '../http/http';

export class DetectSentiment200ResponseDocument {
    'sentiment'?: string | null;
    'confidence'?: number;
    'averageConfidence'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "sentiment",
            "baseName": "sentiment",
            "type": "string",
            "format": ""
        },
        {
            "name": "confidence",
            "baseName": "confidence",
            "type": "number",
            "format": ""
        },
        {
            "name": "averageConfidence",
            "baseName": "average_confidence",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return DetectSentiment200ResponseDocument.attributeTypeMap;
    }

    public constructor() {
    }
}

