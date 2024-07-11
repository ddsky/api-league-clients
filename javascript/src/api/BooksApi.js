/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import FindSimilarBooks200Response from '../model/FindSimilarBooks200Response';
import SearchBooks200Response from '../model/SearchBooks200Response';

/**
* Books service.
* @module api/BooksApi
* @version 1.4.1
*/
export default class BooksApi {

    /**
    * Constructs a new BooksApi. 
    * @alias module:api/BooksApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the findSimilarBooks operation.
     * @callback module:api/BooksApi~findSimilarBooksCallback
     * @param {String} error Error message, if any.
     * @param {module:model/FindSimilarBooks200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Find Similar Books
     * Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * @param {Number} id The id of the book to which similar books should be found.
     * @param {Object} opts Optional parameters
     * @param {Number} [number] The number of similar books to return in range [1,100]
     * @param {module:api/BooksApi~findSimilarBooksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/FindSimilarBooks200Response}
     */
    findSimilarBooks(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling findSimilarBooks");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = FindSimilarBooks200Response;
      return this.apiClient.callApi(
        '/list-similar-books', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchBooks operation.
     * @callback module:api/BooksApi~searchBooksCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchBooks200Response} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Books
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * @param {Object} opts Optional parameters
     * @param {String} [query] The search query.
     * @param {Number} [earliestPublishYear] The books must have been published after this year.
     * @param {Number} [latestPublishYear] The books must have been published before this year.
     * @param {Number} [minRating] The minimum rating the book must have gotten in the interval [0,1].
     * @param {Number} [maxRating] The maximum rating the book must have gotten in the interval [0,1].
     * @param {String} [genres] A comma-separated list of genres. Only books from any of the given genres will be returned.
     * @param {String} [authors] A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
     * @param {String} [isbn] Only the book matching the ISBN-13 will be returned
     * @param {String} [oclc] Only the book matching the OCLC will be returned
     * @param {String} [sort] The sorting criteria (publish-date or rating).
     * @param {String} [sortDirection] Whether to sort ascending or descending (ASC or DESC).
     * @param {Boolean} [groupResults] Whether to group similar editions of the same book.
     * @param {Number} [offset] The number of books to skip in range [0,1000]
     * @param {Number} [number] The number of books to return in range [1,100]
     * @param {module:api/BooksApi~searchBooksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchBooks200Response}
     */
    searchBooks(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'earliest-publish-year': opts['earliestPublishYear'],
        'latest-publish-year': opts['latestPublishYear'],
        'min-rating': opts['minRating'],
        'max-rating': opts['maxRating'],
        'genres': opts['genres'],
        'authors': opts['authors'],
        'isbn': opts['isbn'],
        'oclc': opts['oclc'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection'],
        'group-results': opts['groupResults'],
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
      let returnType = SearchBooks200Response;
      return this.apiClient.callApi(
        '/search-books', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
