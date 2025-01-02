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
pub struct RandomQuoteApi200Response {
    #[serde(rename = "author", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub author: Option<Option<String>>,
    #[serde(rename = "quote", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub quote: Option<Option<String>>,
}

impl RandomQuoteApi200Response {
    pub fn new() -> RandomQuoteApi200Response {
        RandomQuoteApi200Response {
            author: None,
            quote: None,
        }
    }
}
