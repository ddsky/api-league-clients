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
pub struct ExtractAuthorsApi200Response {
    #[serde(rename = "authors", skip_serializing_if = "Option::is_none")]
    pub authors: Option<Vec<models::ExtractAuthorsApi200ResponseAuthorsInner>>,
}

impl ExtractAuthorsApi200Response {
    pub fn new() -> ExtractAuthorsApi200Response {
        ExtractAuthorsApi200Response {
            authors: None,
        }
    }
}
