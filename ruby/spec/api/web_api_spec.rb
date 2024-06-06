=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.2.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::WebApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::WebApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebApi' do
    it 'should create an instance of WebApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::WebApi)
    end
  end

  # unit tests for extract_authors
  # Extract Authors
  # Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
  # @param url The url with the article from which authors should be extracted.
  # @param [Hash] opts the optional parameters
  # @return [ExtractAuthors200Response]
  describe 'extract_authors test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extract_content_from_a_web_page
  # Extract Content from a Web Page
  # Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
  # @param url The url for which the content will be extracted.
  # @param [Hash] opts the optional parameters
  # @return [ExtractContentFromAWebPage200Response]
  describe 'extract_content_from_a_web_page test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extract_publish_date
  # Extract Publish Date
  # Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
  # @param url The url for which the publish date should be extracted.
  # @param [Hash] opts the optional parameters
  # @return [ExtractPublishDate200Response]
  describe 'extract_publish_date test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for retrieve_page_rank
  # Retrieve Page Rank
  # This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
  # @param domain The domain for which the page rank should be returned.
  # @param [Hash] opts the optional parameters
  # @return [RetrievePageRank200Response]
  describe 'retrieve_page_rank test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_web
  # Search Web
  # Search the web for a given query. The API returns a list of results with the title, summary, and URL.
  # @param query The search query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :number The number of results to return in range [1,50]
  # @return [SearchWeb200Response]
  describe 'search_web test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
