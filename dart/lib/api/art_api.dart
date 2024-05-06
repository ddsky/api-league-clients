//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ArtApi {
  ArtApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Image to Ascii Art by URL
  ///
  /// Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The URL to the image.
  ///
  /// * [int] width:
  ///   The maximum width of the image (default 400, max. 500).
  ///
  /// * [int] height:
  ///   The maximum height of the image (default 400, max. 500).
  Future<Response> imageToAsciiArtByURLWithHttpInfo(String url, { int? width, int? height, }) async {
    // ignore: prefer_const_declarations
    final path = r'/convert-image-to-ascii-txt';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
    if (width != null) {
      queryParams.addAll(_queryParams('', 'width', width));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
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

  /// Image to Ascii Art by URL
  ///
  /// Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The URL to the image.
  ///
  /// * [int] width:
  ///   The maximum width of the image (default 400, max. 500).
  ///
  /// * [int] height:
  ///   The maximum height of the image (default 400, max. 500).
  Future<String?> imageToAsciiArtByURL(String url, { int? width, int? height, }) async {
    final response = await imageToAsciiArtByURLWithHttpInfo(url,  width: width, height: height, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Random Poem
  ///
  /// Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] minLines:
  ///   The minimum number of lines of the poem.
  ///
  /// * [int] maxLines:
  ///   The maximum number of lines of the poem.
  Future<Response> randomPoemWithHttpInfo({ int? minLines, int? maxLines, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retrieve-random-poem';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (minLines != null) {
      queryParams.addAll(_queryParams('', 'min-lines', minLines));
    }
    if (maxLines != null) {
      queryParams.addAll(_queryParams('', 'max-lines', maxLines));
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

  /// Random Poem
  ///
  /// Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
  ///
  /// Parameters:
  ///
  /// * [int] minLines:
  ///   The minimum number of lines of the poem.
  ///
  /// * [int] maxLines:
  ///   The maximum number of lines of the poem.
  Future<RandomPoem200Response?> randomPoem({ int? minLines, int? maxLines, }) async {
    final response = await randomPoemWithHttpInfo( minLines: minLines, maxLines: maxLines, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RandomPoem200Response',) as RandomPoem200Response;
    
    }
    return null;
  }
}
