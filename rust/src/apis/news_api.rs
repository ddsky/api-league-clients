/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 */


use reqwest;

use crate::{apis::ResponseContent, models};
use super::{Error, configuration};


/// struct for typed errors of method [`extract_news`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum ExtractNewsError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`search_news`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum SearchNewsError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`top_news`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum TopNewsError {
    Status401(),
    Status402(),
    Status403(),
    Status404(),
    Status406(),
    Status429(),
    UnknownValue(serde_json::Value),
}


/// Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
pub async fn extract_news(configuration: &configuration::Configuration, url: &str, analyze: bool) -> Result<models::ExtractNews200Response, Error<ExtractNewsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/extract-news", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("url", &url.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("analyze", &analyze.to_string())]);
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
        let local_var_entity: Option<ExtractNewsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
pub async fn search_news(configuration: &configuration::Configuration, text: Option<&str>, source_countries: Option<&str>, language: Option<&str>, min_sentiment: Option<f64>, max_sentiment: Option<f64>, earliest_publish_date: Option<&str>, latest_publish_date: Option<&str>, news_sources: Option<&str>, authors: Option<&str>, categories: Option<&str>, entities: Option<&str>, location_filter: Option<&str>, sort: Option<&str>, sort_direction: Option<&str>, offset: Option<i32>, number: Option<i32>) -> Result<models::SearchNews200Response, Error<SearchNewsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/search-news", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = text {
        local_var_req_builder = local_var_req_builder.query(&[("text", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = source_countries {
        local_var_req_builder = local_var_req_builder.query(&[("source-countries", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = language {
        local_var_req_builder = local_var_req_builder.query(&[("language", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = min_sentiment {
        local_var_req_builder = local_var_req_builder.query(&[("min-sentiment", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_sentiment {
        local_var_req_builder = local_var_req_builder.query(&[("max-sentiment", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = earliest_publish_date {
        local_var_req_builder = local_var_req_builder.query(&[("earliest-publish-date", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = latest_publish_date {
        local_var_req_builder = local_var_req_builder.query(&[("latest-publish-date", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = news_sources {
        local_var_req_builder = local_var_req_builder.query(&[("news-sources", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = authors {
        local_var_req_builder = local_var_req_builder.query(&[("authors", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = categories {
        local_var_req_builder = local_var_req_builder.query(&[("categories", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = entities {
        local_var_req_builder = local_var_req_builder.query(&[("entities", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = location_filter {
        local_var_req_builder = local_var_req_builder.query(&[("location-filter", &local_var_str.to_string())]);
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
        let local_var_entity: Option<SearchNewsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
pub async fn top_news(configuration: &configuration::Configuration, source_country: &str, language: &str, date: Option<&str>, headlines_only: Option<bool>) -> Result<models::TopNews200Response, Error<TopNewsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/retrieve-top-news", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("source-country", &source_country.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("language", &language.to_string())]);
    if let Some(ref local_var_str) = date {
        local_var_req_builder = local_var_req_builder.query(&[("date", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = headlines_only {
        local_var_req_builder = local_var_req_builder.query(&[("headlines-only", &local_var_str.to_string())]);
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
        let local_var_entity: Option<TopNewsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

