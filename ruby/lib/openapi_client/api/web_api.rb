=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.3.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module OpenapiClient
  class WebApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Extract Authors
    # Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
    # @param url [String] The url with the article from which authors should be extracted.
    # @param [Hash] opts the optional parameters
    # @return [ExtractAuthors200Response]
    def extract_authors(url, opts = {})
      data, _status_code, _headers = extract_authors_with_http_info(url, opts)
      data
    end

    # Extract Authors
    # Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
    # @param url [String] The url with the article from which authors should be extracted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExtractAuthors200Response, Integer, Hash)>] ExtractAuthors200Response data, response status code and response headers
    def extract_authors_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebApi.extract_authors ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling WebApi.extract_authors"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "url" when calling WebApi.extract_authors, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && url !~ pattern
        fail ArgumentError, "invalid value for 'url' when calling WebApi.extract_authors, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/extract-authors'

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
      return_type = opts[:debug_return_type] || 'ExtractAuthors200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"WebApi.extract_authors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebApi#extract_authors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract Content from a Web Page
    # Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
    # @param url [String] The url for which the content will be extracted.
    # @param [Hash] opts the optional parameters
    # @return [ExtractContentFromAWebPage200Response]
    def extract_content_from_a_web_page(url, opts = {})
      data, _status_code, _headers = extract_content_from_a_web_page_with_http_info(url, opts)
      data
    end

    # Extract Content from a Web Page
    # Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
    # @param url [String] The url for which the content will be extracted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExtractContentFromAWebPage200Response, Integer, Hash)>] ExtractContentFromAWebPage200Response data, response status code and response headers
    def extract_content_from_a_web_page_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebApi.extract_content_from_a_web_page ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling WebApi.extract_content_from_a_web_page"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "url" when calling WebApi.extract_content_from_a_web_page, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && url !~ pattern
        fail ArgumentError, "invalid value for 'url' when calling WebApi.extract_content_from_a_web_page, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/extract-content'

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
      return_type = opts[:debug_return_type] || 'ExtractContentFromAWebPage200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"WebApi.extract_content_from_a_web_page",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebApi#extract_content_from_a_web_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract Publish Date
    # Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
    # @param url [String] The url for which the publish date should be extracted.
    # @param [Hash] opts the optional parameters
    # @return [ExtractPublishDate200Response]
    def extract_publish_date(url, opts = {})
      data, _status_code, _headers = extract_publish_date_with_http_info(url, opts)
      data
    end

    # Extract Publish Date
    # Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
    # @param url [String] The url for which the publish date should be extracted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExtractPublishDate200Response, Integer, Hash)>] ExtractPublishDate200Response data, response status code and response headers
    def extract_publish_date_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebApi.extract_publish_date ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling WebApi.extract_publish_date"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 1000
        fail ArgumentError, 'invalid value for "url" when calling WebApi.extract_publish_date, the character length must be smaller than or equal to 1000.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && url !~ pattern
        fail ArgumentError, "invalid value for 'url' when calling WebApi.extract_publish_date, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/extract-publish-date'

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
      return_type = opts[:debug_return_type] || 'ExtractPublishDate200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"WebApi.extract_publish_date",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebApi#extract_publish_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Page Rank
    # This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
    # @param domain [String] The domain for which the page rank should be returned.
    # @param [Hash] opts the optional parameters
    # @return [RetrievePageRank200Response]
    def retrieve_page_rank(domain, opts = {})
      data, _status_code, _headers = retrieve_page_rank_with_http_info(domain, opts)
      data
    end

    # Retrieve Page Rank
    # This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
    # @param domain [String] The domain for which the page rank should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrievePageRank200Response, Integer, Hash)>] RetrievePageRank200Response data, response status code and response headers
    def retrieve_page_rank_with_http_info(domain, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebApi.retrieve_page_rank ...'
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling WebApi.retrieve_page_rank"
      end
      if @api_client.config.client_side_validation && domain.to_s.length > 100
        fail ArgumentError, 'invalid value for "domain" when calling WebApi.retrieve_page_rank, the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && domain !~ pattern
        fail ArgumentError, "invalid value for 'domain' when calling WebApi.retrieve_page_rank, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/retrieve-page-rank'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'domain'] = domain

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RetrievePageRank200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"WebApi.retrieve_page_rank",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebApi#retrieve_page_rank\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Web
    # Search the web for a given query. The API returns a list of results with the title, summary, and URL.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of results to return in range [1,50]
    # @return [SearchWeb200Response]
    def search_web(query, opts = {})
      data, _status_code, _headers = search_web_with_http_info(query, opts)
      data
    end

    # Search Web
    # Search the web for a given query. The API returns a list of results with the title, summary, and URL.
    # @param query [String] The search query.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :number The number of results to return in range [1,50]
    # @return [Array<(SearchWeb200Response, Integer, Hash)>] SearchWeb200Response data, response status code and response headers
    def search_web_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebApi.search_web ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling WebApi.search_web"
      end
      if @api_client.config.client_side_validation && query.to_s.length > 300
        fail ArgumentError, 'invalid value for "query" when calling WebApi.search_web, the character length must be smaller than or equal to 300.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && query !~ pattern
        fail ArgumentError, "invalid value for 'query' when calling WebApi.search_web, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] > 50
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling WebApi.search_web, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'] < 1
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling WebApi.search_web, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/search-web'

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
      return_type = opts[:debug_return_type] || 'SearchWeb200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"WebApi.search_web",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebApi#search_web\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Email Address
    # This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
    # @param email [String] The email address to verify.
    # @param [Hash] opts the optional parameters
    # @return [VerifyEmailAddress200Response]
    def verify_email_address(email, opts = {})
      data, _status_code, _headers = verify_email_address_with_http_info(email, opts)
      data
    end

    # Verify Email Address
    # This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
    # @param email [String] The email address to verify.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VerifyEmailAddress200Response, Integer, Hash)>] VerifyEmailAddress200Response data, response status code and response headers
    def verify_email_address_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebApi.verify_email_address ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling WebApi.verify_email_address"
      end
      if @api_client.config.client_side_validation && email.to_s.length > 100
        fail ArgumentError, 'invalid value for "email" when calling WebApi.verify_email_address, the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/./)
      if @api_client.config.client_side_validation && email !~ pattern
        fail ArgumentError, "invalid value for 'email' when calling WebApi.verify_email_address, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/verify-email'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = email

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VerifyEmailAddress200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"WebApi.verify_email_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebApi#verify_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
