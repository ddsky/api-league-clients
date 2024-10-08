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

export class ScoreText200ResponseStyleSubscores {
    'abbreviationScore'?: Array<number>;
    'styleScore'?: Array<number>;
    'spellingScore'?: Array<number>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "abbreviationScore",
            "baseName": "abbreviation_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "styleScore",
            "baseName": "style_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "spellingScore",
            "baseName": "spelling_score",
            "type": "Array<number>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreText200ResponseStyleSubscores.attributeTypeMap;
    }

    public constructor() {
    }
}

