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


/// tests for NewsApi
void main() {
  // final instance = NewsApi();

  group('tests for NewsApi', () {
    // Extract News API
    //
    // Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
    //
    //Future<ExtractNewsAPI200Response> extractNewsAPI(String url, bool analyze) async
    test('test extractNewsAPI', () async {
      // TODO
    });

    // Search News API
    //
    // Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
    //
    //Future<SearchNewsAPI200Response> searchNewsAPI({ String text, String sourceCountries, String language, double minSentiment, double maxSentiment, String earliestPublishDate, String latestPublishDate, String newsSources, String authors, String categories, String entities, String locationFilter, String sort, String sortDirection, int offset, int number }) async
    test('test searchNewsAPI', () async {
      // TODO
    });

    // Top News API
    //
    // Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
    //
    //Future<TopNewsAPI200Response> topNewsAPI(String sourceCountry, String language, { String date, bool headlinesOnly }) async
    test('test topNewsAPI', () async {
      // TODO
    });

  });
}
