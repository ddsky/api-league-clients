/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchRestaurants200ResponseRestaurantsInnerLocalHours {
    #[serde(rename = "operational", skip_serializing_if = "Option::is_none")]
    pub operational: Option<Box<models::SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>,
    #[serde(rename = "delivery", skip_serializing_if = "Option::is_none")]
    pub delivery: Option<Box<models::SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>,
    #[serde(rename = "pickup", skip_serializing_if = "Option::is_none")]
    pub pickup: Option<Box<models::SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>,
    #[serde(rename = "dine_in", skip_serializing_if = "Option::is_none")]
    pub dine_in: Option<Box<models::SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>,
}

impl SearchRestaurants200ResponseRestaurantsInnerLocalHours {
    pub fn new() -> SearchRestaurants200ResponseRestaurantsInnerLocalHours {
        SearchRestaurants200ResponseRestaurantsInnerLocalHours {
            operational: None,
            delivery: None,
            pickup: None,
            dine_in: None,
        }
    }
}

