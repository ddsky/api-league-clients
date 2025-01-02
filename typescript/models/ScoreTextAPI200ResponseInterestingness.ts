/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ScoreTextAPI200ResponseInterestingnessSubscores } from '../models/ScoreTextAPI200ResponseInterestingnessSubscores';
import { ScoreTextAPI200ResponseSkimmabilityMainscores } from '../models/ScoreTextAPI200ResponseSkimmabilityMainscores';
import { HttpFile } from '../http/http';

export class ScoreTextAPI200ResponseInterestingness {
    'mainscores'?: ScoreTextAPI200ResponseSkimmabilityMainscores;
    'subscores'?: ScoreTextAPI200ResponseInterestingnessSubscores;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "mainscores",
            "baseName": "mainscores",
            "type": "ScoreTextAPI200ResponseSkimmabilityMainscores",
            "format": ""
        },
        {
            "name": "subscores",
            "baseName": "subscores",
            "type": "ScoreTextAPI200ResponseInterestingnessSubscores",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreTextAPI200ResponseInterestingness.attributeTypeMap;
    }

    public constructor() {
    }
}
