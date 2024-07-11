/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchRecipes200Response {
    #[serde(rename = "offset", skip_serializing_if = "Option::is_none")]
    pub offset: Option<i32>,
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "recipes", skip_serializing_if = "Option::is_none")]
    pub recipes: Option<Vec<models::SearchRecipes200ResponseRecipesInner>>,
    #[serde(rename = "total_results", skip_serializing_if = "Option::is_none")]
    pub total_results: Option<i32>,
}

impl SearchRecipes200Response {
    pub fn new() -> SearchRecipes200Response {
        SearchRecipes200Response {
            offset: None,
            number: None,
            recipes: None,
            total_results: None,
        }
    }
}

