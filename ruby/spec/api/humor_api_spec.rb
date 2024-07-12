=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.4.2
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::HumorApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HumorApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::HumorApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HumorApi' do
    it 'should create an instance of HumorApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::HumorApi)
    end
  end

  # unit tests for generate_nonsense_word
  # Generate Nonsense Word
  # Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
  # @param [Hash] opts the optional parameters
  # @return [GenerateNonsenseWord200Response]
  describe 'generate_nonsense_word test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for random_joke
  # Random Joke
  # This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_tags A comma-separated list of tags the jokes should have.
  # @option opts [String] :exclude_tags A comma-separated list of tags the jokes must not have.
  # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the jokes.
  # @option opts [Integer] :max_length The maximum length of the joke in letters.
  # @return [SearchJokes200ResponseJokesInner]
  describe 'random_joke test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for random_meme
  # Random Meme
  # Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :keywords A comma-separated list of words that must occur in the meme.
  # @option opts [Boolean] :keywords_in_image Whether the keywords must occur in the image.
  # @option opts [String] :media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
  # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the meme.
  # @option opts [Integer] :max_age_days The maximum age of the meme in days.
  # @return [RandomMeme200Response]
  describe 'random_meme test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_gifs
  # Search Gifs
  # Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
  # @param query The search query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :number The number of gifs to return in range [1,10]
  # @return [SearchGifs200Response]
  describe 'search_gifs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_jokes
  # Search Jokes
  # With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :keywords A comma-separated list of words that must occur in the joke.
  # @option opts [String] :include_tags A comma-separated list of tags the jokes should have.
  # @option opts [String] :exclude_tags A comma-separated list of tags the jokes must not have.
  # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the jokes.
  # @option opts [Float] :max_length The maximum length of the joke in letters.
  # @option opts [Integer] :offset The number of jokes to skip, between 0 and 1000.
  # @option opts [Integer] :number The number of jokes, between 1 and 10.
  # @return [SearchJokes200Response]
  describe 'search_jokes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_memes
  # Search Memes
  # With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :keywords A comma-separated list of words that must occur in the meme.
  # @option opts [Boolean] :keywords_in_image Whether the keywords must occur in the image.
  # @option opts [String] :media_type The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
  # @option opts [Float] :min_rating The minimum rating in range [0.0,1.0] of the meme.
  # @option opts [Integer] :max_age_days The maximum age of the meme in days.
  # @option opts [Integer] :offset The number of memes to skip, between 0 and 1000.
  # @option opts [Integer] :number The number of memes, between 1 and 10.
  # @return [SearchMemes200Response]
  describe 'search_memes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
