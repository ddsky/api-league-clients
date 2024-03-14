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
pub struct SearchRecipes200ResponseRecipesInnerNutrition {
    #[serde(rename = "nutrients", skip_serializing_if = "Option::is_none")]
    pub nutrients: Option<Vec<crate::models::SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>>,
}

impl SearchRecipes200ResponseRecipesInnerNutrition {
    pub fn new() -> SearchRecipes200ResponseRecipesInnerNutrition {
        SearchRecipes200ResponseRecipesInnerNutrition {
            nutrients: None,
        }
    }
}


