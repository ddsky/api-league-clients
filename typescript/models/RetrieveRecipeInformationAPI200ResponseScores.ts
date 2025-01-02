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

export class RetrieveRecipeInformationAPI200ResponseScores {
    'metaScore'?: number;
    'weightWatcherSmartPoints'?: number;
    'healthScore'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "metaScore",
            "baseName": "meta_score",
            "type": "number",
            "format": ""
        },
        {
            "name": "weightWatcherSmartPoints",
            "baseName": "weight_watcher_smart_points",
            "type": "number",
            "format": ""
        },
        {
            "name": "healthScore",
            "baseName": "health_score",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RetrieveRecipeInformationAPI200ResponseScores.attributeTypeMap;
    }

    public constructor() {
    }
}
