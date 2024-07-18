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

import { ExtractAuthors200ResponseAuthorsInner } from '../models/ExtractAuthors200ResponseAuthorsInner';
import { HttpFile } from '../http/http';

export class ExtractAuthors200Response {
    'authors'?: Array<ExtractAuthors200ResponseAuthorsInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "authors",
            "baseName": "authors",
            "type": "Array<ExtractAuthors200ResponseAuthorsInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractAuthors200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

