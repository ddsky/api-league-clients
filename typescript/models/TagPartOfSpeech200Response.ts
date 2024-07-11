/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class TagPartOfSpeech200Response {
    'taggedText'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "taggedText",
            "baseName": "tagged_text",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return TagPartOfSpeech200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

