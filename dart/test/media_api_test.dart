//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MediaApi
void main() {
  // final instance = MediaApi();

  group('tests for MediaApi', () {
    // Detect Main Image Color API
    //
    // Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
    //
    //Future<List<DetectMainImageColorAPI200ResponseInner>> detectMainImageColorAPI(String url) async
    test('test detectMainImageColorAPI', () async {
      // TODO
    });

    // Rescale Image API
    //
    // Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
    //
    //Future<MultipartFile> rescaleImageAPI(String url, int width, int height, bool crop) async
    test('test rescaleImageAPI', () async {
      // TODO
    });

    // Search Icons API
    //
    // Search through millions of icons to match any topic you want.
    //
    //Future<SearchIconsAPI200Response> searchIconsAPI(String query, { bool onlyPublicDomain, int number }) async
    test('test searchIconsAPI', () async {
      // TODO
    });

    // Search Royalty Free Images API
    //
    // Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
    //
    //Future<SearchRoyaltyFreeImagesAPI200Response> searchRoyaltyFreeImagesAPI(String query, { int number }) async
    test('test searchRoyaltyFreeImagesAPI', () async {
      // TODO
    });

    // Vector Search API
    //
    // Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
    //
    //Future<VectorSearchAPI200Response> vectorSearchAPI(String query, { int offset, int number }) async
    test('test vectorSearchAPI', () async {
      // TODO
    });

  });
}
