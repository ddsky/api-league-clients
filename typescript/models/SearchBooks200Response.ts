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

import { SearchBooks200ResponseBooksInnerInner } from '../models/SearchBooks200ResponseBooksInnerInner';
import { HttpFile } from '../http/http';

export class SearchBooks200Response {
    'totalResults'?: number;
    'number'?: number;
    'offset'?: number;
    'books'?: Array<Array<SearchBooks200ResponseBooksInnerInner>>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "totalResults",
            "baseName": "total_results",
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
            "name": "offset",
            "baseName": "offset",
            "type": "number",
            "format": ""
        },
        {
            "name": "books",
            "baseName": "books",
            "type": "Array<Array<SearchBooks200ResponseBooksInnerInner>>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchBooks200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

