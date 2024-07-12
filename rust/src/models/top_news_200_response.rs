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
pub struct TopNews200Response {
    #[serde(rename = "top_news", skip_serializing_if = "Option::is_none")]
    pub top_news: Option<Vec<models::TopNews200ResponseTopNewsInner>>,
    #[serde(rename = "language", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub language: Option<Option<String>>,
    #[serde(rename = "country", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub country: Option<Option<String>>,
}

impl TopNews200Response {
    pub fn new() -> TopNews200Response {
        TopNews200Response {
            top_news: None,
            language: None,
            country: None,
        }
    }
}

