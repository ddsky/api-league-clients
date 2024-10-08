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
pub struct RetrieveRecipeInformation200Response {
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "servings", skip_serializing_if = "Option::is_none")]
    pub servings: Option<i32>,
    #[serde(rename = "images", skip_serializing_if = "Option::is_none")]
    pub images: Option<Vec<String>>,
    #[serde(rename = "dietary_properties", skip_serializing_if = "Option::is_none")]
    pub dietary_properties: Option<Box<models::RetrieveRecipeInformation200ResponseDietaryProperties>>,
    #[serde(rename = "price_per_serving", skip_serializing_if = "Option::is_none")]
    pub price_per_serving: Option<f64>,
    #[serde(rename = "times", skip_serializing_if = "Option::is_none")]
    pub times: Option<Box<models::RetrieveRecipeInformation200ResponseTimes>>,
    #[serde(rename = "nutrition", skip_serializing_if = "Option::is_none")]
    pub nutrition: Option<Box<models::RetrieveRecipeInformation200ResponseNutrition>>,
    #[serde(rename = "taste", skip_serializing_if = "Option::is_none")]
    pub taste: Option<Box<models::RetrieveRecipeInformation200ResponseTaste>>,
    #[serde(rename = "cuisines", skip_serializing_if = "Option::is_none")]
    pub cuisines: Option<Vec<String>>,
    #[serde(rename = "meal_types", skip_serializing_if = "Option::is_none")]
    pub meal_types: Option<Vec<String>>,
    #[serde(rename = "occasions", skip_serializing_if = "Option::is_none")]
    pub occasions: Option<Vec<String>>,
    #[serde(rename = "ingredients", skip_serializing_if = "Option::is_none")]
    pub ingredients: Option<Vec<models::RetrieveRecipeInformation200ResponseIngredientsInner>>,
    #[serde(rename = "instructions", skip_serializing_if = "Option::is_none")]
    pub instructions: Option<Vec<models::RetrieveRecipeInformation200ResponseInstructionsInner>>,
    #[serde(rename = "credits", skip_serializing_if = "Option::is_none")]
    pub credits: Option<Box<models::RetrieveRecipeInformation200ResponseCredits>>,
    #[serde(rename = "scores", skip_serializing_if = "Option::is_none")]
    pub scores: Option<Box<models::RetrieveRecipeInformation200ResponseScores>>,
}

impl RetrieveRecipeInformation200Response {
    pub fn new() -> RetrieveRecipeInformation200Response {
        RetrieveRecipeInformation200Response {
            id: None,
            title: None,
            servings: None,
            images: None,
            dietary_properties: None,
            price_per_serving: None,
            times: None,
            nutrition: None,
            taste: None,
            cuisines: None,
            meal_types: None,
            occasions: None,
            ingredients: None,
            instructions: None,
            credits: None,
            scores: None,
        }
    }
}

