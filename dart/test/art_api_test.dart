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


/// tests for ArtApi
void main() {
  // final instance = ArtApi();

  group('tests for ArtApi', () {
    // Art Search API
    //
    // Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
    //
    //Future<ArtSearchAPI200Response> artSearchAPI({ String query, int earliestStartDate, int latestStartDate, int earliestEndDate, int latestEndDate, double minRatio, double maxRatio, String type, String material, String technique, String origin, int offset, int number }) async
    test('test artSearchAPI', () async {
      // TODO
    });

    // Image to Ascii Art by URL API
    //
    // Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
    //
    //Future<String> imageToAsciiArtByURLAPI(String url, { int width, int height }) async
    test('test imageToAsciiArtByURLAPI', () async {
      // TODO
    });

    // Random Poem API
    //
    // Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
    //
    //Future<RandomPoemAPI200Response> randomPoemAPI({ int minLines, int maxLines }) async
    test('test randomPoemAPI', () async {
      // TODO
    });

    // Retrieve Artwork by Id
    //
    // Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
    //
    //Future<RetrieveArtworkById200Response> retrieveArtworkById(int id) async
    test('test retrieveArtworkById', () async {
      // TODO
    });

  });
}
