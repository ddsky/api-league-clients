/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchJokesApi200Response {
    #[serde(rename = "jokes", skip_serializing_if = "Option::is_none")]
    pub jokes: Option<Vec<models::SearchJokesApi200ResponseJokesInner>>,
    #[serde(rename = "available", skip_serializing_if = "Option::is_none")]
    pub available: Option<i32>,
}

impl SearchJokesApi200Response {
    pub fn new() -> SearchJokesApi200Response {
        SearchJokesApi200Response {
            jokes: None,
            available: None,
        }
    }
}

