/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { SearchRestaurants200ResponseRestaurantsInner } from '../models/SearchRestaurants200ResponseRestaurantsInner';
import { HttpFile } from '../http/http';

export class SearchRestaurants200Response {
    'restaurants'?: Array<SearchRestaurants200ResponseRestaurantsInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "restaurants",
            "baseName": "restaurants",
            "type": "Array<SearchRestaurants200ResponseRestaurantsInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRestaurants200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

