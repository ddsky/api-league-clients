/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractNews200ResponseImagesInner {
    #[serde(rename = "width", skip_serializing_if = "Option::is_none")]
    pub width: Option<i32>,
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "url", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub url: Option<Option<String>>,
    #[serde(rename = "height", skip_serializing_if = "Option::is_none")]
    pub height: Option<i32>,
}

impl ExtractNews200ResponseImagesInner {
    pub fn new() -> ExtractNews200ResponseImagesInner {
        ExtractNews200ResponseImagesInner {
            width: None,
            title: None,
            url: None,
            height: None,
        }
    }
}

