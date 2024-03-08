=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MathApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MathApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MathApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MathApi' do
    it 'should create an instance of MathApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MathApi)
    end
  end

  # unit tests for convert_units
  # Convert Units
  # Convert units from one to another. The API returns the amount and the unit of the target unit.
  # @param source_amount The source amount.
  # @param source_unit The source unit.
  # @param target_unit The unit to which should be converted.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :food_name An optional food name. For converting foods the food is relevant as they have different densities.
  # @return [ConvertUnits200Response]
  describe 'convert_units test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
