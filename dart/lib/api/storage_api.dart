//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StorageApi {
  StorageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Read Key Value from Store API
  ///
  /// Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key for which the value is stored (max length 255 characters).
  Future<Response> readKeyValueFromStoreAPIWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/read-key-value';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'key', key));

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

  /// Read Key Value from Store API
  ///
  /// Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key for which the value is stored (max length 255 characters).
  Future<ReadKeyValueFromStoreAPI200Response?> readKeyValueFromStoreAPI(String key,) async {
    final response = await readKeyValueFromStoreAPIWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReadKeyValueFromStoreAPI200Response',) as ReadKeyValueFromStoreAPI200Response;
    
    }
    return null;
  }

  /// Store Key Value (GET) API
  ///
  /// Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key for which the value is stored (max length 255 characters).
  ///
  /// * [String] value (required):
  ///   The value that is supposed to be stored (max length 10,000 characters).
  Future<Response> storeKeyValueGETAPIWithHttpInfo(String key, String value,) async {
    // ignore: prefer_const_declarations
    final path = r'/store-key-value';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'key', key));
      queryParams.addAll(_queryParams('', 'value', value));

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

  /// Store Key Value (GET) API
  ///
  /// Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key for which the value is stored (max length 255 characters).
  ///
  /// * [String] value (required):
  ///   The value that is supposed to be stored (max length 10,000 characters).
  Future<StoreKeyValueGETAPI200Response?> storeKeyValueGETAPI(String key, String value,) async {
    final response = await storeKeyValueGETAPIWithHttpInfo(key, value,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StoreKeyValueGETAPI200Response',) as StoreKeyValueGETAPI200Response;
    
    }
    return null;
  }
}
