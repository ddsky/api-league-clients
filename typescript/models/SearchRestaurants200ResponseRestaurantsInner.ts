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

import { SearchRestaurants200ResponseRestaurantsInnerAddress } from '../models/SearchRestaurants200ResponseRestaurantsInnerAddress';
import { SearchRestaurants200ResponseRestaurantsInnerLocalHours } from '../models/SearchRestaurants200ResponseRestaurantsInnerLocalHours';
import { HttpFile } from '../http/http';

export class SearchRestaurants200ResponseRestaurantsInner {
    'offersThirdPartyDelivery'?: boolean;
    'address'?: SearchRestaurants200ResponseRestaurantsInnerAddress;
    'supportsUpcCodes'?: boolean;
    'isOpen'?: boolean;
    'description'?: string | null;
    'weightedRatingValue'?: number;
    'type'?: string | null;
    'offersFirstPartyDelivery'?: boolean;
    'aggregatedRatingCount'?: number;
    'pickupEnabled'?: boolean;
    'cuisines'?: Array<string>;
    'miles'?: number;
    'dollarSigns'?: number;
    'deliveryEnabled'?: boolean;
    'name'?: string | null;
    'phoneNumber'?: number;
    'id'?: string | null;
    'localHours'?: SearchRestaurants200ResponseRestaurantsInnerLocalHours;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "offersThirdPartyDelivery",
            "baseName": "offers_third_party_delivery",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "address",
            "baseName": "address",
            "type": "SearchRestaurants200ResponseRestaurantsInnerAddress",
            "format": ""
        },
        {
            "name": "supportsUpcCodes",
            "baseName": "supports_upc_codes",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "isOpen",
            "baseName": "is_open",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "description",
            "baseName": "description",
            "type": "string",
            "format": ""
        },
        {
            "name": "weightedRatingValue",
            "baseName": "weighted_rating_value",
            "type": "number",
            "format": ""
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "string",
            "format": ""
        },
        {
            "name": "offersFirstPartyDelivery",
            "baseName": "offers_first_party_delivery",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "aggregatedRatingCount",
            "baseName": "aggregated_rating_count",
            "type": "number",
            "format": ""
        },
        {
            "name": "pickupEnabled",
            "baseName": "pickup_enabled",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "cuisines",
            "baseName": "cuisines",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "miles",
            "baseName": "miles",
            "type": "number",
            "format": ""
        },
        {
            "name": "dollarSigns",
            "baseName": "dollar_signs",
            "type": "number",
            "format": ""
        },
        {
            "name": "deliveryEnabled",
            "baseName": "delivery_enabled",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "phoneNumber",
            "baseName": "phone_number",
            "type": "number",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "_id",
            "type": "string",
            "format": ""
        },
        {
            "name": "localHours",
            "baseName": "local_hours",
            "type": "SearchRestaurants200ResponseRestaurantsInnerLocalHours",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchRestaurants200ResponseRestaurantsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

