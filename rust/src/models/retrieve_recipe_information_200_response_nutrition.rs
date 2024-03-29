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
pub struct RetrieveRecipeInformation200ResponseNutrition {
    #[serde(rename = "weight_per_serving", skip_serializing_if = "Option::is_none")]
    pub weight_per_serving: Option<Box<crate::models::RetrieveRecipeInformation200ResponseNutritionWeightPerServing>>,
    #[serde(rename = "caloric_breakdown", skip_serializing_if = "Option::is_none")]
    pub caloric_breakdown: Option<Box<crate::models::RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown>>,
    #[serde(rename = "flavonoids", skip_serializing_if = "Option::is_none")]
    pub flavonoids: Option<Vec<crate::models::RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner>>,
    #[serde(rename = "ingredient_breakdown", skip_serializing_if = "Option::is_none")]
    pub ingredient_breakdown: Option<Vec<crate::models::RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner>>,
    #[serde(rename = "properties", skip_serializing_if = "Option::is_none")]
    pub properties: Option<Vec<crate::models::SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>>,
    #[serde(rename = "nutrients", skip_serializing_if = "Option::is_none")]
    pub nutrients: Option<Vec<crate::models::RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner>>,
}

impl RetrieveRecipeInformation200ResponseNutrition {
    pub fn new() -> RetrieveRecipeInformation200ResponseNutrition {
        RetrieveRecipeInformation200ResponseNutrition {
            weight_per_serving: None,
            caloric_breakdown: None,
            flavonoids: None,
            ingredient_breakdown: None,
            properties: None,
            nutrients: None,
        }
    }
}


