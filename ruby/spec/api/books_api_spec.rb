=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

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

  # unit tests for find_similar_books
  # Find Similar Books
  # Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
  # @param id The id of the book to which similar books should be found.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :number The number of similar books to return in range [1,100]
  # @return [InlineResponse2001]
  describe 'find_similar_books test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_books
  # Search Books
  # Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query The search query.
  # @option opts [Float] :earliest_publish_year The books must have been published after this year.
  # @option opts [Float] :latest_publish_year The books must have been published before this year.
  # @option opts [Float] :min_rating The minimum rating the book must have gotten in the interval [0,1].
  # @option opts [Float] :max_rating The maximum rating the book must have gotten in the interval [0,1].
  # @option opts [String] :genres A comma-separated list of  genres. Only books from any of the given genres will be returned.
  # @option opts [String] :authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
  # @option opts [String] :isbn Only the book matching the ISBN-13 will be returned
  # @option opts [String] :oclc Only the book matching the OCLC will be returned
  # @option opts [String] :sort The sorting criteria (publish-date or rating).
  # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
  # @option opts [Boolean] :group_results Whether to group similar editions of the same book.
  # @option opts [Float] :offset The number of books to skip in range [0,1000]
  # @option opts [Float] :number The number of books to return in range [1,100]
  # @return [InlineResponse200]
  describe 'search_books test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
