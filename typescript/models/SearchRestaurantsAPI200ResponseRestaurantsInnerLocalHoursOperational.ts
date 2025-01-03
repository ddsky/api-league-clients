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

export class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational {
    'sunday'?: string | null;
    'saturday'?: string | null;
    'tuesday'?: string | null;
    'thursday'?: string | null;
    'friday'?: string | null;
    'wednesday'?: string | null;
    'monday'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "sunday",
            "baseName": "sunday",
            "type": "string",
            "format": ""
        },
        {
            "name": "saturday",
            "baseName": "saturday",
            "type": "string",
            "format": ""
        },
        {
            "name": "tuesday",
            "baseName": "tuesday",
            "type": "string",
            "format": ""
        },
        {
            "name": "thursday",
            "baseName": "thursday",
            "type": "string",
            "format": ""
        },
        {
            "name": "friday",
            "baseName": "friday",
            "type": "string",
            "format": ""
        },
        {
            "name": "wednesday",
            "baseName": "wednesday",
            "type": "string",
            "format": ""
        },
        {
            "name": "monday",
            "baseName": "monday",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.attributeTypeMap;
    }

    public constructor() {
    }
}

