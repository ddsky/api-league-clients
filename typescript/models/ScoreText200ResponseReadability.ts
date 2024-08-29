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

import { ScoreText200ResponseReadabilityMainscores } from '../models/ScoreText200ResponseReadabilityMainscores';
import { ScoreText200ResponseReadabilitySubscores } from '../models/ScoreText200ResponseReadabilitySubscores';
import { HttpFile } from '../http/http';

export class ScoreText200ResponseReadability {
    'mainscores'?: ScoreText200ResponseReadabilityMainscores;
    'subscores'?: ScoreText200ResponseReadabilitySubscores;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "mainscores",
            "baseName": "mainscores",
            "type": "ScoreText200ResponseReadabilityMainscores",
            "format": ""
        },
        {
            "name": "subscores",
            "baseName": "subscores",
            "type": "ScoreText200ResponseReadabilitySubscores",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreText200ResponseReadability.attributeTypeMap;
    }

    public constructor() {
    }
}

