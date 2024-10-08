/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractAuthors200Response {
    #[serde(rename = "authors", skip_serializing_if = "Option::is_none")]
    pub authors: Option<Vec<models::ExtractAuthors200ResponseAuthorsInner>>,
}

impl ExtractAuthors200Response {
    pub fn new() -> ExtractAuthors200Response {
        ExtractAuthors200Response {
            authors: None,
        }
    }
}

