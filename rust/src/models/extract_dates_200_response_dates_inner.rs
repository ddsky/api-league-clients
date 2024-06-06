/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ExtractDates200ResponseDatesInner {
    #[serde(rename = "start_position", skip_serializing_if = "Option::is_none")]
    pub start_position: Option<i32>,
    #[serde(rename = "date", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub date: Option<Option<String>>,
    #[serde(rename = "normalized_date", skip_serializing_if = "Option::is_none")]
    pub normalized_date: Option<f64>,
    #[serde(rename = "tag", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub tag: Option<Option<String>>,
    #[serde(rename = "end_position", skip_serializing_if = "Option::is_none")]
    pub end_position: Option<i32>,
}

impl ExtractDates200ResponseDatesInner {
    pub fn new() -> ExtractDates200ResponseDatesInner {
        ExtractDates200ResponseDatesInner {
            start_position: None,
            date: None,
            normalized_date: None,
            tag: None,
            end_position: None,
        }
    }
}

