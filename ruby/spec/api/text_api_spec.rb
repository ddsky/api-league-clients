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

# Unit tests for OpenapiClient::TextApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TextApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::TextApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TextApi' do
    it 'should create an instance of TextApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::TextApi)
    end
  end

  # unit tests for correct_spelling_api
  # Correct Spelling API
  # The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
  # @param text The text to be corrected.
  # @param language The language of the text, one of en, de, es, fr, or it.
  # @param [Hash] opts the optional parameters
  # @return [CorrectSpellingAPI200Response]
  describe 'correct_spelling_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for detect_gender_by_name_api
  # Detect Gender by Name API
  # Detect the likelihood that a name is given to a male or female (aka to \&quot;genderize\&quot; a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
  # @param name The name of the perso for which the sentiment should be detected.
  # @param [Hash] opts the optional parameters
  # @return [DetectGenderByNameAPI200Response]
  describe 'detect_gender_by_name_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for detect_language_api
  # Detect Language API
  # Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
  # @param text The text for which the language should be detected.
  # @param [Hash] opts the optional parameters
  # @return [Array<DetectLanguageAPI200ResponseInner>]
  describe 'detect_language_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for detect_sentiment_api
  # Detect Sentiment API
  # Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
  # @param text The text for which the sentiment should be detected.
  # @param [Hash] opts the optional parameters
  # @return [DetectSentimentAPI200Response]
  describe 'detect_sentiment_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extract_dates_api
  # Extract Dates API
  # Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).
  # @param text The text from which dates should be extracted.
  # @param [Hash] opts the optional parameters
  # @return [ExtractDatesAPI200Response]
  describe 'extract_dates_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extract_entities_api
  # Extract Entities API
  # Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
  # @param text The text from which entities should be extracted.
  # @param [Hash] opts the optional parameters
  # @return [ExtractEntitiesAPI200Response]
  describe 'extract_entities_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_word_synonyms_api
  # List Word Synonyms API
  # Return synonyms of a word.
  # @param word The (noun) word for which a list of synonyms should be returned.
  # @param [Hash] opts the optional parameters
  # @return [ListWordSynonymsAPI200Response]
  describe 'list_word_synonyms_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for pluralize_word_api
  # Pluralize Word API
  # Find the plural form of a word.
  # @param word The (noun) word for which the plural form should be found.
  # @param [Hash] opts the optional parameters
  # @return [PluralizeWordAPI200Response]
  describe 'pluralize_word_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for score_readability_api
  # Score Readability API
  # Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
  # @param text The text to score for readability.
  # @param [Hash] opts the optional parameters
  # @return [ScoreReadabilityAPI200Response]
  describe 'score_readability_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for score_text_api
  # Score Text API
  # Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
  # @param title The title of the text to score.
  # @param text The text to score for multiple metrics.
  # @param [Hash] opts the optional parameters
  # @return [ScoreTextAPI200Response]
  describe 'score_text_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for singularize_word_api
  # Singularize Word API
  # Find the singular form of a word.
  # @param word The (noun) word for which the singular form should be found.
  # @param [Hash] opts the optional parameters
  # @return [SingularizeWordAPI200Response]
  describe 'singularize_word_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for stem_text_api
  # Stem Text API
  # The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
  # @param text The text to be stemmed.
  # @param [Hash] opts the optional parameters
  # @return [StemTextAPI200Response]
  describe 'stem_text_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tag_part_of_speech_api
  # Tag Part of Speech API
  # Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
  # @param text The text to tag the part of speech.
  # @param [Hash] opts the optional parameters
  # @return [TagPartOfSpeechAPI200Response]
  describe 'tag_part_of_speech_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
