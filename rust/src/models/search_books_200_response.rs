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
pub struct SearchBooks200Response {
    #[serde(rename = "available", skip_serializing_if = "Option::is_none")]
    pub available: Option<i32>,
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "offset", skip_serializing_if = "Option::is_none")]
    pub offset: Option<i32>,
    #[serde(rename = "books", skip_serializing_if = "Option::is_none")]
    pub books: Option<Vec<Vec<models::SearchBooks200ResponseBooksInnerInner>>>,
}

impl SearchBooks200Response {
    pub fn new() -> SearchBooks200Response {
        SearchBooks200Response {
            available: None,
            number: None,
            offset: None,
            books: None,
        }
    }
}

