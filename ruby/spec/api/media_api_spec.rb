=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.3
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MediaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MediaApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MediaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MediaApi' do
    it 'should create an instance of MediaApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MediaApi)
    end
  end

  # unit tests for detect_main_image_color
  # Detect Main Image Color
  # Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
  # @param url The url of the image for which the colors should be detected.
  # @param [Hash] opts the optional parameters
  # @return [Array<DetectMainImageColor200ResponseInner>]
  describe 'detect_main_image_color test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for rescale_image
  # Rescale Image
  # Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
  # @param url The url of the image to be rescaled.
  # @param width The desired width of the rescaled image.
  # @param height The desired height of the rescaled image.
  # @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'rescale_image test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_icons
  # Search Icons
  # Search through millions of icons to match any topic you want.
  # @param query The search query.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :only_public_domain If true, only public domain icons will be returned.
  # @option opts [Integer] :number The number of icons to return in range [1,100]
  # @return [SearchIcons200Response]
  describe 'search_icons test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_royalty_free_images
  # Search Royalty Free Images
  # Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
  # @param query The search query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :number The number of images to return in range [1,100]
  # @return [SearchRoyaltyFreeImages200Response]
  describe 'search_royalty_free_images test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
