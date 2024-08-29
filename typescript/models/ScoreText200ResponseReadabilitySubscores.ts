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

export class ScoreText200ResponseReadabilitySubscores {
    'readingTimeSeconds'?: number;
    'forcast'?: number;
    'flesch'?: number;
    'smog'?: number;
    'ari'?: number;
    'lix'?: number;
    'colemanLiau'?: number;
    'kincaid'?: number;
    'fog'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "readingTimeSeconds",
            "baseName": "reading_time_seconds",
            "type": "number",
            "format": ""
        },
        {
            "name": "forcast",
            "baseName": "forcast",
            "type": "number",
            "format": ""
        },
        {
            "name": "flesch",
            "baseName": "flesch",
            "type": "number",
            "format": ""
        },
        {
            "name": "smog",
            "baseName": "smog",
            "type": "number",
            "format": ""
        },
        {
            "name": "ari",
            "baseName": "ari",
            "type": "number",
            "format": ""
        },
        {
            "name": "lix",
            "baseName": "lix",
            "type": "number",
            "format": ""
        },
        {
            "name": "colemanLiau",
            "baseName": "coleman_liau",
            "type": "number",
            "format": ""
        },
        {
            "name": "kincaid",
            "baseName": "kincaid",
            "type": "number",
            "format": ""
        },
        {
            "name": "fog",
            "baseName": "fog",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ScoreText200ResponseReadabilitySubscores.attributeTypeMap;
    }

    public constructor() {
    }
}

