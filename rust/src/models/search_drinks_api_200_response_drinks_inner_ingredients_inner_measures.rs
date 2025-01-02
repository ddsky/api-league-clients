/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasures {
    #[serde(rename = "metric", skip_serializing_if = "Option::is_none")]
    pub metric: Option<Box<models::SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasuresMetric>>,
    #[serde(rename = "us", skip_serializing_if = "Option::is_none")]
    pub us: Option<Box<models::SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasuresUs>>,
}

impl SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasures {
    pub fn new() -> SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasures {
        SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasures {
            metric: None,
            us: None,
        }
    }
}
