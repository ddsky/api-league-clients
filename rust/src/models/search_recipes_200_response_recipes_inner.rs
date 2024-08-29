/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchRecipes200ResponseRecipesInner {
    #[serde(rename = "images", skip_serializing_if = "Option::is_none")]
    pub images: Option<Vec<String>>,
    #[serde(rename = "nutrition", skip_serializing_if = "Option::is_none")]
    pub nutrition: Option<Box<models::SearchRecipes200ResponseRecipesInnerNutrition>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
}

impl SearchRecipes200ResponseRecipesInner {
    pub fn new() -> SearchRecipes200ResponseRecipesInner {
        SearchRecipes200ResponseRecipesInner {
            images: None,
            nutrition: None,
            id: None,
            title: None,
        }
    }
}

