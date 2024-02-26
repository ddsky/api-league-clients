/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class InlineResponse2009 {
    'trivia'?: string;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "trivia",
            "baseName": "trivia",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return InlineResponse2009.attributeTypeMap;
    }

    public constructor() {
    }
}

