/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational } from '../models/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational';
import { HttpFile } from '../http/http';

export class SearchRestaurants200ResponseRestaurantsInnerLocalHours {
    'operational'?: SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
    'delivery'?: SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
    'pickup'?: SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
    'dineIn'?: SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "operational",
            "baseName": "operational",
            "type": "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational",
            "format": ""
        },
        {
            "name": "delivery",
            "baseName": "delivery",
            "type": "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational",
            "format": ""
        },
        {
            "name": "pickup",
            "baseName": "pickup",
            "type": "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational",
            "format": ""
        },
        {
            "name": "dineIn",
            "baseName": "dine_in",
            "type": "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRestaurants200ResponseRestaurantsInnerLocalHours.attributeTypeMap;
    }

    public constructor() {
    }
}

