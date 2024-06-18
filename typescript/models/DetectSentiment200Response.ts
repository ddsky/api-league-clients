/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { DetectSentiment200ResponseDocument } from '../models/DetectSentiment200ResponseDocument';
import { DetectSentiment200ResponseSentencesInner } from '../models/DetectSentiment200ResponseSentencesInner';
import { HttpFile } from '../http/http';

export class DetectSentiment200Response {
    'document'?: DetectSentiment200ResponseDocument;
    'sentences'?: Array<DetectSentiment200ResponseSentencesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "document",
            "baseName": "document",
            "type": "DetectSentiment200ResponseDocument",
            "format": ""
        },
        {
            "name": "sentences",
            "baseName": "sentences",
            "type": "Array<DetectSentiment200ResponseSentencesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return DetectSentiment200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

