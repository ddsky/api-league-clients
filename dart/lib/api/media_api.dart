//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MediaApi {
  MediaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
    // ignore: prefer_const_declarations
    final path = r'/detect-color';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));

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

  /// Detect Main Image Color
  ///
  /// Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
  ///
  /// Parameters:
  ///
  /// * [String] url (required):
  ///   The url of the image for which the colors should be detected.
  Future<List<DetectMainImageColor200ResponseInner>?> detectMainImageColor(String url,) async {
    final response = await detectMainImageColorWithHttpInfo(url,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DetectMainImageColor200ResponseInner>') as List)
        .cast<DetectMainImageColor200ResponseInner>()
        .toList(growable: false);

    }
    return null;
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
    // ignore: prefer_const_declarations
    final path = r'/rescale-image';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'url', url));
      queryParams.addAll(_queryParams('', 'width', width));
      queryParams.addAll(_queryParams('', 'height', height));
      queryParams.addAll(_queryParams('', 'crop', crop));

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
  Future<MultipartFile?> rescaleImage(String url, int width, int height, bool crop,) async {
    final response = await rescaleImageWithHttpInfo(url, width, height, crop,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Search Icons
  ///
  /// Search through millions of icons to match any topic you want.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [bool] onlyPublicDomain:
  ///   If true, only public domain icons will be returned.
  ///
  /// * [int] number:
  ///   The number of icons to return in range [1,100]
  Future<Response> searchIconsWithHttpInfo(String query, { bool? onlyPublicDomain, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-icons';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
    if (onlyPublicDomain != null) {
      queryParams.addAll(_queryParams('', 'only-public-domain', onlyPublicDomain));
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

  /// Search Icons
  ///
  /// Search through millions of icons to match any topic you want.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query.
  ///
  /// * [bool] onlyPublicDomain:
  ///   If true, only public domain icons will be returned.
  ///
  /// * [int] number:
  ///   The number of icons to return in range [1,100]
  Future<SearchIcons200Response?> searchIcons(String query, { bool? onlyPublicDomain, int? number, }) async {
    final response = await searchIconsWithHttpInfo(query,  onlyPublicDomain: onlyPublicDomain, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchIcons200Response',) as SearchIcons200Response;
    
    }
    return null;
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
  ///   The number of images to return in range [1,100]
  Future<Response> searchRoyaltyFreeImagesWithHttpInfo(String query, { int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-images';

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
  ///   The number of images to return in range [1,100]
  Future<SearchRoyaltyFreeImages200Response?> searchRoyaltyFreeImages(String query, { int? number, }) async {
    final response = await searchRoyaltyFreeImagesWithHttpInfo(query,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchRoyaltyFreeImages200Response',) as SearchRoyaltyFreeImages200Response;
    
    }
    return null;
  }
}
