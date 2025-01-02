//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MathApi {
  MathApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Convert Units API
  ///
  /// Convert units from one to another. The API returns the amount and the unit of the target unit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] sourceAmount (required):
  ///   The source amount.
  ///
  /// * [String] sourceUnit (required):
  ///   The source unit.
  ///
  /// * [String] targetUnit (required):
  ///   The unit to which should be converted.
  ///
  /// * [String] foodName:
  ///   An optional food name. For converting foods the food is relevant as they have different densities.
  Future<Response> convertUnitsAPIWithHttpInfo(double sourceAmount, String sourceUnit, String targetUnit, { String? foodName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/convert-units';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'source-amount', sourceAmount));
      queryParams.addAll(_queryParams('', 'source-unit', sourceUnit));
      queryParams.addAll(_queryParams('', 'target-unit', targetUnit));
    if (foodName != null) {
      queryParams.addAll(_queryParams('', 'food-name', foodName));
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

  /// Convert Units API
  ///
  /// Convert units from one to another. The API returns the amount and the unit of the target unit.
  ///
  /// Parameters:
  ///
  /// * [double] sourceAmount (required):
  ///   The source amount.
  ///
  /// * [String] sourceUnit (required):
  ///   The source unit.
  ///
  /// * [String] targetUnit (required):
  ///   The unit to which should be converted.
  ///
  /// * [String] foodName:
  ///   An optional food name. For converting foods the food is relevant as they have different densities.
  Future<ConvertUnitsAPI200Response?> convertUnitsAPI(double sourceAmount, String sourceUnit, String targetUnit, { String? foodName, }) async {
    final response = await convertUnitsAPIWithHttpInfo(sourceAmount, sourceUnit, targetUnit,  foodName: foodName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConvertUnitsAPI200Response',) as ConvertUnitsAPI200Response;
    
    }
    return null;
  }
}
