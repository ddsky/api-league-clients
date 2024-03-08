//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HumorApi {
  HumorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Generate Nonsense Word
  ///
  /// Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> generateNonsenseWordWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/generate-nonsense-word';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Generate Nonsense Word
  ///
  /// Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
  Future<GenerateNonsenseWord200Response?> generateNonsenseWord() async {
    final response = await generateNonsenseWordWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateNonsenseWord200Response',) as GenerateNonsenseWord200Response;
    
    }
    return null;
  }

  /// Random Joke
  ///
  /// This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] includeTags:
  ///   A comma-separated list of tags the jokes should have.
  ///
  /// * [String] excludeTags:
  ///   A comma-separated list of tags the jokes must not have.
  ///
  /// * [double] minRating:
  ///   The minimum rating in range [0.0,1.0] of the jokes.
  ///
  /// * [int] maxLength:
  ///   The maximum length of the joke in letters.
  Future<Response> randomJokeWithHttpInfo({ String? includeTags, String? excludeTags, double? minRating, int? maxLength, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-joke';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeTags != null) {
      queryParams.addAll(_queryParams('', 'include-tags', includeTags));
    }
    if (excludeTags != null) {
      queryParams.addAll(_queryParams('', 'exclude-tags', excludeTags));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'max-length', maxLength));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Random Joke
  ///
  /// This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
  ///
  /// Parameters:
  ///
  /// * [String] includeTags:
  ///   A comma-separated list of tags the jokes should have.
  ///
  /// * [String] excludeTags:
  ///   A comma-separated list of tags the jokes must not have.
  ///
  /// * [double] minRating:
  ///   The minimum rating in range [0.0,1.0] of the jokes.
  ///
  /// * [int] maxLength:
  ///   The maximum length of the joke in letters.
  Future<SearchJokes200ResponseJokesInner?> randomJoke({ String? includeTags, String? excludeTags, double? minRating, int? maxLength, }) async {
    final response = await randomJokeWithHttpInfo( includeTags: includeTags, excludeTags: excludeTags, minRating: minRating, maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchJokes200ResponseJokesInner',) as SearchJokes200ResponseJokesInner;
    
    }
    return null;
  }

  /// Random Meme
  ///
  /// Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma-separated list of words that must occur in the meme.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords must occur in the image.
  ///
  /// * [String] mediaType:
  ///   The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  ///
  /// * [double] minRating:
  ///   The minimum rating in range [0.0-1.0] of the meme.
  ///
  /// * [int] maxAgeDays:
  ///   The maximum age of the meme in days.
  Future<Response> randomMemeWithHttpInfo({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-meme';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (keywordsInImage != null) {
      queryParams.addAll(_queryParams('', 'keywords-in-image', keywordsInImage));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'media-type', mediaType));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxAgeDays != null) {
      queryParams.addAll(_queryParams('', 'max-age-days', maxAgeDays));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Random Meme
  ///
  /// Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma-separated list of words that must occur in the meme.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords must occur in the image.
  ///
  /// * [String] mediaType:
  ///   The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  ///
  /// * [double] minRating:
  ///   The minimum rating in range [0.0-1.0] of the meme.
  ///
  /// * [int] maxAgeDays:
  ///   The maximum age of the meme in days.
  Future<RandomMeme200Response?> randomMeme({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, }) async {
    final response = await randomMemeWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, minRating: minRating, maxAgeDays: maxAgeDays, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomMeme200Response',) as RandomMeme200Response;
    
    }
    return null;
  }

  /// Search Gifs
  ///
  /// Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of gifs to return in range [1,10]
  Future<Response> searchGifsWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-gifs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Gifs
  ///
  /// Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of gifs to return in range [1,10]
  Future<SearchGifs200Response?> searchGifs(String query, { int? number, }) async {
    final response = await searchGifsWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchGifs200Response',) as SearchGifs200Response;
    
    }
    return null;
  }

  /// Search Jokes
  ///
  /// With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma-separated list of words that must occur in the joke.
  ///
  /// * [String] includeTags:
  ///   A comma-separated list of tags the jokes should have.
  ///
  /// * [String] excludeTags:
  ///   A comma-separated list of tags the jokes must not have.
  ///
  /// * [double] minRating:
  ///   The minimum rating (0-10) of the jokes.
  ///
  /// * [double] maxLength:
  ///   The maximum length of the joke in letters.
  ///
  /// * [int] offset:
  ///   The number of jokes to skip, between 0 and 1000.
  ///
  /// * [int] number:
  ///   The number of jokes, between 1 and 10.
  Future<Response> searchJokesWithHttpInfo({ String? keywords, String? includeTags, String? excludeTags, double? minRating, double? maxLength, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-jokes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (includeTags != null) {
      queryParams.addAll(_queryParams('', 'include-tags', includeTags));
    }
    if (excludeTags != null) {
      queryParams.addAll(_queryParams('', 'exclude-tags', excludeTags));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxLength != null) {
      queryParams.addAll(_queryParams('', 'max-length', maxLength));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Jokes
  ///
  /// With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma-separated list of words that must occur in the joke.
  ///
  /// * [String] includeTags:
  ///   A comma-separated list of tags the jokes should have.
  ///
  /// * [String] excludeTags:
  ///   A comma-separated list of tags the jokes must not have.
  ///
  /// * [double] minRating:
  ///   The minimum rating (0-10) of the jokes.
  ///
  /// * [double] maxLength:
  ///   The maximum length of the joke in letters.
  ///
  /// * [int] offset:
  ///   The number of jokes to skip, between 0 and 1000.
  ///
  /// * [int] number:
  ///   The number of jokes, between 1 and 10.
  Future<SearchJokes200Response?> searchJokes({ String? keywords, String? includeTags, String? excludeTags, double? minRating, double? maxLength, int? offset, int? number, }) async {
    final response = await searchJokesWithHttpInfo( keywords: keywords, includeTags: includeTags, excludeTags: excludeTags, minRating: minRating, maxLength: maxLength, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchJokes200Response',) as SearchJokes200Response;
    
    }
    return null;
  }

  /// Search Memes
  ///
  /// With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma-separated list of words that must occur in the meme.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords must occur in the image.
  ///
  /// * [String] mediaType:
  ///   The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  ///
  /// * [double] minRating:
  ///   The minimum rating in range [0.0,1.0] of the meme.
  ///
  /// * [int] maxAgeDays:
  ///   The maximum age of the meme in days.
  ///
  /// * [int] offset:
  ///   The number of memes to skip, between 0 and 1000.
  ///
  /// * [int] number:
  ///   The number of memes, between 0 and 10.
  Future<Response> searchMemesWithHttpInfo({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-memes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keywords != null) {
      queryParams.addAll(_queryParams('', 'keywords', keywords));
    }
    if (keywordsInImage != null) {
      queryParams.addAll(_queryParams('', 'keywords-in-image', keywordsInImage));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'media-type', mediaType));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxAgeDays != null) {
      queryParams.addAll(_queryParams('', 'max-age-days', maxAgeDays));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Memes
  ///
  /// With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
  ///
  /// Parameters:
  ///
  /// * [String] keywords:
  ///   A comma-separated list of words that must occur in the meme.
  ///
  /// * [bool] keywordsInImage:
  ///   Whether the keywords must occur in the image.
  ///
  /// * [String] mediaType:
  ///   The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
  ///
  /// * [double] minRating:
  ///   The minimum rating in range [0.0,1.0] of the meme.
  ///
  /// * [int] maxAgeDays:
  ///   The maximum age of the meme in days.
  ///
  /// * [int] offset:
  ///   The number of memes to skip, between 0 and 1000.
  ///
  /// * [int] number:
  ///   The number of memes, between 0 and 10.
  Future<SearchMemes200Response?> searchMemes({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, int? offset, int? number, }) async {
    final response = await searchMemesWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, minRating: minRating, maxAgeDays: maxAgeDays, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchMemes200Response',) as SearchMemes200Response;
    
    }
    return null;
  }
}
