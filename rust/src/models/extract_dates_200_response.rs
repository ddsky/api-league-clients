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
pub struct ExtractDates200Response {
    #[serde(rename = "dates", skip_serializing_if = "Option::is_none")]
    pub dates: Option<Vec<models::ExtractDates200ResponseDatesInner>>,
}

impl ExtractDates200Response {
    pub fn new() -> ExtractDates200Response {
        ExtractDates200Response {
            dates: None,
        }
    }
}

