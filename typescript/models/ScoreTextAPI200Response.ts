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

import { ScoreTextAPI200ResponseInterestingness } from '../models/ScoreTextAPI200ResponseInterestingness';
import { ScoreTextAPI200ResponseReadability } from '../models/ScoreTextAPI200ResponseReadability';
import { ScoreTextAPI200ResponseSkimmability } from '../models/ScoreTextAPI200ResponseSkimmability';
import { ScoreTextAPI200ResponseStyle } from '../models/ScoreTextAPI200ResponseStyle';
import { HttpFile } from '../http/http';

export class ScoreTextAPI200Response {
    'numberOfWords'?: number;
    'numberOfSentences'?: number;
    'readability'?: ScoreTextAPI200ResponseReadability;
    'skimmability'?: ScoreTextAPI200ResponseSkimmability;
    'interestingness'?: ScoreTextAPI200ResponseInterestingness;
    'style'?: ScoreTextAPI200ResponseStyle;
    'totalScore'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "numberOfWords",
            "baseName": "number_of_words",
            "type": "number",
            "format": ""
        },
        {
            "name": "numberOfSentences",
            "baseName": "number_of_sentences",
            "type": "number",
            "format": ""
        },
        {
            "name": "readability",
            "baseName": "readability",
            "type": "ScoreTextAPI200ResponseReadability",
            "format": ""
        },
        {
            "name": "skimmability",
            "baseName": "skimmability",
            "type": "ScoreTextAPI200ResponseSkimmability",
            "format": ""
        },
        {
            "name": "interestingness",
            "baseName": "interestingness",
            "type": "ScoreTextAPI200ResponseInterestingness",
            "format": ""
        },
        {
            "name": "style",
            "baseName": "style",
            "type": "ScoreTextAPI200ResponseStyle",
            "format": ""
        },
        {
            "name": "totalScore",
            "baseName": "total_score",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreTextAPI200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

