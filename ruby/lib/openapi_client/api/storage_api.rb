=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.2.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module OpenapiClient
  class StorageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Read Key Value from Store
    # Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
    # @param key [String] The key for which the value is stored (max length 255 characters).
    # @param [Hash] opts the optional parameters
    # @return [ReadKeyValueFromStore200Response]
    def read_key_value_from_store(key, opts = {})
      data, _status_code, _headers = read_key_value_from_store_with_http_info(key, opts)
      data
    end

    # Read Key Value from Store
    # Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
    # @param key [String] The key for which the value is stored (max length 255 characters).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReadKeyValueFromStore200Response, Integer, Hash)>] ReadKeyValueFromStore200Response data, response status code and response headers
    def read_key_value_from_store_with_http_info(key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.read_key_value_from_store ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling StorageApi.read_key_value_from_store"
      end
      if @api_client.config.client_side_validation && key.to_s.length > 255
        fail ArgumentError, 'invalid value for "key" when calling StorageApi.read_key_value_from_store, the character length must be smaller than or equal to 255.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && key !~ pattern
        fail ArgumentError, "invalid value for 'key' when calling StorageApi.read_key_value_from_store, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/read-key-value'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = key

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ReadKeyValueFromStore200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"StorageApi.read_key_value_from_store",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageApi#read_key_value_from_store\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Store Key Value (GET)
    # Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
    # @param key [String] The key for which the value is stored (max length 255 characters).
    # @param value [String] The value that is supposed to be stored (max length 10,000 characters).
    # @param [Hash] opts the optional parameters
    # @return [StoreKeyValueGET200Response]
    def store_key_value_get(key, value, opts = {})
      data, _status_code, _headers = store_key_value_get_with_http_info(key, value, opts)
      data
    end

    # Store Key Value (GET)
    # Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
    # @param key [String] The key for which the value is stored (max length 255 characters).
    # @param value [String] The value that is supposed to be stored (max length 10,000 characters).
    # @param [Hash] opts the optional parameters
    # @return [Array<(StoreKeyValueGET200Response, Integer, Hash)>] StoreKeyValueGET200Response data, response status code and response headers
    def store_key_value_get_with_http_info(key, value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageApi.store_key_value_get ...'
      end
      # verify the required parameter 'key' is set
      if @api_client.config.client_side_validation && key.nil?
        fail ArgumentError, "Missing the required parameter 'key' when calling StorageApi.store_key_value_get"
      end
      if @api_client.config.client_side_validation && key.to_s.length > 255
        fail ArgumentError, 'invalid value for "key" when calling StorageApi.store_key_value_get, the character length must be smaller than or equal to 255.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && key !~ pattern
        fail ArgumentError, "invalid value for 'key' when calling StorageApi.store_key_value_get, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling StorageApi.store_key_value_get"
      end
      if @api_client.config.client_side_validation && value.to_s.length > 10000
        fail ArgumentError, 'invalid value for "value" when calling StorageApi.store_key_value_get, the character length must be smaller than or equal to 10000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && value !~ pattern
        fail ArgumentError, "invalid value for 'value' when calling StorageApi.store_key_value_get, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/store-key-value'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'key'] = key
      query_params[:'value'] = value

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StoreKeyValueGET200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"StorageApi.store_key_value_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageApi#store_key_value_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
