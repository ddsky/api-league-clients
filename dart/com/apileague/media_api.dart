//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MediaApi {
  MediaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Detect Main Image Color
  ///
  /// Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image for which the colors should be detected.
  Future<Response> detectMainImageColorWithHttpInfo(String url,) async {
    // Verify required params are set.
    if (url == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: url');
    }

    // ignore: prefer_const_declarations
    final path = r'/detect-color';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'url', url));

    const authNames = <String>['apiKey', 'headerApiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Detect Main Image Color
  ///
  /// Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image for which the colors should be detected.
  Future<List<InlineResponse20029>> detectMainImageColor(String url,) async {
    final response = await detectMainImageColorWithHttpInfo(url,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InlineResponse20029>') as List)
        .cast<InlineResponse20029>()
        .toList(growable: false);

    }
    return Future<List<InlineResponse20029>>.value();
  }

  /// Rescale Image
  ///
  /// Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image to be rescaled.
  ///
  /// * [int] width (required):
  ///   The desired width of the rescaled image.
  ///
  /// * [int] height (required):
  ///   The desired height of the rescaled image.
  ///
  /// * [bool] crop (required):
  ///   Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  Future<Response> rescaleImageWithHttpInfo(String url, int width, int height, bool crop,) async {
    // Verify required params are set.
    if (url == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: url');
    }
    if (width == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: width');
    }
    if (height == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: height');
    }
    if (crop == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: crop');
    }

    // ignore: prefer_const_declarations
    final path = r'/rescale-image';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'url', url));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'width', width));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'height', height));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'crop', crop));

    const authNames = <String>['apiKey', 'headerApiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Rescale Image
  ///
  /// Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image to be rescaled.
  ///
  /// * [int] width (required):
  ///   The desired width of the rescaled image.
  ///
  /// * [int] height (required):
  ///   The desired height of the rescaled image.
  ///
  /// * [bool] crop (required):
  ///   Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  Future<Object> rescaleImage(String url, int width, int height, bool crop,) async {
    final response = await rescaleImageWithHttpInfo(url, width, height, crop,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return Future<Object>.value();
  }

  /// Search Royalty Free Images
  ///
  /// Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of images to return in range [1,10]
  Future<Response> searchRoyaltyFreeImagesWithHttpInfo(String query, { int number, }) async {
    // Verify required params are set.
    if (query == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: query');
    }

    // ignore: prefer_const_declarations
    final path = r'/search-images';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    if (number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'number', number));
    }

    const authNames = <String>['apiKey', 'headerApiKey'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Search Royalty Free Images
  ///
  /// Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [int] number:
  ///   The number of images to return in range [1,10]
  Future<InlineResponse20028> searchRoyaltyFreeImages(String query, { int number, }) async {
    final response = await searchRoyaltyFreeImagesWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse20028',) as InlineResponse20028;
    
    }
    return Future<InlineResponse20028>.value();
  }
}
