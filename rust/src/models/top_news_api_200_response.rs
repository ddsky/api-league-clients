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
pub struct TopNewsApi200Response {
    #[serde(rename = "top_news", skip_serializing_if = "Option::is_none")]
    pub top_news: Option<Vec<models::TopNewsApi200ResponseTopNewsInner>>,
    #[serde(rename = "language", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub language: Option<Option<String>>,
    #[serde(rename = "country", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub country: Option<Option<String>>,
}

impl TopNewsApi200Response {
    pub fn new() -> TopNewsApi200Response {
        TopNewsApi200Response {
            top_news: None,
            language: None,
            country: None,
        }
    }
}
