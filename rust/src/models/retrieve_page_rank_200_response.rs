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
pub struct RetrievePageRank200Response {
    #[serde(rename = "page_rank", skip_serializing_if = "Option::is_none")]
    pub page_rank: Option<f64>,
    #[serde(rename = "position", skip_serializing_if = "Option::is_none")]
    pub position: Option<i32>,
    #[serde(rename = "percentile", skip_serializing_if = "Option::is_none")]
    pub percentile: Option<f64>,
}

impl RetrievePageRank200Response {
    pub fn new() -> RetrievePageRank200Response {
        RetrievePageRank200Response {
            page_rank: None,
            position: None,
            percentile: None,
        }
    }
}

