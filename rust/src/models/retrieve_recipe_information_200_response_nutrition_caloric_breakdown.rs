/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
    #[serde(rename = "percent_fat", skip_serializing_if = "Option::is_none")]
    pub percent_fat: Option<f32>,
    #[serde(rename = "percent_carbs", skip_serializing_if = "Option::is_none")]
    pub percent_carbs: Option<f32>,
    #[serde(rename = "percent_protein", skip_serializing_if = "Option::is_none")]
    pub percent_protein: Option<f32>,
}

impl RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
    pub fn new() -> RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
        RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
            percent_fat: None,
            percent_carbs: None,
            percent_protein: None,
        }
    }
}


