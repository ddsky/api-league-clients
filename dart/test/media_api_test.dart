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
    // Detect Main Image Color
    //
    // Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
    //
    //Future<List<DetectMainImageColor200ResponseInner>> detectMainImageColor(String url) async
    test('test detectMainImageColor', () async {
      // TODO
    });

    // Rescale Image
    //
    // Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
    //
    //Future<MultipartFile> rescaleImage(String url, int width, int height, bool crop) async
    test('test rescaleImage', () async {
      // TODO
    });

    // Search Icons
    //
    // Search through millions of icons to match any topic you want.
    //
    //Future<SearchIcons200Response> searchIcons(String query, { bool onlyPublicDomain, int number }) async
    test('test searchIcons', () async {
      // TODO
    });

    // Search Royalty Free Images
    //
    // Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
    //
    //Future<SearchRoyaltyFreeImages200Response> searchRoyaltyFreeImages(String query, { int number }) async
    test('test searchRoyaltyFreeImages', () async {
      // TODO
    });

  });
}
