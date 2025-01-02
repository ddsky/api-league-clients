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
pub struct ExtractEntitiesApi200Response {
    #[serde(rename = "entities", skip_serializing_if = "Option::is_none")]
    pub entities: Option<Vec<models::ExtractEntitiesApi200ResponseEntitiesInner>>,
}

impl ExtractEntitiesApi200Response {
    pub fn new() -> ExtractEntitiesApi200Response {
        ExtractEntitiesApi200Response {
            entities: None,
        }
    }
}

