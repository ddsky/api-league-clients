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

import { HttpFile } from '../http/http';

export class ScoreTextAPI200ResponseInterestingnessSubscores {
    'titleRatingScore'?: Array<number>;
    'quoteScore'?: Array<number>;
    'lengthScore'?: Array<number>;
    'linkScore'?: Array<number>;
    'googleHitsScore'?: Array<number>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "titleRatingScore",
            "baseName": "title_rating_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "quoteScore",
            "baseName": "quote_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "lengthScore",
            "baseName": "length_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "linkScore",
            "baseName": "link_score",
            "type": "Array<number>",
            "format": ""
        },
        {
            "name": "googleHitsScore",
            "baseName": "google_hits_score",
            "type": "Array<number>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreTextAPI200ResponseInterestingnessSubscores.attributeTypeMap;
    }

    public constructor() {
    }
}

