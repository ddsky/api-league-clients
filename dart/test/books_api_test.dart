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


/// tests for BooksApi
void main() {
  // final instance = BooksApi();

  group('tests for BooksApi', () {
    // Find Similar Books API
    //
    // Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
    //
    //Future<FindSimilarBooksAPI200Response> findSimilarBooksAPI(int id, { int number }) async
    test('test findSimilarBooksAPI', () async {
      // TODO
    });

    // Search Books API
    //
    // Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
    //
    //Future<SearchBooksAPI200Response> searchBooksAPI({ String query, int earliestPublishYear, int latestPublishYear, double minRating, double maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, bool groupResults, int offset, int number }) async
    test('test searchBooksAPI', () async {
      // TODO
    });

  });
}
