/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */


use reqwest;
use serde::{Deserialize, Serialize};
use crate::{apis::ResponseContent, models};
use super::{Error, configuration};


/// struct for typed errors of method [`generate_nonsense_word`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum GenerateNonsenseWordError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`random_joke`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum RandomJokeError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`random_meme`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum RandomMemeError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_gifs`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchGifsError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_jokes`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchJokesError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_memes`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchMemesError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}


/// Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
pub async fn generate_nonsense_word(configuration: &configuration::Configuration, ) -> Result<models::GenerateNonsenseWord200Response, Error<GenerateNonsenseWordError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/generate-nonsense-word", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

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
        let local_var_entity: Option<GenerateNonsenseWordError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
pub async fn random_joke(configuration: &configuration::Configuration, include_tags: Option<&str>, exclude_tags: Option<&str>, min_rating: Option<f64>, max_length: Option<i32>) -> Result<models::SearchJokes200ResponseJokesInner, Error<RandomJokeError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/retrieve-random-joke", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = include_tags {
        local_var_req_builder = local_var_req_builder.query(&[("include-tags", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = exclude_tags {
        local_var_req_builder = local_var_req_builder.query(&[("exclude-tags", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_rating {
        local_var_req_builder = local_var_req_builder.query(&[("min-rating", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_length {
        local_var_req_builder = local_var_req_builder.query(&[("max-length", &local_var_str.to_string())]);
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
        let local_var_entity: Option<RandomJokeError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
pub async fn random_meme(configuration: &configuration::Configuration, keywords: Option<&str>, keywords_in_image: Option<bool>, media_type: Option<&str>, min_rating: Option<f64>, max_age_days: Option<i32>) -> Result<models::RandomMeme200Response, Error<RandomMemeError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/retrieve-random-meme", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = keywords {
        local_var_req_builder = local_var_req_builder.query(&[("keywords", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = keywords_in_image {
        local_var_req_builder = local_var_req_builder.query(&[("keywords-in-image", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = media_type {
        local_var_req_builder = local_var_req_builder.query(&[("media-type", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_rating {
        local_var_req_builder = local_var_req_builder.query(&[("min-rating", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_age_days {
        local_var_req_builder = local_var_req_builder.query(&[("max-age-days", &local_var_str.to_string())]);
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
        let local_var_entity: Option<RandomMemeError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
pub async fn search_gifs(configuration: &configuration::Configuration, query: &str, number: Option<i32>) -> Result<models::SearchGifs200Response, Error<SearchGifsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/search-gifs", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("query", &query.to_string())]);
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
        let local_var_entity: Option<SearchGifsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
pub async fn search_jokes(configuration: &configuration::Configuration, keywords: Option<&str>, include_tags: Option<&str>, exclude_tags: Option<&str>, min_rating: Option<f64>, max_length: Option<f64>, offset: Option<i32>, number: Option<i32>) -> Result<models::SearchJokes200Response, Error<SearchJokesError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/search-jokes", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = keywords {
        local_var_req_builder = local_var_req_builder.query(&[("keywords", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = include_tags {
        local_var_req_builder = local_var_req_builder.query(&[("include-tags", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = exclude_tags {
        local_var_req_builder = local_var_req_builder.query(&[("exclude-tags", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_rating {
        local_var_req_builder = local_var_req_builder.query(&[("min-rating", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_length {
        local_var_req_builder = local_var_req_builder.query(&[("max-length", &local_var_str.to_string())]);
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
        let local_var_entity: Option<SearchJokesError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
pub async fn search_memes(configuration: &configuration::Configuration, keywords: Option<&str>, keywords_in_image: Option<bool>, media_type: Option<&str>, min_rating: Option<f64>, max_age_days: Option<i32>, offset: Option<i32>, number: Option<i32>) -> Result<models::SearchMemes200Response, Error<SearchMemesError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/search-memes", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = keywords {
        local_var_req_builder = local_var_req_builder.query(&[("keywords", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = keywords_in_image {
        local_var_req_builder = local_var_req_builder.query(&[("keywords-in-image", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = media_type {
        local_var_req_builder = local_var_req_builder.query(&[("media-type", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_rating {
        local_var_req_builder = local_var_req_builder.query(&[("min-rating", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_age_days {
        local_var_req_builder = local_var_req_builder.query(&[("max-age-days", &local_var_str.to_string())]);
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
        let local_var_entity: Option<SearchMemesError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

