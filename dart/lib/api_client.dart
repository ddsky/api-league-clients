//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

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
        case 'ComputeNutrition200Response':
          return ComputeNutrition200Response.fromJson(value);
        case 'ComputeNutrition200ResponseIngredientBreakdownInner':
          return ComputeNutrition200ResponseIngredientBreakdownInner.fromJson(value);
        case 'ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner':
          return ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.fromJson(value);
        case 'ConvertUnits200Response':
          return ConvertUnits200Response.fromJson(value);
        case 'CorrectSpelling200Response':
          return CorrectSpelling200Response.fromJson(value);
        case 'DetectLanguage200ResponseInner':
          return DetectLanguage200ResponseInner.fromJson(value);
        case 'DetectMainImageColor200ResponseInner':
          return DetectMainImageColor200ResponseInner.fromJson(value);
        case 'DetectSentiment200Response':
          return DetectSentiment200Response.fromJson(value);
        case 'DetectSentiment200ResponseDocument':
          return DetectSentiment200ResponseDocument.fromJson(value);
        case 'DetectSentiment200ResponseSentencesInner':
          return DetectSentiment200ResponseSentencesInner.fromJson(value);
        case 'ExtractAuthors200Response':
          return ExtractAuthors200Response.fromJson(value);
        case 'ExtractAuthors200ResponseAuthorsInner':
          return ExtractAuthors200ResponseAuthorsInner.fromJson(value);
        case 'ExtractContentFromAWebPage200Response':
          return ExtractContentFromAWebPage200Response.fromJson(value);
        case 'ExtractDates200Response':
          return ExtractDates200Response.fromJson(value);
        case 'ExtractDates200ResponseDatesInner':
          return ExtractDates200ResponseDatesInner.fromJson(value);
        case 'ExtractEntities200Response':
          return ExtractEntities200Response.fromJson(value);
        case 'ExtractEntities200ResponseEntitiesInner':
          return ExtractEntities200ResponseEntitiesInner.fromJson(value);
        case 'ExtractNews200Response':
          return ExtractNews200Response.fromJson(value);
        case 'ExtractPublishDate200Response':
          return ExtractPublishDate200Response.fromJson(value);
        case 'FindSimilarBooks200Response':
          return FindSimilarBooks200Response.fromJson(value);
        case 'GenerateNonsenseWord200Response':
          return GenerateNonsenseWord200Response.fromJson(value);
        case 'ListWordSynonyms200Response':
          return ListWordSynonyms200Response.fromJson(value);
        case 'PartOfSpeechTagging200Response':
          return PartOfSpeechTagging200Response.fromJson(value);
        case 'PluralizeWord200Response':
          return PluralizeWord200Response.fromJson(value);
        case 'RandomMeme200Response':
          return RandomMeme200Response.fromJson(value);
        case 'RandomPoem200Response':
          return RandomPoem200Response.fromJson(value);
        case 'RandomQuote200Response':
          return RandomQuote200Response.fromJson(value);
        case 'RandomTrivia200Response':
          return RandomTrivia200Response.fromJson(value);
        case 'ReadKeyValueFromStore200Response':
          return ReadKeyValueFromStore200Response.fromJson(value);
        case 'RetrieveRecipeInformation200Response':
          return RetrieveRecipeInformation200Response.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseCredits':
          return RetrieveRecipeInformation200ResponseCredits.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseDietaryProperties':
          return RetrieveRecipeInformation200ResponseDietaryProperties.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseIngredientsInner':
          return RetrieveRecipeInformation200ResponseIngredientsInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseIngredientsInnerMeasures':
          return RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric':
          return RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseInstructionsInner':
          return RetrieveRecipeInformation200ResponseInstructionsInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner':
          return RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner':
          return RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseNutrition':
          return RetrieveRecipeInformation200ResponseNutrition.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown':
          return RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner':
          return RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner':
          return RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner':
          return RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseNutritionWeightPerServing':
          return RetrieveRecipeInformation200ResponseNutritionWeightPerServing.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseScores':
          return RetrieveRecipeInformation200ResponseScores.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseTaste':
          return RetrieveRecipeInformation200ResponseTaste.fromJson(value);
        case 'RetrieveRecipeInformation200ResponseTimes':
          return RetrieveRecipeInformation200ResponseTimes.fromJson(value);
        case 'ScoreReadability200Response':
          return ScoreReadability200Response.fromJson(value);
        case 'ScoreText200Response':
          return ScoreText200Response.fromJson(value);
        case 'ScoreText200ResponseInterestingness':
          return ScoreText200ResponseInterestingness.fromJson(value);
        case 'ScoreText200ResponseInterestingnessSubscores':
          return ScoreText200ResponseInterestingnessSubscores.fromJson(value);
        case 'ScoreText200ResponseReadability':
          return ScoreText200ResponseReadability.fromJson(value);
        case 'ScoreText200ResponseReadabilityMainscores':
          return ScoreText200ResponseReadabilityMainscores.fromJson(value);
        case 'ScoreText200ResponseReadabilitySubscores':
          return ScoreText200ResponseReadabilitySubscores.fromJson(value);
        case 'ScoreText200ResponseSkimmability':
          return ScoreText200ResponseSkimmability.fromJson(value);
        case 'ScoreText200ResponseSkimmabilityMainscores':
          return ScoreText200ResponseSkimmabilityMainscores.fromJson(value);
        case 'ScoreText200ResponseSkimmabilitySubscores':
          return ScoreText200ResponseSkimmabilitySubscores.fromJson(value);
        case 'ScoreText200ResponseStyle':
          return ScoreText200ResponseStyle.fromJson(value);
        case 'ScoreText200ResponseStyleSubscores':
          return ScoreText200ResponseStyleSubscores.fromJson(value);
        case 'SearchBooks200Response':
          return SearchBooks200Response.fromJson(value);
        case 'SearchBooks200ResponseBooksInner':
          return SearchBooks200ResponseBooksInner.fromJson(value);
        case 'SearchGifs200Response':
          return SearchGifs200Response.fromJson(value);
        case 'SearchGifs200ResponseImagesInner':
          return SearchGifs200ResponseImagesInner.fromJson(value);
        case 'SearchJokes200Response':
          return SearchJokes200Response.fromJson(value);
        case 'SearchJokes200ResponseJokesInner':
          return SearchJokes200ResponseJokesInner.fromJson(value);
        case 'SearchMemes200Response':
          return SearchMemes200Response.fromJson(value);
        case 'SearchMemes200ResponseMemesInner':
          return SearchMemes200ResponseMemesInner.fromJson(value);
        case 'SearchNews200Response':
          return SearchNews200Response.fromJson(value);
        case 'SearchNews200ResponseNewsInner':
          return SearchNews200ResponseNewsInner.fromJson(value);
        case 'SearchRecipes200Response':
          return SearchRecipes200Response.fromJson(value);
        case 'SearchRecipes200ResponseRecipesInner':
          return SearchRecipes200ResponseRecipesInner.fromJson(value);
        case 'SearchRecipes200ResponseRecipesInnerNutrition':
          return SearchRecipes200ResponseRecipesInnerNutrition.fromJson(value);
        case 'SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner':
          return SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.fromJson(value);
        case 'SearchRestaurants200Response':
          return SearchRestaurants200Response.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInner':
          return SearchRestaurants200ResponseRestaurantsInner.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInnerAddress':
          return SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInnerLocalHours':
          return SearchRestaurants200ResponseRestaurantsInnerLocalHours.fromJson(value);
        case 'SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational':
          return SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.fromJson(value);
        case 'SearchRoyaltyFreeImages200Response':
          return SearchRoyaltyFreeImages200Response.fromJson(value);
        case 'SearchRoyaltyFreeImages200ResponseImagesInner':
          return SearchRoyaltyFreeImages200ResponseImagesInner.fromJson(value);
        case 'SearchRoyaltyFreeImages200ResponseImagesInnerLicense':
          return SearchRoyaltyFreeImages200ResponseImagesInnerLicense.fromJson(value);
        case 'SearchWeb200Response':
          return SearchWeb200Response.fromJson(value);
        case 'SearchWeb200ResponseResultsInner':
          return SearchWeb200ResponseResultsInner.fromJson(value);
        case 'SingularizeWord200Response':
          return SingularizeWord200Response.fromJson(value);
        case 'StoreKeyValueGET200Response':
          return StoreKeyValueGET200Response.fromJson(value);
        case 'TextStemming200Response':
          return TextStemming200Response.fromJson(value);
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
