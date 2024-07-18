/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ScoreText200ResponseInterestingnessSubscores } from '../models/ScoreText200ResponseInterestingnessSubscores';
import { ScoreText200ResponseSkimmabilityMainscores } from '../models/ScoreText200ResponseSkimmabilityMainscores';
import { HttpFile } from '../http/http';

export class ScoreText200ResponseInterestingness {
    'mainscores'?: ScoreText200ResponseSkimmabilityMainscores;
    'subscores'?: ScoreText200ResponseInterestingnessSubscores;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "mainscores",
            "baseName": "mainscores",
            "type": "ScoreText200ResponseSkimmabilityMainscores",
            "format": ""
        },
        {
            "name": "subscores",
            "baseName": "subscores",
            "type": "ScoreText200ResponseInterestingnessSubscores",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreText200ResponseInterestingness.attributeTypeMap;
    }

    public constructor() {
    }
}

