//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for NewsApi
void main() {
  // final instance = NewsApi();

  group('tests for NewsApi', () {
    // Extract News
    //
    // Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
    //
    //Future<ExtractNews200Response> extractNews(String url, bool analyze) async
    test('test extractNews', () async {
      // TODO
    });

    // Search News
    //
    // Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
    //
    //Future<SearchNews200Response> searchNews({ String text, String sourceCountries, String language, double minSentiment, double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String entities, String locationFilter, String sort, String sortDirection, int offset, int number }) async
    test('test searchNews', () async {
      // TODO
    });

  });
}
