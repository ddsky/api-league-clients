=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.4.2
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module OpenapiClient
  class MediaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Detect Main Image Color
    # Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
    # @param url [String] The url of the image for which the colors should be detected.
    # @param [Hash] opts the optional parameters
    # @return [Array<DetectMainImageColor200ResponseInner>]
    def detect_main_image_color(url, opts = {})
      data, _status_code, _headers = detect_main_image_color_with_http_info(url, opts)
      data
    end

    # Detect Main Image Color
    # Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
    # @param url [String] The url of the image for which the colors should be detected.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DetectMainImageColor200ResponseInner>, Integer, Hash)>] Array<DetectMainImageColor200ResponseInner> data, response status code and response headers
    def detect_main_image_color_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MediaApi.detect_main_image_color ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling MediaApi.detect_main_image_color"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "url" when calling MediaApi.detect_main_image_color, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && url !~ pattern
        fail ArgumentError, "invalid value for 'url' when calling MediaApi.detect_main_image_color, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/detect-color'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<DetectMainImageColor200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"MediaApi.detect_main_image_color",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaApi#detect_main_image_color\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rescale Image
    # Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
    # @param url [String] The url of the image to be rescaled.
    # @param width [Integer] The desired width of the rescaled image.
    # @param height [Integer] The desired height of the rescaled image.
    # @param crop [Boolean] Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def rescale_image(url, width, height, crop, opts = {})
      data, _status_code, _headers = rescale_image_with_http_info(url, width, height, crop, opts)
      data
    end

    # Rescale Image
    # Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
    # @param url [String] The url of the image to be rescaled.
    # @param width [Integer] The desired width of the rescaled image.
    # @param height [Integer] The desired height of the rescaled image.
    # @param crop [Boolean] Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def rescale_image_with_http_info(url, width, height, crop, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MediaApi.rescale_image ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling MediaApi.rescale_image"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "url" when calling MediaApi.rescale_image, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && url !~ pattern
        fail ArgumentError, "invalid value for 'url' when calling MediaApi.rescale_image, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling MediaApi.rescale_image"
      end
      if @api_client.config.client_side_validation && width > 5000
        fail ArgumentError, 'invalid value for "width" when calling MediaApi.rescale_image, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && width < 1
        fail ArgumentError, 'invalid value for "width" when calling MediaApi.rescale_image, must be greater than or equal to 1.'
      end

      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling MediaApi.rescale_image"
      end
      if @api_client.config.client_side_validation && height > 5000
        fail ArgumentError, 'invalid value for "height" when calling MediaApi.rescale_image, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && height < 1
        fail ArgumentError, 'invalid value for "height" when calling MediaApi.rescale_image, must be greater than or equal to 1.'
      end

      # verify the required parameter 'crop' is set
      if @api_client.config.client_side_validation && crop.nil?
        fail ArgumentError, "Missing the required parameter 'crop' when calling MediaApi.rescale_image"
      end
      # resource path
      local_var_path = '/rescale-image'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url
      query_params[:'width'] = width
      query_params[:'height'] = height
      query_params[:'crop'] = crop

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"MediaApi.rescale_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaApi#rescale_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Royalty Free Images
    # Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of images to return in range [1,10]
    # @return [SearchRoyaltyFreeImages200Response]
    def search_royalty_free_images(query, opts = {})
      data, _status_code, _headers = search_royalty_free_images_with_http_info(query, opts)
      data
    end

    # Search Royalty Free Images
    # Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of images to return in range [1,10]
    # @return [Array<(SearchRoyaltyFreeImages200Response, Integer, Hash)>] SearchRoyaltyFreeImages200Response data, response status code and response headers
    def search_royalty_free_images_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MediaApi.search_royalty_free_images ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MediaApi.search_royalty_free_images"
      end
      if @api_client.config.client_side_validation && query.to_s.length > 300
        fail ArgumentError, 'invalid value for "query" when calling MediaApi.search_royalty_free_images, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && query !~ pattern
        fail ArgumentError, "invalid value for 'query' when calling MediaApi.search_royalty_free_images, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 10
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MediaApi.search_royalty_free_images, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling MediaApi.search_royalty_free_images, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/search-images'

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
      return_type = opts[:debug_return_type] || 'SearchRoyaltyFreeImages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"MediaApi.search_royalty_free_images",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaApi#search_royalty_free_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
