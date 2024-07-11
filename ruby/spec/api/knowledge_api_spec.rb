=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.4.1
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::KnowledgeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'KnowledgeApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::KnowledgeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KnowledgeApi' do
    it 'should create an instance of KnowledgeApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::KnowledgeApi)
    end
  end

  # unit tests for random_quote
  # Random Quote
  # This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :min_length The minimum length of the quote in letters.
  # @option opts [Integer] :max_length The maximum length of the quote in letters.
  # @return [RandomQuote200Response]
  describe 'random_quote test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for random_riddle
  # Random Riddle
  # The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :difficulty The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
  # @return [RandomRiddle200Response]
  describe 'random_riddle test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for random_trivia
  # Random Trivia
  # This endpoint returns a random piece of trivia.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_length The maximum length of the trivia in letters.
  # @return [RandomTrivia200Response]
  describe 'random_trivia test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
