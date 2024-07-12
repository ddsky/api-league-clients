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

import { ScoreText200ResponseReadability } from '../models/ScoreText200ResponseReadability';
import { HttpFile } from '../http/http';

export class ScoreReadability200Response {
    'readability'?: ScoreText200ResponseReadability;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "readability",
            "baseName": "readability",
            "type": "ScoreText200ResponseReadability",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreReadability200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

