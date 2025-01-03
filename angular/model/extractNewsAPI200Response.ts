/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ExtractNewsAPI200ResponseVideosInner } from './extractNewsAPI200ResponseVideosInner';
import { ExtractNewsAPI200ResponseImagesInner } from './extractNewsAPI200ResponseImagesInner';


export interface ExtractNewsAPI200Response { 
    title?: string | null;
    text?: string | null;
    url?: string | null;
    images?: Array<ExtractNewsAPI200ResponseImagesInner>;
    videos?: Array<ExtractNewsAPI200ResponseVideosInner>;
    publish_date?: string | null;
    authors?: Array<string>;
    language?: string | null;
}

