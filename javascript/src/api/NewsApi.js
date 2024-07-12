/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import ExtractNews200Response from '../model/ExtractNews200Response';
import SearchNews200Response from '../model/SearchNews200Response';
import TopNews200Response from '../model/TopNews200Response';

/**
* News service.
* @module api/NewsApi
* @version 1.4.2
*/
export default class NewsApi {

    /**
    * Constructs a new NewsApi. 
    * @alias module:api/NewsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the extractNews operation.
     * @callback module:api/NewsApi~extractNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/ExtractNews200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Extract News
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * @param {String} url The url of the news.
     * @param {Boolean} analyze Whether to analyze the news (extract entities etc.)
     * @param {module:api/NewsApi~extractNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/ExtractNews200Response}
     */
    extractNews(url, analyze, callback) {
      let postBody = null;
      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling extractNews");
      }
      // verify the required parameter 'analyze' is set
      if (analyze === undefined || analyze === null) {
        throw new Error("Missing the required parameter 'analyze' when calling extractNews");
      }

      let pathParams = {
      };
      let queryParams = {
        'url': url,
        'analyze': analyze
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ExtractNews200Response;
      return this.apiClient.callApi(
        '/extract-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchNews operation.
     * @callback module:api/NewsApi~searchNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchNews200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search News
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * @param {Object} opts Optional parameters
     * @param {String} [text] The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
     * @param {String} [sourceCountries] A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @param {String} [language] The ISO 6391 language code of the news.
     * @param {Number} [minSentiment] The minimal sentiment of the news in range [-1,1].
     * @param {Number} [maxSentiment] The maximal sentiment of the news in range [-1,1].
     * @param {String} [earliestPublishDate] The news must have been published after this date.
     * @param {String} [latestPublishDate] The news must have been published before this date.
     * @param {String} [newsSources] A comma-separated list of news sources from which the news should originate.
     * @param {String} [authors] A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param {String} [categories] A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
     * @param {String} [entities] Filter news by entities (ORG, PER, or LOC).
     * @param {String} [locationFilter] Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\"
     * @param {String} [sort] The sorting criteria (publish-time).
     * @param {String} [sortDirection] Whether to sort ascending or descending (ASC or DESC).
     * @param {Number} [offset] The number of news to skip in range [0,10000]
     * @param {Number} [number] The number of news to return in range [1,100]
     * @param {module:api/NewsApi~searchNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchNews200Response}
     */
    searchNews(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'text': opts['text'],
        'source-countries': opts['sourceCountries'],
        'language': opts['language'],
        'min-sentiment': opts['minSentiment'],
        'max-sentiment': opts['maxSentiment'],
        'earliest-publish-date': opts['earliestPublishDate'],
        'latest-publish-date': opts['latestPublishDate'],
        'news-sources': opts['newsSources'],
        'authors': opts['authors'],
        'categories': opts['categories'],
        'entities': opts['entities'],
        'location-filter': opts['locationFilter'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchNews200Response;
      return this.apiClient.callApi(
        '/search-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the topNews operation.
     * @callback module:api/NewsApi~topNewsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/TopNews200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Top News
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * @param {String} sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param {String} language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param {Object} opts Optional parameters
     * @param {String} [date] The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param {Boolean} [headlinesOnly] Whether to only return basic information such as id, title, and url of the news.
     * @param {module:api/NewsApi~topNewsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/TopNews200Response}
     */
    topNews(sourceCountry, language, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'sourceCountry' is set
      if (sourceCountry === undefined || sourceCountry === null) {
        throw new Error("Missing the required parameter 'sourceCountry' when calling topNews");
      }
      // verify the required parameter 'language' is set
      if (language === undefined || language === null) {
        throw new Error("Missing the required parameter 'language' when calling topNews");
      }

      let pathParams = {
      };
      let queryParams = {
        'source-country': sourceCountry,
        'language': language,
        'date': opts['date'],
        'headlines-only': opts['headlinesOnly']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = TopNews200Response;
      return this.apiClient.callApi(
        '/retrieve-top-news', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
