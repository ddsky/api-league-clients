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
pub struct ListWordSynonymsApi200Response {
    #[serde(rename = "synonyms", skip_serializing_if = "Option::is_none")]
    pub synonyms: Option<Vec<String>>,
}

impl ListWordSynonymsApi200Response {
    pub fn new() -> ListWordSynonymsApi200Response {
        ListWordSynonymsApi200Response {
            synonyms: None,
        }
    }
}

