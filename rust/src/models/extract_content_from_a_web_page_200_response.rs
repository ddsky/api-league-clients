/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractContentFromAWebPage200Response {
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "main_text", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub main_text: Option<Option<String>>,
    #[serde(rename = "main_html", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub main_html: Option<Option<String>>,
    #[serde(rename = "images", skip_serializing_if = "Option::is_none")]
    pub images: Option<Vec<String>>,
}

impl ExtractContentFromAWebPage200Response {
    pub fn new() -> ExtractContentFromAWebPage200Response {
        ExtractContentFromAWebPage200Response {
            title: None,
            main_text: None,
            main_html: None,
            images: None,
        }
    }
}

