=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module OpenapiClient
  class HumorApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate Nonsense Word
    # Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
    # @param [Hash] opts the optional parameters
    # @return [GenerateNonsenseWord200Response]
    def generate_nonsense_word(opts = {})
      data, _status_code, _headers = generate_nonsense_word_with_http_info(opts)
      data
    end

    # Generate Nonsense Word
    # Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateNonsenseWord200Response, Integer, Hash)>] GenerateNonsenseWord200Response data, response status code and response headers
    def generate_nonsense_word_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumorApi.generate_nonsense_word ...'
      end
      # resource path
      local_var_path = '/generate-nonsense-word'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateNonsenseWord200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"HumorApi.generate_nonsense_word",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumorApi#generate_nonsense_word\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Random Joke
    # This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_tags A comma-separated list of tags the jokes should have.
    # @option opts [String] :exclude_tags A comma-separated list of tags the jokes must not have.
    # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the jokes.
    # @option opts [Integer] :max_length The maximum length of the joke in letters.
    # @return [SearchJokes200ResponseJokesInner]
    def random_joke(opts = {})
      data, _status_code, _headers = random_joke_with_http_info(opts)
      data
    end

    # Random Joke
    # This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_tags A comma-separated list of tags the jokes should have.
    # @option opts [String] :exclude_tags A comma-separated list of tags the jokes must not have.
    # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the jokes.
    # @option opts [Integer] :max_length The maximum length of the joke in letters.
    # @return [Array<(SearchJokes200ResponseJokesInner, Integer, Hash)>] SearchJokes200ResponseJokesInner data, response status code and response headers
    def random_joke_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumorApi.random_joke ...'
      end
      if @api_client.config.client_side_validation && !opts[:'include_tags'].nil? && opts[:'include_tags'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"include_tags"]" when calling HumorApi.random_joke, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'include_tags'].nil? && opts[:'include_tags'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"include_tags\"]' when calling HumorApi.random_joke, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'exclude_tags'].nil? && opts[:'exclude_tags'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"exclude_tags"]" when calling HumorApi.random_joke, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'exclude_tags'].nil? && opts[:'exclude_tags'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"exclude_tags\"]' when calling HumorApi.random_joke, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 1
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.random_joke, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.random_joke, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_length'].nil? && opts[:'max_length'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"max_length"]" when calling HumorApi.random_joke, must be smaller than or equal to 10000.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_length'].nil? && opts[:'max_length'] < 1
        fail ArgumentError, 'invalid value for "opts[:"max_length"]" when calling HumorApi.random_joke, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/retrieve-random-joke'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include-tags'] = opts[:'include_tags'] if !opts[:'include_tags'].nil?
      query_params[:'exclude-tags'] = opts[:'exclude_tags'] if !opts[:'exclude_tags'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'max-length'] = opts[:'max_length'] if !opts[:'max_length'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchJokes200ResponseJokesInner'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"HumorApi.random_joke",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumorApi#random_joke\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Random Meme
    # Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma-separated list of words that must occur in the meme.
    # @option opts [Boolean] :keywords_in_image Whether the keywords must occur in the image.
    # @option opts [String] :media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
    # @option opts [Float] :min_rating The minimum rating in range [0.0-1.0] of the meme.
    # @option opts [Integer] :max_age_days The maximum age of the meme in days.
    # @return [RandomMeme200Response]
    def random_meme(opts = {})
      data, _status_code, _headers = random_meme_with_http_info(opts)
      data
    end

    # Random Meme
    # Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma-separated list of words that must occur in the meme.
    # @option opts [Boolean] :keywords_in_image Whether the keywords must occur in the image.
    # @option opts [String] :media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
    # @option opts [Float] :min_rating The minimum rating in range [0.0-1.0] of the meme.
    # @option opts [Integer] :max_age_days The maximum age of the meme in days.
    # @return [Array<(RandomMeme200Response, Integer, Hash)>] RandomMeme200Response data, response status code and response headers
    def random_meme_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumorApi.random_meme ...'
      end
      if @api_client.config.client_side_validation && !opts[:'keywords'].nil? && opts[:'keywords'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"keywords"]" when calling HumorApi.random_meme, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'keywords'].nil? && opts[:'keywords'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"keywords\"]' when calling HumorApi.random_meme, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'media_type'].nil? && opts[:'media_type'].to_s.length > 10
        fail ArgumentError, 'invalid value for "opts[:"media_type"]" when calling HumorApi.random_meme, the character length must be smaller than or equal to 10.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'media_type'].nil? && opts[:'media_type'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"media_type\"]' when calling HumorApi.random_meme, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 1
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.random_meme, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.random_meme, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_age_days'].nil? && opts[:'max_age_days'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"max_age_days"]" when calling HumorApi.random_meme, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_age_days'].nil? && opts[:'max_age_days'] < 0
        fail ArgumentError, 'invalid value for "opts[:"max_age_days"]" when calling HumorApi.random_meme, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/retrieve-random-meme'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'keywords-in-image'] = opts[:'keywords_in_image'] if !opts[:'keywords_in_image'].nil?
      query_params[:'media-type'] = opts[:'media_type'] if !opts[:'media_type'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'max-age-days'] = opts[:'max_age_days'] if !opts[:'max_age_days'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RandomMeme200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"HumorApi.random_meme",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumorApi#random_meme\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Gifs
    # Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of gifs to return in range [1,10]
    # @return [SearchGifs200Response]
    def search_gifs(query, opts = {})
      data, _status_code, _headers = search_gifs_with_http_info(query, opts)
      data
    end

    # Search Gifs
    # Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of gifs to return in range [1,10]
    # @return [Array<(SearchGifs200Response, Integer, Hash)>] SearchGifs200Response data, response status code and response headers
    def search_gifs_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumorApi.search_gifs ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling HumorApi.search_gifs"
      end
      if @api_client.config.client_side_validation && query.to_s.length > 300
        fail ArgumentError, 'invalid value for "query" when calling HumorApi.search_gifs, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && query !~ pattern
        fail ArgumentError, "invalid value for 'query' when calling HumorApi.search_gifs, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 10
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling HumorApi.search_gifs, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling HumorApi.search_gifs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/search-gifs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = query
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchGifs200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"HumorApi.search_gifs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumorApi#search_gifs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Jokes
    # With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma-separated list of words that must occur in the joke.
    # @option opts [String] :include_tags A comma-separated list of tags the jokes should have.
    # @option opts [String] :exclude_tags A comma-separated list of tags the jokes must not have.
    # @option opts [Float] :min_rating The minimum rating (0-10) of the jokes.
    # @option opts [Float] :max_length The maximum length of the joke in letters.
    # @option opts [Integer] :offset The number of jokes to skip, between 0 and 1000.
    # @option opts [Integer] :number The number of jokes, between 1 and 10.
    # @return [SearchJokes200Response]
    def search_jokes(opts = {})
      data, _status_code, _headers = search_jokes_with_http_info(opts)
      data
    end

    # Search Jokes
    # With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma-separated list of words that must occur in the joke.
    # @option opts [String] :include_tags A comma-separated list of tags the jokes should have.
    # @option opts [String] :exclude_tags A comma-separated list of tags the jokes must not have.
    # @option opts [Float] :min_rating The minimum rating (0-10) of the jokes.
    # @option opts [Float] :max_length The maximum length of the joke in letters.
    # @option opts [Integer] :offset The number of jokes to skip, between 0 and 1000.
    # @option opts [Integer] :number The number of jokes, between 1 and 10.
    # @return [Array<(SearchJokes200Response, Integer, Hash)>] SearchJokes200Response data, response status code and response headers
    def search_jokes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumorApi.search_jokes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'keywords'].nil? && opts[:'keywords'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"keywords"]" when calling HumorApi.search_jokes, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'keywords'].nil? && opts[:'keywords'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"keywords\"]' when calling HumorApi.search_jokes, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'include_tags'].nil? && opts[:'include_tags'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"include_tags"]" when calling HumorApi.search_jokes, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'include_tags'].nil? && opts[:'include_tags'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"include_tags\"]' when calling HumorApi.search_jokes, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'exclude_tags'].nil? && opts[:'exclude_tags'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"exclude_tags"]" when calling HumorApi.search_jokes, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'exclude_tags'].nil? && opts[:'exclude_tags'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"exclude_tags\"]' when calling HumorApi.search_jokes, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 1
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.search_jokes, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.search_jokes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_length'].nil? && opts[:'max_length'] > 1
        fail ArgumentError, 'invalid value for "opts[:"max_length"]" when calling HumorApi.search_jokes, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_length'].nil? && opts[:'max_length'] < 0
        fail ArgumentError, 'invalid value for "opts[:"max_length"]" when calling HumorApi.search_jokes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HumorApi.search_jokes, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HumorApi.search_jokes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 10
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling HumorApi.search_jokes, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling HumorApi.search_jokes, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/search-jokes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'include-tags'] = opts[:'include_tags'] if !opts[:'include_tags'].nil?
      query_params[:'exclude-tags'] = opts[:'exclude_tags'] if !opts[:'exclude_tags'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'max-length'] = opts[:'max_length'] if !opts[:'max_length'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchJokes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"HumorApi.search_jokes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumorApi#search_jokes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Memes
    # With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma-separated list of words that must occur in the meme.
    # @option opts [Boolean] :keywords_in_image Whether the keywords must occur in the image.
    # @option opts [String] :media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
    # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the meme.
    # @option opts [Integer] :max_age_days The maximum age of the meme in days.
    # @option opts [Integer] :offset The number of memes to skip, between 0 and 1000.
    # @option opts [Integer] :number The number of memes, between 0 and 10.
    # @return [SearchMemes200Response]
    def search_memes(opts = {})
      data, _status_code, _headers = search_memes_with_http_info(opts)
      data
    end

    # Search Memes
    # With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :keywords A comma-separated list of words that must occur in the meme.
    # @option opts [Boolean] :keywords_in_image Whether the keywords must occur in the image.
    # @option opts [String] :media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
    # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the meme.
    # @option opts [Integer] :max_age_days The maximum age of the meme in days.
    # @option opts [Integer] :offset The number of memes to skip, between 0 and 1000.
    # @option opts [Integer] :number The number of memes, between 0 and 10.
    # @return [Array<(SearchMemes200Response, Integer, Hash)>] SearchMemes200Response data, response status code and response headers
    def search_memes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumorApi.search_memes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'keywords'].nil? && opts[:'keywords'].to_s.length > 300
        fail ArgumentError, 'invalid value for "opts[:"keywords"]" when calling HumorApi.search_memes, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'keywords'].nil? && opts[:'keywords'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"keywords\"]' when calling HumorApi.search_memes, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'media_type'].nil? && opts[:'media_type'].to_s.length > 10
        fail ArgumentError, 'invalid value for "opts[:"media_type"]" when calling HumorApi.search_memes, the character length must be smaller than or equal to 10.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && !opts[:'media_type'].nil? && opts[:'media_type'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"media_type\"]' when calling HumorApi.search_memes, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] > 1
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.search_memes, must be smaller than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_rating'].nil? && opts[:'min_rating'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_rating"]" when calling HumorApi.search_memes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_age_days'].nil? && opts[:'max_age_days'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"max_age_days"]" when calling HumorApi.search_memes, must be smaller than or equal to 10000.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_age_days'].nil? && opts[:'max_age_days'] < 0
        fail ArgumentError, 'invalid value for "opts[:"max_age_days"]" when calling HumorApi.search_memes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HumorApi.search_memes, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling HumorApi.search_memes, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 10
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling HumorApi.search_memes, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 0
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling HumorApi.search_memes, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/search-memes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'keywords-in-image'] = opts[:'keywords_in_image'] if !opts[:'keywords_in_image'].nil?
      query_params[:'media-type'] = opts[:'media_type'] if !opts[:'media_type'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'max-age-days'] = opts[:'max_age_days'] if !opts[:'max_age_days'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchMemes200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"HumorApi.search_memes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumorApi#search_memes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
