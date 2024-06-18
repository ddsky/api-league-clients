/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */


use reqwest;

use crate::{apis::ResponseContent, models};
use super::{Error, configuration};


/// struct for typed errors of method [`compute_nutrition`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum ComputeNutritionError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`retrieve_recipe_information`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum RetrieveRecipeInformationError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_recipes`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchRecipesError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_restaurants`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchRestaurantsError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}


/// Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
pub async fn compute_nutrition(configuration: &configuration::Configuration, ingredients: &str, servings: Option<i32>, reduce_oils: Option<bool>) -> Result<models::ComputeNutrition200Response, Error<ComputeNutritionError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/compute-nutrition", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("ingredients", &ingredients.to_string())]);
    if let Some(ref local_var_str) = servings {
        local_var_req_builder = local_var_req_builder.query(&[("servings", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = reduce_oils {
        local_var_req_builder = local_var_req_builder.query(&[("reduce-oils", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.query(&[("api-key", local_var_value)]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<ComputeNutritionError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
pub async fn retrieve_recipe_information(configuration: &configuration::Configuration, id: i32, add_wine_pairing: Option<bool>) -> Result<models::RetrieveRecipeInformation200Response, Error<RetrieveRecipeInformationError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/retrieve-recipe", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("id", &id.to_string())]);
    if let Some(ref local_var_str) = add_wine_pairing {
        local_var_req_builder = local_var_req_builder.query(&[("add-wine-pairing", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.query(&[("api-key", local_var_value)]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<RetrieveRecipeInformationError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
pub async fn search_recipes(configuration: &configuration::Configuration, query: Option<&str>, cuisines: Option<&str>, exclude_cuisines: Option<&str>, meal_type: Option<&str>, diet: Option<&str>, intolerances: Option<&str>, equipment: Option<&str>, include_ingredients: Option<&str>, exclude_ingredients: Option<&str>, fill_ingredients: Option<bool>, add_recipe_information: Option<bool>, max_time: Option<i32>, min_servings: Option<i32>, max_servings: Option<i32>, min_calories: Option<f64>, max_calories: Option<f64>, min_carbs: Option<f64>, max_carbs: Option<f64>, min_protein: Option<f64>, max_protein: Option<f64>, min_fat: Option<f64>, max_fat: Option<f64>, min_sugar: Option<f64>, max_sugar: Option<f64>, min_fiber: Option<f64>, max_fiber: Option<f64>, min_folate: Option<f64>, max_folate: Option<f64>, min_folic_acid: Option<f64>, max_folic_acid: Option<f64>, min_iodine: Option<f64>, max_iodine: Option<f64>, min_iron: Option<f64>, max_iron: Option<f64>, min_zinc: Option<f64>, max_zinc: Option<f64>, min_magnesium: Option<f64>, max_magnesium: Option<f64>, min_manganese: Option<f64>, max_manganese: Option<f64>, min_phosphorus: Option<f64>, max_phosphorus: Option<f64>, min_potassium: Option<f64>, max_potassium: Option<f64>, min_sodium: Option<f64>, max_sodium: Option<f64>, min_selenium: Option<f64>, max_selenium: Option<f64>, min_copper: Option<f64>, max_copper: Option<f64>, min_calcium: Option<f64>, max_calcium: Option<f64>, min_choline: Option<f64>, max_choline: Option<f64>, min_cholesterol: Option<f64>, max_cholesterol: Option<f64>, min_fluoride: Option<f64>, max_fluoride: Option<f64>, min_alcohol: Option<f64>, max_alcohol: Option<f64>, min_caffeine: Option<f64>, max_caffeine: Option<f64>, min_saturated_fat: Option<f64>, max_saturated_fat: Option<f64>, min_vitamin_a: Option<f64>, max_vitamin_a: Option<f64>, min_vitamin_c: Option<f64>, max_vitamin_c: Option<f64>, min_vitamin_d: Option<f64>, max_vitamin_d: Option<f64>, min_vitamin_e: Option<f64>, max_vitamin_e: Option<f64>, min_vitamin_k: Option<f64>, max_vitamin_k: Option<f64>, min_vitamin_b1: Option<f64>, max_vitamin_b1: Option<f64>, min_vitamin_b2: Option<f64>, max_vitamin_b2: Option<f64>, min_vitamin_b3: Option<f64>, max_vitamin_b3: Option<f64>, min_vitamin_b5: Option<f64>, max_vitamin_b5: Option<f64>, min_vitamin_b6: Option<f64>, max_vitamin_b6: Option<f64>, min_vitamin_b12: Option<f64>, max_vitamin_b12: Option<f64>, sort: Option<&str>, sort_direction: Option<&str>, offset: Option<i32>, number: Option<i32>) -> Result<models::SearchRecipes200Response, Error<SearchRecipesError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/search-recipes", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = query {
        local_var_req_builder = local_var_req_builder.query(&[("query", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = cuisines {
        local_var_req_builder = local_var_req_builder.query(&[("cuisines", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = exclude_cuisines {
        local_var_req_builder = local_var_req_builder.query(&[("exclude-cuisines", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = meal_type {
        local_var_req_builder = local_var_req_builder.query(&[("meal-type", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = diet {
        local_var_req_builder = local_var_req_builder.query(&[("diet", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = intolerances {
        local_var_req_builder = local_var_req_builder.query(&[("intolerances", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = equipment {
        local_var_req_builder = local_var_req_builder.query(&[("equipment", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = include_ingredients {
        local_var_req_builder = local_var_req_builder.query(&[("include-ingredients", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = exclude_ingredients {
        local_var_req_builder = local_var_req_builder.query(&[("exclude-ingredients", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = fill_ingredients {
        local_var_req_builder = local_var_req_builder.query(&[("fill-ingredients", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = add_recipe_information {
        local_var_req_builder = local_var_req_builder.query(&[("add-recipe-information", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_time {
        local_var_req_builder = local_var_req_builder.query(&[("max-time", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_servings {
        local_var_req_builder = local_var_req_builder.query(&[("min-servings", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_servings {
        local_var_req_builder = local_var_req_builder.query(&[("max-servings", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_calories {
        local_var_req_builder = local_var_req_builder.query(&[("min-calories", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_calories {
        local_var_req_builder = local_var_req_builder.query(&[("max-calories", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_carbs {
        local_var_req_builder = local_var_req_builder.query(&[("min-carbs", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_carbs {
        local_var_req_builder = local_var_req_builder.query(&[("max-carbs", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_protein {
        local_var_req_builder = local_var_req_builder.query(&[("min-protein", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_protein {
        local_var_req_builder = local_var_req_builder.query(&[("max-protein", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_fat {
        local_var_req_builder = local_var_req_builder.query(&[("min-fat", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_fat {
        local_var_req_builder = local_var_req_builder.query(&[("max-fat", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_sugar {
        local_var_req_builder = local_var_req_builder.query(&[("min-sugar", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_sugar {
        local_var_req_builder = local_var_req_builder.query(&[("max-sugar", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_fiber {
        local_var_req_builder = local_var_req_builder.query(&[("min-fiber", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_fiber {
        local_var_req_builder = local_var_req_builder.query(&[("max-fiber", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_folate {
        local_var_req_builder = local_var_req_builder.query(&[("min-folate", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_folate {
        local_var_req_builder = local_var_req_builder.query(&[("max-folate", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_folic_acid {
        local_var_req_builder = local_var_req_builder.query(&[("min-folic-acid", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_folic_acid {
        local_var_req_builder = local_var_req_builder.query(&[("max-folic-acid", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_iodine {
        local_var_req_builder = local_var_req_builder.query(&[("min-iodine", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_iodine {
        local_var_req_builder = local_var_req_builder.query(&[("max-iodine", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_iron {
        local_var_req_builder = local_var_req_builder.query(&[("min-iron", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_iron {
        local_var_req_builder = local_var_req_builder.query(&[("max-iron", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_zinc {
        local_var_req_builder = local_var_req_builder.query(&[("min-zinc", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_zinc {
        local_var_req_builder = local_var_req_builder.query(&[("max-zinc", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_magnesium {
        local_var_req_builder = local_var_req_builder.query(&[("min-magnesium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_magnesium {
        local_var_req_builder = local_var_req_builder.query(&[("max-magnesium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_manganese {
        local_var_req_builder = local_var_req_builder.query(&[("min-manganese", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_manganese {
        local_var_req_builder = local_var_req_builder.query(&[("max-manganese", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_phosphorus {
        local_var_req_builder = local_var_req_builder.query(&[("min-phosphorus", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_phosphorus {
        local_var_req_builder = local_var_req_builder.query(&[("max-phosphorus", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_potassium {
        local_var_req_builder = local_var_req_builder.query(&[("min-potassium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_potassium {
        local_var_req_builder = local_var_req_builder.query(&[("max-potassium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_sodium {
        local_var_req_builder = local_var_req_builder.query(&[("min-sodium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_sodium {
        local_var_req_builder = local_var_req_builder.query(&[("max-sodium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_selenium {
        local_var_req_builder = local_var_req_builder.query(&[("min-selenium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_selenium {
        local_var_req_builder = local_var_req_builder.query(&[("max-selenium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_copper {
        local_var_req_builder = local_var_req_builder.query(&[("min-copper", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_copper {
        local_var_req_builder = local_var_req_builder.query(&[("max-copper", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_calcium {
        local_var_req_builder = local_var_req_builder.query(&[("min-calcium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_calcium {
        local_var_req_builder = local_var_req_builder.query(&[("max-calcium", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_choline {
        local_var_req_builder = local_var_req_builder.query(&[("min-choline", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_choline {
        local_var_req_builder = local_var_req_builder.query(&[("max-choline", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_cholesterol {
        local_var_req_builder = local_var_req_builder.query(&[("min-cholesterol", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_cholesterol {
        local_var_req_builder = local_var_req_builder.query(&[("max-cholesterol", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_fluoride {
        local_var_req_builder = local_var_req_builder.query(&[("min-fluoride", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_fluoride {
        local_var_req_builder = local_var_req_builder.query(&[("max-fluoride", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_alcohol {
        local_var_req_builder = local_var_req_builder.query(&[("min-alcohol", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_alcohol {
        local_var_req_builder = local_var_req_builder.query(&[("max-alcohol", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_caffeine {
        local_var_req_builder = local_var_req_builder.query(&[("min-caffeine", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_caffeine {
        local_var_req_builder = local_var_req_builder.query(&[("max-caffeine", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_saturated_fat {
        local_var_req_builder = local_var_req_builder.query(&[("min-saturated-fat", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_saturated_fat {
        local_var_req_builder = local_var_req_builder.query(&[("max-saturated-fat", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_a {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-a", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_a {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-a", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_c {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-c", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_c {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-c", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_d {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-d", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_d {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-d", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_e {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-e", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_e {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-e", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_k {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-k", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_k {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-k", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_b1 {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-b1", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_b1 {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-b1", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_b2 {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-b2", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_b2 {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-b2", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_b3 {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-b3", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_b3 {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-b3", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_b5 {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-b5", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_b5 {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-b5", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_b6 {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-b6", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_b6 {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-b6", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_vitamin_b12 {
        local_var_req_builder = local_var_req_builder.query(&[("min-vitamin-b12", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_vitamin_b12 {
        local_var_req_builder = local_var_req_builder.query(&[("max-vitamin-b12", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = sort {
        local_var_req_builder = local_var_req_builder.query(&[("sort", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = sort_direction {
        local_var_req_builder = local_var_req_builder.query(&[("sort-direction", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = offset {
        local_var_req_builder = local_var_req_builder.query(&[("offset", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = number {
        local_var_req_builder = local_var_req_builder.query(&[("number", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.query(&[("api-key", local_var_value)]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<SearchRecipesError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
pub async fn search_restaurants(configuration: &configuration::Configuration, lat: f64, lon: f64, query: Option<&str>, distance: Option<i32>, budget: Option<f64>, min_rating: Option<f64>, cuisine: Option<&str>, is_open: Option<bool>, page: Option<i32>, sort: Option<&str>) -> Result<models::SearchRestaurants200Response, Error<SearchRestaurantsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/search-restaurants", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = query {
        local_var_req_builder = local_var_req_builder.query(&[("query", &local_var_str.to_string())]);
    }
    local_var_req_builder = local_var_req_builder.query(&[("lat", &lat.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("lon", &lon.to_string())]);
    if let Some(ref local_var_str) = distance {
        local_var_req_builder = local_var_req_builder.query(&[("distance", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = budget {
        local_var_req_builder = local_var_req_builder.query(&[("budget", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_rating {
        local_var_req_builder = local_var_req_builder.query(&[("min-rating", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = cuisine {
        local_var_req_builder = local_var_req_builder.query(&[("cuisine", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = is_open {
        local_var_req_builder = local_var_req_builder.query(&[("is-open", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = page {
        local_var_req_builder = local_var_req_builder.query(&[("page", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = sort {
        local_var_req_builder = local_var_req_builder.query(&[("sort", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.query(&[("api-key", local_var_value)]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_apikey) = local_var_configuration.api_key {
        let local_var_key = local_var_apikey.key.clone();
        let local_var_value = match local_var_apikey.prefix {
            Some(ref local_var_prefix) => format!("{} {}", local_var_prefix, local_var_key),
            None => local_var_key,
        };
        local_var_req_builder = local_var_req_builder.header("x-api-key", local_var_value);
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<SearchRestaurantsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

