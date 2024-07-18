=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.5.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::StorageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StorageApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::StorageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StorageApi' do
    it 'should create an instance of StorageApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::StorageApi)
    end
  end

  # unit tests for read_key_value_from_store
  # Read Key Value from Store
  # Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
  # @param key The key for which the value is stored (max length 255 characters).
  # @param [Hash] opts the optional parameters
  # @return [ReadKeyValueFromStore200Response]
  describe 'read_key_value_from_store test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for store_key_value_get
  # Store Key Value (GET)
  # Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
  # @param key The key for which the value is stored (max length 255 characters).
  # @param value The value that is supposed to be stored (max length 10,000 characters).
  # @param [Hash] opts the optional parameters
  # @return [StoreKeyValueGET200Response]
  describe 'store_key_value_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
