//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MathApi {
  MathApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Convert Units
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
  Future<Response> convertUnitsWithHttpInfo(double sourceAmount, String sourceUnit, String targetUnit, { String foodName, }) async {
    // Verify required params are set.
    if (sourceAmount == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sourceAmount');
    }
    if (sourceUnit == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sourceUnit');
    }
    if (targetUnit == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: targetUnit');
    }

    // ignore: prefer_const_declarations
    final path = r'/convert-units';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'source-amount', sourceAmount));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'source-unit', sourceUnit));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'target-unit', targetUnit));
    if (foodName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'food-name', foodName));
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

  /// Convert Units
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
  Future<InlineResponse20030> convertUnits(double sourceAmount, String sourceUnit, String targetUnit, { String foodName, }) async {
    final response = await convertUnitsWithHttpInfo(sourceAmount, sourceUnit, targetUnit,  foodName: foodName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InlineResponse20030',) as InlineResponse20030;
    
    }
    return Future<InlineResponse20030>.value();
  }
}
