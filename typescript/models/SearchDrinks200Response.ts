/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { SearchDrinks200ResponseDrinksInner } from '../models/SearchDrinks200ResponseDrinksInner';
import { HttpFile } from '../http/http';

export class SearchDrinks200Response {
    'offset'?: number;
    'number'?: number;
    'drinks'?: Array<SearchDrinks200ResponseDrinksInner>;
    'totalResults'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "offset",
            "baseName": "offset",
            "type": "number",
            "format": ""
        },
        {
            "name": "number",
            "baseName": "number",
            "type": "number",
            "format": ""
        },
        {
            "name": "drinks",
            "baseName": "drinks",
            "type": "Array<SearchDrinks200ResponseDrinksInner>",
            "format": ""
        },
        {
            "name": "totalResults",
            "baseName": "total_results",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchDrinks200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

