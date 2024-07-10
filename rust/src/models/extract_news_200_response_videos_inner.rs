/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractNews200ResponseVideosInner {
    #[serde(rename = "summary", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub summary: Option<Option<String>>,
    #[serde(rename = "duration", skip_serializing_if = "Option::is_none")]
    pub duration: Option<i32>,
    #[serde(rename = "thumbnail", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub thumbnail: Option<Option<String>>,
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub url: Option<Option<String>>,
}

impl ExtractNews200ResponseVideosInner {
    pub fn new() -> ExtractNews200ResponseVideosInner {
        ExtractNews200ResponseVideosInner {
            summary: None,
            duration: None,
            thumbnail: None,
            title: None,
            url: None,
        }
    }
}

