=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.4
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class BooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find Similar Books API
    # Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
    # @param id [Integer] The id of the book to which similar books should be found.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of similar books to return in range [1,100]
    # @return [FindSimilarBooksAPI200Response]
    def find_similar_books_api(id, opts = {})
      data, _status_code, _headers = find_similar_books_api_with_http_info(id, opts)
      data
    end

    # Find Similar Books API
    # Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
    # @param id [Integer] The id of the book to which similar books should be found.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of similar books to return in range [1,100]
    # @return [Array<(FindSimilarBooksAPI200Response, Integer, Hash)>] FindSimilarBooksAPI200Response data, response status code and response headers
    def find_similar_books_api_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BooksApi.find_similar_books_api ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BooksApi.find_similar_books_api"
      end
      if @api_client.config.client_side_validation && id > 999999999
        fail ArgumentError, 'invalid value for "id" when calling BooksApi.find_similar_books_api, must be smaller than or equal to 999999999.'
      end

      if @api_client.config.client_side_validation && id < 0
        fail ArgumentError, 'invalid value for "id" when calling BooksApi.find_similar_books_api, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling BooksApi.find_similar_books_api, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling BooksApi.find_similar_books_api, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/list-similar-books'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FindSimilarBooksAPI200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"BooksApi.find_similar_books_api",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BooksApi#find_similar_books_api\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Books API
    # Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @option opts [Integer] :earliest_publish_year The books must have been published after this year.
    # @option opts [Integer] :latest_publish_year The books must have been published before this year.
    # @option opts [Float] :min_rating The minimum rating the book must have gotten in the interval [0,1].
    # @option opts [Float] :max_rating The maximum rating the book must have gotten in the interval [0,1].
    # @option opts [String] :genres A comma-separated list of genres. Only books from any of the given genres will be returned.
    # @option opts [String] :authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
    # @option opts [String] :isbn Only the book matching the ISBN-13 will be returned
    # @option opts [String] :oclc Only the book matching the OCLC will be returned
    # @option opts [String] :sort The sorting criteria (publish-date or rating).
    # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
    # @option opts [Boolean] :group_results Whether to group similar editions of the same book.
    # @option opts [Integer] :offset The number of books to skip in range [0,1000]
    # @option opts [Integer] :number The number of books to return in range [1,100]
    # @return [SearchBooksAPI200Response]
    def search_books_api(opts = {})
      data, _status_code, _headers = search_books_api_with_http_info(opts)
      data
    end

    # Search Books API
    # Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @option opts [Integer] :earliest_publish_year The books must have been published after this year.
    # @option opts [Integer] :latest_publish_year The books must have been published before this year.
    # @option opts [Float] :min_rating The minimum rating the book must have gotten in the interval [0,1].
    # @option opts [Float] :max_rating The maximum rating the book must have gotten in the interval [0,1].
    # @option opts [String] :genres A comma-separated list of genres. Only books from any of the given genres will be returned.
    # @option opts [String] :authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
    # @option opts [String] :isbn Only the book matching the ISBN-13 will be returned
    # @option opts [String] :oclc Only the book matching the OCLC will be returned
    # @option opts [String] :sort The sorting criteria (publish-date or rating).
    # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
    # @option opts [Boolean] :group_results Whether to group similar editions of the same book.
    # @option opts [Integer] :offset The number of books to skip in range [0,1000]
    # @option opts [Integer] :number The number of books to return in range [1,100]
    # @return [Array<(SearchBooksAPI200Response, Integer, Hash)>] SearchBooksAPI200Response data, response status code and response headers
    def search_books_api_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BooksApi.search_books_api ...'
      end
      if @api_client.config.client_side_validation && !opts[:'query'].nil? && opts[:'query'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"query"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'query'].nil? && opts[:'query'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"query\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'earliest_publish_year'].nil? && opts[:'earliest_publish_year'] > 9999
        fail ArgumentError, 'invalid value for "opts[:"earliest_publish_year"]" when calling BooksApi.search_books_api, must be smaller than or equal to 9999.'
      end

      if @api_client.config.client_side_validation && !opts[:'earliest_publish_year'].nil? && opts[:'earliest_publish_year'] < 0
        fail ArgumentError, 'invalid value for "opts[:"earliest_publish_year"]" when calling BooksApi.search_books_api, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'latest_publish_year'].nil? && opts[:'latest_publish_year'] > 9999
        fail ArgumentError, 'invalid value for "opts[:"latest_publish_year"]" when calling BooksApi.search_books_api, must be smaller than or equal to 9999.'
      end

      if @api_client.config.client_side_validation && !opts[:'latest_publish_year'].nil? && opts[:'latest_publish_year'] < 0
        fail ArgumentError, 'invalid value for "opts[:"latest_publish_year"]" when calling BooksApi.search_books_api, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 1
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling BooksApi.search_books_api, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling BooksApi.search_books_api, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_rating'].nil? && opts[:'max_rating'] > 1
        fail ArgumentError, 'invalid value for "opts[:"max_rating"]" when calling BooksApi.search_books_api, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_rating'].nil? && opts[:'max_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"max_rating"]" when calling BooksApi.search_books_api, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'genres'].nil? && opts[:'genres'].to_s.length > 1000
        fail ArgumentError, 'invalid value for "opts[:"genres"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'genres'].nil? && opts[:'genres'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"genres\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'authors'].nil? && opts[:'authors'].to_s.length > 1000
        fail ArgumentError, 'invalid value for "opts[:"authors"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'authors'].nil? && opts[:'authors'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"authors\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'isbn'].nil? && opts[:'isbn'].to_s.length > 13
        fail ArgumentError, 'invalid value for "opts[:"isbn"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 13.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'isbn'].nil? && opts[:'isbn'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"isbn\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'oclc'].nil? && opts[:'oclc'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"oclc"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'oclc'].nil? && opts[:'oclc'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"oclc\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'].to_s.length > 10000
        fail ArgumentError, 'invalid value for "opts[:"sort"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 10000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'sort'].nil? && opts[:'sort'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"sort\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'sort_direction'].nil? && opts[:'sort_direction'].to_s.length > 4
        fail ArgumentError, 'invalid value for "opts[:"sort_direction"]" when calling BooksApi.search_books_api, the character length must be smaller than or equal to 4.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'sort_direction'].nil? && opts[:'sort_direction'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"sort_direction\"]' when calling BooksApi.search_books_api, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling BooksApi.search_books_api, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling BooksApi.search_books_api, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling BooksApi.search_books_api, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling BooksApi.search_books_api, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/search-books'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'earliest-publish-year'] = opts[:'earliest_publish_year'] if !opts[:'earliest_publish_year'].nil?
      query_params[:'latest-publish-year'] = opts[:'latest_publish_year'] if !opts[:'latest_publish_year'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'max-rating'] = opts[:'max_rating'] if !opts[:'max_rating'].nil?
      query_params[:'genres'] = opts[:'genres'] if !opts[:'genres'].nil?
      query_params[:'authors'] = opts[:'authors'] if !opts[:'authors'].nil?
      query_params[:'isbn'] = opts[:'isbn'] if !opts[:'isbn'].nil?
      query_params[:'oclc'] = opts[:'oclc'] if !opts[:'oclc'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort-direction'] = opts[:'sort_direction'] if !opts[:'sort_direction'].nil?
      query_params[:'group-results'] = opts[:'group_results'] if !opts[:'group_results'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchBooksAPI200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"BooksApi.search_books_api",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BooksApi#search_books_api\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
