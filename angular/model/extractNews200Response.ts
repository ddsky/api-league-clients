/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ExtractNews200ResponseVideosInner } from './extractNews200ResponseVideosInner';
import { ExtractNews200ResponseImagesInner } from './extractNews200ResponseImagesInner';


export interface ExtractNews200Response { 
    title?: string | null;
    text?: string | null;
    url?: string | null;
    images?: Array<ExtractNews200ResponseImagesInner>;
    videos?: Array<ExtractNews200ResponseVideosInner>;
    publish_date?: string | null;
    authors?: Array<string>;
    language?: string | null;
}

