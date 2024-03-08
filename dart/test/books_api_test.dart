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


/// tests for BooksApi
void main() {
  // final instance = BooksApi();

  group('tests for BooksApi', () {
    // Find Similar Books
    //
    // Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
    //
    //Future<FindSimilarBooks200Response> findSimilarBooks(int id, { int number }) async
    test('test findSimilarBooks', () async {
      // TODO
    });

    // Search Books
    //
    // Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.
    //
    //Future<SearchBooks200Response> searchBooks({ String query, int earliestPublishYear, int latestPublishYear, double minRating, double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, bool groupResults, int offset, int number }) async
    test('test searchBooks', () async {
      // TODO
    });

  });
}
