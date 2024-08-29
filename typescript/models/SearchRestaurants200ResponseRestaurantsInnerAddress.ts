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

export class SearchRestaurants200ResponseRestaurantsInnerAddress {
    'zipcode'?: string | null;
    'country'?: string | null;
    'city'?: string | null;
    'latitude'?: number;
    'lon'?: number;
    'streetAddr2'?: string | null;
    'state'?: string | null;
    'streetAddr'?: string | null;
    'lat'?: number;
    'longitude'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "zipcode",
            "baseName": "zipcode",
            "type": "string",
            "format": ""
        },
        {
            "name": "country",
            "baseName": "country",
            "type": "string",
            "format": ""
        },
        {
            "name": "city",
            "baseName": "city",
            "type": "string",
            "format": ""
        },
        {
            "name": "latitude",
            "baseName": "latitude",
            "type": "number",
            "format": ""
        },
        {
            "name": "lon",
            "baseName": "lon",
            "type": "number",
            "format": ""
        },
        {
            "name": "streetAddr2",
            "baseName": "street_addr_2",
            "type": "string",
            "format": ""
        },
        {
            "name": "state",
            "baseName": "state",
            "type": "string",
            "format": ""
        },
        {
            "name": "streetAddr",
            "baseName": "street_addr",
            "type": "string",
            "format": ""
        },
        {
            "name": "lat",
            "baseName": "lat",
            "type": "number",
            "format": ""
        },
        {
            "name": "longitude",
            "baseName": "longitude",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRestaurants200ResponseRestaurantsInnerAddress.attributeTypeMap;
    }

    public constructor() {
    }
}

