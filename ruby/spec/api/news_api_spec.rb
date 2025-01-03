=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.4
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::NewsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NewsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::NewsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NewsApi' do
    it 'should create an instance of NewsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::NewsApi)
    end
  end

  # unit tests for extract_news_api
  # Extract News API
  # Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
  # @param url The url of the news.
  # @param analyze Whether to analyze the news (extract entities etc.)
  # @param [Hash] opts the optional parameters
  # @return [ExtractNewsAPI200Response]
  describe 'extract_news_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_news_api
  # Search News API
  # Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
  # @option opts [String] :source_countries A comma-separated list of ISO 3166 country codes from which the news should originate.
  # @option opts [String] :language The ISO 6391 language code of the news.
  # @option opts [Float] :min_sentiment The minimal sentiment of the news in range [-1,1].
  # @option opts [Float] :max_sentiment The maximal sentiment of the news in range [-1,1].
  # @option opts [String] :earliest_publish_date The news must have been published after this date.
  # @option opts [String] :latest_publish_date The news must have been published before this date.
  # @option opts [String] :news_sources A comma-separated list of news sources from which the news should originate.
  # @option opts [String] :authors A comma-separated list of author names. Only news from any of the given authors will be returned.
  # @option opts [String] :categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
  # @option opts [String] :entities Filter news by entities (ORG, PER, or LOC).
  # @option opts [String] :location_filter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
  # @option opts [String] :sort The sorting criteria (publish-time).
  # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
  # @option opts [Integer] :offset The number of news to skip in range [0,10000]
  # @option opts [Integer] :number The number of news to return in range [1,100]
  # @return [SearchNewsAPI200Response]
  describe 'search_news_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for top_news_api
  # Top News API
  # Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
  # @param source_country The ISO 3166 country code of the country for which top news should be retrieved.
  # @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
  # @option opts [Boolean] :headlines_only Whether to only return basic information such as id, title, and url of the news.
  # @return [TopNewsAPI200Response]
  describe 'top_news_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
