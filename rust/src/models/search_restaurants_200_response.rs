/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchRestaurants200Response {
    #[serde(rename = "restaurants", skip_serializing_if = "Option::is_none")]
    pub restaurants: Option<Vec<models::SearchRestaurants200ResponseRestaurantsInner>>,
}

impl SearchRestaurants200Response {
    pub fn new() -> SearchRestaurants200Response {
        SearchRestaurants200Response {
            restaurants: None,
        }
    }
}

