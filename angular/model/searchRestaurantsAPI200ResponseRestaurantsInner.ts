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
import { SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours } from './searchRestaurantsAPI200ResponseRestaurantsInnerLocalHours';
import { SearchRestaurantsAPI200ResponseRestaurantsInnerAddress } from './searchRestaurantsAPI200ResponseRestaurantsInnerAddress';


export interface SearchRestaurantsAPI200ResponseRestaurantsInner { 
    offers_third_party_delivery?: boolean;
    address?: SearchRestaurantsAPI200ResponseRestaurantsInnerAddress;
    supports_upc_codes?: boolean;
    is_open?: boolean;
    description?: string | null;
    weighted_rating_value?: number;
    type?: string | null;
    offers_first_party_delivery?: boolean;
    aggregated_rating_count?: number;
    pickup_enabled?: boolean;
    cuisines?: Array<string>;
    miles?: number;
    dollar_signs?: number;
    delivery_enabled?: boolean;
    name?: string | null;
    phone_number?: number;
    _id?: string | null;
    local_hours?: SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours;
}

