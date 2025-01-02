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

# Unit tests for OpenapiClient::BooksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BooksApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::BooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BooksApi' do
    it 'should create an instance of BooksApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::BooksApi)
    end
  end

  # unit tests for find_similar_books_api
  # Find Similar Books API
  # Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
  # @param id The id of the book to which similar books should be found.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :number The number of similar books to return in range [1,100]
  # @return [FindSimilarBooksAPI200Response]
  describe 'find_similar_books_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_books_api
  # Search Books API
  # Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query The search query.
  # @option opts [Integer] :earliest_publish_year The books must have been published after this year.
  # @option opts [Integer] :latest_publish_year The books must have been published before this year.
  # @option opts [Float] :min_rating The minimum rating the book must have gotten in the interval [0,1].
  # @option opts [Float] :max_rating The maximum rating the book must have gotten in the interval [0,1].
  # @option opts [String] :genres A comma-separated list of genres. Only books from any of the given genres will be returned.
  # @option opts [String] :authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
  # @option opts [String] :isbn Only the book matching the ISBN-13 will be returned
  # @option opts [String] :oclc Only the book matching the OCLC will be returned
  # @option opts [String] :sort The sorting criteria (publish-date or rating).
  # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
  # @option opts [Boolean] :group_results Whether to group similar editions of the same book.
  # @option opts [Integer] :offset The number of books to skip in range [0,1000]
  # @option opts [Integer] :number The number of books to return in range [1,100]
  # @return [SearchBooksAPI200Response]
  describe 'search_books_api test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
