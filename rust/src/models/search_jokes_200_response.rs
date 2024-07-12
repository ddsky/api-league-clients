/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchJokes200Response {
    #[serde(rename = "jokes", skip_serializing_if = "Option::is_none")]
    pub jokes: Option<Vec<models::SearchJokes200ResponseJokesInner>>,
    #[serde(rename = "available", skip_serializing_if = "Option::is_none")]
    pub available: Option<i32>,
}

impl SearchJokes200Response {
    pub fn new() -> SearchJokes200Response {
        SearchJokes200Response {
            jokes: None,
            available: None,
        }
    }
}

