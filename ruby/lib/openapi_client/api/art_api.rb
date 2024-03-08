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
  class ArtApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Image to Ascii Art by URL
    # Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
    # @param url [String] The URL to the image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The maximum width of the image (default 400, max. 500).
    # @option opts [Integer] :height The maximum height of the image (default 400, max. 500).
    # @return [String]
    def image_to_ascii_art_by_url(url, opts = {})
      data, _status_code, _headers = image_to_ascii_art_by_url_with_http_info(url, opts)
      data
    end

    # Image to Ascii Art by URL
    # Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
    # @param url [String] The URL to the image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The maximum width of the image (default 400, max. 500).
    # @option opts [Integer] :height The maximum height of the image (default 400, max. 500).
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def image_to_ascii_art_by_url_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtApi.image_to_ascii_art_by_url ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling ArtApi.image_to_ascii_art_by_url"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "url" when calling ArtApi.image_to_ascii_art_by_url, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && url !~ pattern
        fail ArgumentError, "invalid value for 'url' when calling ArtApi.image_to_ascii_art_by_url, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'width'].nil? && opts[:'width'] > 500
        fail ArgumentError, 'invalid value for "opts[:"width"]" when calling ArtApi.image_to_ascii_art_by_url, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'width'].nil? && opts[:'width'] < 1
        fail ArgumentError, 'invalid value for "opts[:"width"]" when calling ArtApi.image_to_ascii_art_by_url, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'height'].nil? && opts[:'height'] > 500
        fail ArgumentError, 'invalid value for "opts[:"height"]" when calling ArtApi.image_to_ascii_art_by_url, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'height'].nil? && opts[:'height'] < 1
        fail ArgumentError, 'invalid value for "opts[:"height"]" when calling ArtApi.image_to_ascii_art_by_url, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/convert-image-to-ascii-txt'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"ArtApi.image_to_ascii_art_by_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtApi#image_to_ascii_art_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Random Poem
    # Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :min_lines The minimum number of lines of the poem.
    # @option opts [Integer] :max_lines The maximum number of lines of the poem.
    # @return [RandomPoem200Response]
    def random_poem(opts = {})
      data, _status_code, _headers = random_poem_with_http_info(opts)
      data
    end

    # Random Poem
    # Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :min_lines The minimum number of lines of the poem.
    # @option opts [Integer] :max_lines The maximum number of lines of the poem.
    # @return [Array<(RandomPoem200Response, Integer, Hash)>] RandomPoem200Response data, response status code and response headers
    def random_poem_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtApi.random_poem ...'
      end
      if @api_client.config.client_side_validation && !opts[:'min_lines'].nil? && opts[:'min_lines'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"min_lines"]" when calling ArtApi.random_poem, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_lines'].nil? && opts[:'min_lines'] < 0
        fail ArgumentError, 'invalid value for "opts[:"min_lines"]" when calling ArtApi.random_poem, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_lines'].nil? && opts[:'max_lines'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"max_lines"]" when calling ArtApi.random_poem, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'max_lines'].nil? && opts[:'max_lines'] < 0
        fail ArgumentError, 'invalid value for "opts[:"max_lines"]" when calling ArtApi.random_poem, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/retrieve-random-poem'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'min-lines'] = opts[:'min_lines'] if !opts[:'min_lines'].nil?
      query_params[:'max-lines'] = opts[:'max_lines'] if !opts[:'max_lines'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RandomPoem200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"ArtApi.random_poem",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtApi#random_poem\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
