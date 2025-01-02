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
    // Generate Nonsense Word API
    //
    // Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
    //
    //Future<GenerateNonsenseWordAPI200Response> generateNonsenseWordAPI() async
    test('test generateNonsenseWordAPI', () async {
      // TODO
    });

    // Random Joke API
    //
    // This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
    //
    //Future<SearchJokesAPI200ResponseJokesInner> randomJokeAPI({ String includeTags, String excludeTags, double minRating, int maxLength }) async
    test('test randomJokeAPI', () async {
      // TODO
    });

    // Random Meme API
    //
    // Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
    //
    //Future<RandomMemeAPI200Response> randomMemeAPI({ String keywords, bool keywordsInImage, String mediaType, double minRating, int maxAgeDays }) async
    test('test randomMemeAPI', () async {
      // TODO
    });

    // Search Gifs API
    //
    // Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
    //
    //Future<SearchGifsAPI200Response> searchGifsAPI(String query, { int number }) async
    test('test searchGifsAPI', () async {
      // TODO
    });

    // Search Jokes API
    //
    // With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
    //
    //Future<SearchJokesAPI200Response> searchJokesAPI({ String keywords, String includeTags, String excludeTags, double minRating, double maxLength, int offset, int number }) async
    test('test searchJokesAPI', () async {
      // TODO
    });

    // Search Memes API
    //
    // Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.
    //
    //Future<SearchMemesAPI200Response> searchMemesAPI({ String keywords, bool keywordsInImage, String mediaType, double minRating, int maxAgeDays, int offset, int number }) async
    test('test searchMemesAPI', () async {
      // TODO
    });

  });
}
