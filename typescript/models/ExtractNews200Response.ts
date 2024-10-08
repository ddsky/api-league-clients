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

import { ExtractNews200ResponseImagesInner } from '../models/ExtractNews200ResponseImagesInner';
import { ExtractNews200ResponseVideosInner } from '../models/ExtractNews200ResponseVideosInner';
import { HttpFile } from '../http/http';

export class ExtractNews200Response {
    'title'?: string | null;
    'text'?: string | null;
    'url'?: string | null;
    'images'?: Array<ExtractNews200ResponseImagesInner>;
    'videos'?: Array<ExtractNews200ResponseVideosInner>;
    'publishDate'?: string | null;
    'authors'?: Array<string>;
    'language'?: string | null;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        },
        {
            "name": "text",
            "baseName": "text",
            "type": "string",
            "format": ""
        },
        {
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        },
        {
            "name": "images",
            "baseName": "images",
            "type": "Array<ExtractNews200ResponseImagesInner>",
            "format": ""
        },
        {
            "name": "videos",
            "baseName": "videos",
            "type": "Array<ExtractNews200ResponseVideosInner>",
            "format": ""
        },
        {
            "name": "publishDate",
            "baseName": "publish_date",
            "type": "string",
            "format": ""
        },
        {
            "name": "authors",
            "baseName": "authors",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "language",
            "baseName": "language",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ExtractNews200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

