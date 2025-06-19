//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.apileague.com', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'ArtSearchAPI200Response':
          return ArtSearchAPI200Response.fromJson(value);
        case 'ComputeNutritionAPI200Response':
          return ComputeNutritionAPI200Response.fromJson(value);
        case 'ComputeNutritionAPI200ResponseIngredientBreakdownInner':
          return ComputeNutritionAPI200ResponseIngredientBreakdownInner.fromJson(value);
        case 'ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner':
          return ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.fromJson(value);
        case 'ConvertUnitsAPI200Response':
          return ConvertUnitsAPI200Response.fromJson(value);
        case 'CorrectSpellingAPI200Response':
          return CorrectSpellingAPI200Response.fromJson(value);
        case 'DetectGenderByNameAPI200Response':
          return DetectGenderByNameAPI200Response.fromJson(value);
        case 'DetectLanguageAPI200ResponseInner':
          return DetectLanguageAPI200ResponseInner.fromJson(value);
        case 'DetectMainImageColorAPI200ResponseInner':
          return DetectMainImageColorAPI200ResponseInner.fromJson(value);
        case 'DetectSentimentAPI200Response':
          return DetectSentimentAPI200Response.fromJson(value);
        case 'DetectSentimentAPI200ResponseDocument':
          return DetectSentimentAPI200ResponseDocument.fromJson(value);
        case 'DetectSentimentAPI200ResponseSentencesInner':
          return DetectSentimentAPI200ResponseSentencesInner.fromJson(value);
        case 'ExtractAuthorsAPI200Response':
          return ExtractAuthorsAPI200Response.fromJson(value);
        case 'ExtractAuthorsAPI200ResponseAuthorsInner':
          return ExtractAuthorsAPI200ResponseAuthorsInner.fromJson(value);
        case 'ExtractContentFromAWebPageAPI200Response':
          return ExtractContentFromAWebPageAPI200Response.fromJson(value);
        case 'ExtractDatesAPI200Response':
          return ExtractDatesAPI200Response.fromJson(value);
        case 'ExtractDatesAPI200ResponseDatesInner':
          return ExtractDatesAPI200ResponseDatesInner.fromJson(value);
        case 'ExtractEntitiesAPI200Response':
          return ExtractEntitiesAPI200Response.fromJson(value);
        case 'ExtractEntitiesAPI200ResponseEntitiesInner':
          return ExtractEntitiesAPI200ResponseEntitiesInner.fromJson(value);
        case 'ExtractNewsAPI200Response':
          return ExtractNewsAPI200Response.fromJson(value);
        case 'ExtractNewsAPI200ResponseImagesInner':
          return ExtractNewsAPI200ResponseImagesInner.fromJson(value);
        case 'ExtractNewsAPI200ResponseVideosInner':
          return ExtractNewsAPI200ResponseVideosInner.fromJson(value);
        case 'ExtractPublishDateAPI200Response':
          return ExtractPublishDateAPI200Response.fromJson(value);
        case 'FindSimilarBooksAPI200Response':
          return FindSimilarBooksAPI200Response.fromJson(value);
        case 'GenerateNonsenseWordAPI200Response':
          return GenerateNonsenseWordAPI200Response.fromJson(value);
        case 'ListWordSynonymsAPI200Response':
          return ListWordSynonymsAPI200Response.fromJson(value);
        case 'PluralizeWordAPI200Response':
          return PluralizeWordAPI200Response.fromJson(value);
        case 'RandomMemeAPI200Response':
          return RandomMemeAPI200Response.fromJson(value);
        case 'RandomPoemAPI200Response':
          return RandomPoemAPI200Response.fromJson(value);
        case 'RandomQuoteAPI200Response':
          return RandomQuoteAPI200Response.fromJson(value);
        case 'RandomRiddleAPI200Response':
          return RandomRiddleAPI200Response.fromJson(value);
        case 'RandomTriviaAPI200Response':
          return RandomTriviaAPI200Response.fromJson(value);
        case 'ReadKeyValueFromStoreAPI200Response':
          return ReadKeyValueFromStoreAPI200Response.fromJson(value);
        case 'RetrieveArtworkById200Response':
          return RetrieveArtworkById200Response.fromJson(value);
        case 'RetrievePageRankAPI200Response':
          return RetrievePageRankAPI200Response.fromJson(value);
        case 'RetrieveRecipeInformationAPI200Response':
          return RetrieveRecipeInformationAPI200Response.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseCredits':
          return RetrieveRecipeInformationAPI200ResponseCredits.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseDietaryProperties':
          return RetrieveRecipeInformationAPI200ResponseDietaryProperties.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseIngredientsInner':
          return RetrieveRecipeInformationAPI200ResponseIngredientsInner.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures':
          return RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseInstructionsInner':
          return RetrieveRecipeInformationAPI200ResponseInstructionsInner.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner':
          return RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseNutrition':
          return RetrieveRecipeInformationAPI200ResponseNutrition.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner':
          return RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseScores':
          return RetrieveRecipeInformationAPI200ResponseScores.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseTaste':
          return RetrieveRecipeInformationAPI200ResponseTaste.fromJson(value);
        case 'RetrieveRecipeInformationAPI200ResponseTimes':
          return RetrieveRecipeInformationAPI200ResponseTimes.fromJson(value);
        case 'ScoreReadabilityAPI200Response':
          return ScoreReadabilityAPI200Response.fromJson(value);
        case 'ScoreTextAPI200Response':
          return ScoreTextAPI200Response.fromJson(value);
        case 'ScoreTextAPI200ResponseInterestingness':
          return ScoreTextAPI200ResponseInterestingness.fromJson(value);
        case 'ScoreTextAPI200ResponseInterestingnessSubscores':
          return ScoreTextAPI200ResponseInterestingnessSubscores.fromJson(value);
        case 'ScoreTextAPI200ResponseReadability':
          return ScoreTextAPI200ResponseReadability.fromJson(value);
        case 'ScoreTextAPI200ResponseReadabilityMainscores':
          return ScoreTextAPI200ResponseReadabilityMainscores.fromJson(value);
        case 'ScoreTextAPI200ResponseReadabilitySubscores':
          return ScoreTextAPI200ResponseReadabilitySubscores.fromJson(value);
        case 'ScoreTextAPI200ResponseSkimmability':
          return ScoreTextAPI200ResponseSkimmability.fromJson(value);
        case 'ScoreTextAPI200ResponseSkimmabilityMainscores':
          return ScoreTextAPI200ResponseSkimmabilityMainscores.fromJson(value);
        case 'ScoreTextAPI200ResponseSkimmabilitySubscores':
          return ScoreTextAPI200ResponseSkimmabilitySubscores.fromJson(value);
        case 'ScoreTextAPI200ResponseStyle':
          return ScoreTextAPI200ResponseStyle.fromJson(value);
        case 'ScoreTextAPI200ResponseStyleSubscores':
          return ScoreTextAPI200ResponseStyleSubscores.fromJson(value);
        case 'SearchBooksAPI200Response':
          return SearchBooksAPI200Response.fromJson(value);
        case 'SearchBooksAPI200ResponseBooksInnerInner':
          return SearchBooksAPI200ResponseBooksInnerInner.fromJson(value);
        case 'SearchDrinksAPI200Response':
          return SearchDrinksAPI200Response.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInner':
          return SearchDrinksAPI200ResponseDrinksInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerCredits':
          return SearchDrinksAPI200ResponseDrinksInnerCredits.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerIngredientsInner':
          return SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures':
          return SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric':
          return SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs':
          return SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerInstructionsInner':
          return SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner':
          return SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner':
          return SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutrition':
          return SearchDrinksAPI200ResponseDrinksInnerNutrition.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown':
          return SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner':
          return SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner':
          return SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner':
          return SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner':
          return SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.fromJson(value);
        case 'SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing':
          return SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.fromJson(value);
        case 'SearchGifsAPI200Response':
          return SearchGifsAPI200Response.fromJson(value);
        case 'SearchGifsAPI200ResponseImagesInner':
          return SearchGifsAPI200ResponseImagesInner.fromJson(value);
        case 'SearchIconsAPI200Response':
          return SearchIconsAPI200Response.fromJson(value);
        case 'SearchJokesAPI200Response':
          return SearchJokesAPI200Response.fromJson(value);
        case 'SearchJokesAPI200ResponseJokesInner':
          return SearchJokesAPI200ResponseJokesInner.fromJson(value);
        case 'SearchMemesAPI200Response':
          return SearchMemesAPI200Response.fromJson(value);
        case 'SearchMemesAPI200ResponseMemesInner':
          return SearchMemesAPI200ResponseMemesInner.fromJson(value);
        case 'SearchNewsAPI200Response':
          return SearchNewsAPI200Response.fromJson(value);
        case 'SearchNewsAPI200ResponseNewsInner':
          return SearchNewsAPI200ResponseNewsInner.fromJson(value);
        case 'SearchRecipesAPI200Response':
          return SearchRecipesAPI200Response.fromJson(value);
        case 'SearchRecipesAPI200ResponseRecipesInner':
          return SearchRecipesAPI200ResponseRecipesInner.fromJson(value);
        case 'SearchRecipesAPI200ResponseRecipesInnerNutrition':
          return SearchRecipesAPI200ResponseRecipesInnerNutrition.fromJson(value);
        case 'SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner':
          return SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.fromJson(value);
        case 'SearchRestaurantsAPI200Response':
          return SearchRestaurantsAPI200Response.fromJson(value);
        case 'SearchRestaurantsAPI200ResponseRestaurantsInner':
          return SearchRestaurantsAPI200ResponseRestaurantsInner.fromJson(value);
        case 'SearchRestaurantsAPI200ResponseRestaurantsInnerAddress':
          return SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.fromJson(value);
        case 'SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours':
          return SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.fromJson(value);
        case 'SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational':
          return SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.fromJson(value);
        case 'SearchRoyaltyFreeImagesAPI200Response':
          return SearchRoyaltyFreeImagesAPI200Response.fromJson(value);
        case 'SearchRoyaltyFreeImagesAPI200ResponseImagesInner':
          return SearchRoyaltyFreeImagesAPI200ResponseImagesInner.fromJson(value);
        case 'SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense':
          return SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.fromJson(value);
        case 'SearchWebAPI200Response':
          return SearchWebAPI200Response.fromJson(value);
        case 'SearchWebAPI200ResponseResultsInner':
          return SearchWebAPI200ResponseResultsInner.fromJson(value);
        case 'SingularizeWordAPI200Response':
          return SingularizeWordAPI200Response.fromJson(value);
        case 'StemTextAPI200Response':
          return StemTextAPI200Response.fromJson(value);
        case 'StoreKeyValueGETAPI200Response':
          return StoreKeyValueGETAPI200Response.fromJson(value);
        case 'TagPartOfSpeechAPI200Response':
          return TagPartOfSpeechAPI200Response.fromJson(value);
        case 'TopNewsAPI200Response':
          return TopNewsAPI200Response.fromJson(value);
        case 'TopNewsAPI200ResponseTopNewsInner':
          return TopNewsAPI200ResponseTopNewsInner.fromJson(value);
        case 'TopNewsAPI200ResponseTopNewsInnerNewsInner':
          return TopNewsAPI200ResponseTopNewsInnerNewsInner.fromJson(value);
        case 'VectorSearchAPI200Response':
          return VectorSearchAPI200Response.fromJson(value);
        case 'VectorSearchAPI200ResponseVectorsInner':
          return VectorSearchAPI200ResponseVectorsInner.fromJson(value);
        case 'VerifyEmailAddressAPI200Response':
          return VerifyEmailAddressAPI200Response.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
