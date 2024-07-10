/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ExtractEntities200ResponseEntitiesInner } from '../models/ExtractEntities200ResponseEntitiesInner';
import { HttpFile } from '../http/http';

export class ExtractEntities200Response {
    'entities'?: Array<ExtractEntities200ResponseEntitiesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "entities",
            "baseName": "entities",
            "type": "Array<ExtractEntities200ResponseEntitiesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractEntities200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

