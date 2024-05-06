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


/// tests for HumorApi
void main() {
  // final instance = HumorApi();

  group('tests for HumorApi', () {
    // Generate Nonsense Word
    //
    // Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
    //
    //Future<GenerateNonsenseWord200Response> generateNonsenseWord() async
    test('test generateNonsenseWord', () async {
      // TODO
    });

    // Random Joke
    //
    // This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
    //
    //Future<SearchJokes200ResponseJokesInner> randomJoke({ String includeTags, String excludeTags, double minRating, int maxLength }) async
    test('test randomJoke', () async {
      // TODO
    });

    // Random Meme
    //
    // Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
    //
    //Future<RandomMeme200Response> randomMeme({ String keywords, bool keywordsInImage, String mediaType, double minRating, int maxAgeDays }) async
    test('test randomMeme', () async {
      // TODO
    });

    // Search Gifs
    //
    // Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
    //
    //Future<SearchGifs200Response> searchGifs(String query, { int number }) async
    test('test searchGifs', () async {
      // TODO
    });

    // Search Jokes
    //
    // With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
    //
    //Future<SearchJokes200Response> searchJokes({ String keywords, String includeTags, String excludeTags, double minRating, double maxLength, int offset, int number }) async
    test('test searchJokes', () async {
      // TODO
    });

    // Search Memes
    //
    // With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
    //
    //Future<SearchMemes200Response> searchMemes({ String keywords, bool keywordsInImage, String mediaType, double minRating, int maxAgeDays, int offset, int number }) async
    test('test searchMemes', () async {
      // TODO
    });

  });
}
