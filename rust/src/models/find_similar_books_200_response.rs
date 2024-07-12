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
pub struct FindSimilarBooks200Response {
    #[serde(rename = "similar_books", skip_serializing_if = "Option::is_none")]
    pub similar_books: Option<Vec<models::SearchBooks200ResponseBooksInnerInner>>,
}

impl FindSimilarBooks200Response {
    pub fn new() -> FindSimilarBooks200Response {
        FindSimilarBooks200Response {
            similar_books: None,
        }
    }
}

