//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HumorApi {
  HumorApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Generate Nonsense Word API
  ///
  /// Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> generateNonsenseWordAPIWithHttpInfo() async {
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

  /// Generate Nonsense Word API
  ///
  /// Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
  Future<GenerateNonsenseWordAPI200Response?> generateNonsenseWordAPI() async {
    final response = await generateNonsenseWordAPIWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateNonsenseWordAPI200Response',) as GenerateNonsenseWordAPI200Response;
    
    }
    return null;
  }

  /// Random Joke API
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
  Future<Response> randomJokeAPIWithHttpInfo({ String? includeTags, String? excludeTags, double? minRating, int? maxLength, }) async {
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

  /// Random Joke API
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
  Future<SearchJokesAPI200ResponseJokesInner?> randomJokeAPI({ String? includeTags, String? excludeTags, double? minRating, int? maxLength, }) async {
    final response = await randomJokeAPIWithHttpInfo( includeTags: includeTags, excludeTags: excludeTags, minRating: minRating, maxLength: maxLength, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchJokesAPI200ResponseJokesInner',) as SearchJokesAPI200ResponseJokesInner;
    
    }
    return null;
  }

  /// Random Meme API
  ///
  /// Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
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
  Future<Response> randomMemeAPIWithHttpInfo({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, }) async {
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

  /// Random Meme API
  ///
  /// Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
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
  Future<RandomMemeAPI200Response?> randomMemeAPI({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, }) async {
    final response = await randomMemeAPIWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, minRating: minRating, maxAgeDays: maxAgeDays, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomMemeAPI200Response',) as RandomMemeAPI200Response;
    
    }
    return null;
  }

  /// Search Gifs API
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
  Future<Response> searchGifsAPIWithHttpInfo(String query, { int? number, }) async {
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

  /// Search Gifs API
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
  Future<SearchGifsAPI200Response?> searchGifsAPI(String query, { int? number, }) async {
    final response = await searchGifsAPIWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchGifsAPI200Response',) as SearchGifsAPI200Response;
    
    }
    return null;
  }

  /// Search Jokes API
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
  ///   The minimum rating in range [0.0,1.0] of the jokes.
  ///
  /// * [double] maxLength:
  ///   The maximum length of the joke in letters.
  ///
  /// * [int] offset:
  ///   The number of jokes to skip, between 0 and 1000.
  ///
  /// * [int] number:
  ///   The number of jokes, between 1 and 10.
  Future<Response> searchJokesAPIWithHttpInfo({ String? keywords, String? includeTags, String? excludeTags, double? minRating, double? maxLength, int? offset, int? number, }) async {
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

  /// Search Jokes API
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
  ///   The minimum rating in range [0.0,1.0] of the jokes.
  ///
  /// * [double] maxLength:
  ///   The maximum length of the joke in letters.
  ///
  /// * [int] offset:
  ///   The number of jokes to skip, between 0 and 1000.
  ///
  /// * [int] number:
  ///   The number of jokes, between 1 and 10.
  Future<SearchJokesAPI200Response?> searchJokesAPI({ String? keywords, String? includeTags, String? excludeTags, double? minRating, double? maxLength, int? offset, int? number, }) async {
    final response = await searchJokesAPIWithHttpInfo( keywords: keywords, includeTags: includeTags, excludeTags: excludeTags, minRating: minRating, maxLength: maxLength, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchJokesAPI200Response',) as SearchJokesAPI200Response;
    
    }
    return null;
  }

  /// Search Memes API
  ///
  /// Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.
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
  ///   The number of memes, between 1 and 10.
  Future<Response> searchMemesAPIWithHttpInfo({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, int? offset, int? number, }) async {
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

  /// Search Memes API
  ///
  /// Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.
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
  ///   The number of memes, between 1 and 10.
  Future<SearchMemesAPI200Response?> searchMemesAPI({ String? keywords, bool? keywordsInImage, String? mediaType, double? minRating, int? maxAgeDays, int? offset, int? number, }) async {
    final response = await searchMemesAPIWithHttpInfo( keywords: keywords, keywordsInImage: keywordsInImage, mediaType: mediaType, minRating: minRating, maxAgeDays: maxAgeDays, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchMemesAPI200Response',) as SearchMemesAPI200Response;
    
    }
    return null;
  }
}
