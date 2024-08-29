/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class ScoreText200ResponseSkimmabilitySubscores {
    'bulletPointRatioScore'?: Array<number>;
    'imageScore'?: Array<number>;
    'highlightedWordRatioScore'?: Array<number>;
    'videoScore'?: Array<number>;
    'paragraphScore'?: Array<number>;
    'paragraphHeadlineRatioScore'?: Array<number>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "bulletPointRatioScore",
            "baseName": "bullet_point_ratio_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "imageScore",
            "baseName": "image_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "highlightedWordRatioScore",
            "baseName": "highlighted_word_ratio_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "videoScore",
            "baseName": "video_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "paragraphScore",
            "baseName": "paragraph_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "paragraphHeadlineRatioScore",
            "baseName": "paragraph_headline_ratio_score",
            "type": "Array<number>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreText200ResponseSkimmabilitySubscores.attributeTypeMap;
    }

    public constructor() {
    }
}

