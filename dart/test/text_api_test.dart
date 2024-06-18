//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for TextApi
void main() {
  // final instance = TextApi();

  group('tests for TextApi', () {
    // Correct Spelling
    //
    // The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
    //
    //Future<CorrectSpelling200Response> correctSpelling(String text, String language) async
    test('test correctSpelling', () async {
      // TODO
    });

    // Detect Gender by Name
    //
    // Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
    //
    //Future<DetectGenderByName200Response> detectGenderByName(String name) async
    test('test detectGenderByName', () async {
      // TODO
    });

    // Detect Language
    //
    // Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
    //
    //Future<List<DetectLanguage200ResponseInner>> detectLanguage(String text) async
    test('test detectLanguage', () async {
      // TODO
    });

    // Detect Sentiment
    //
    // Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
    //
    //Future<DetectSentiment200Response> detectSentiment(String text) async
    test('test detectSentiment', () async {
      // TODO
    });

    // Extract Dates
    //
    // Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
    //
    //Future<ExtractDates200Response> extractDates(String text) async
    test('test extractDates', () async {
      // TODO
    });

    // Extract Entities
    //
    // Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
    //
    //Future<ExtractEntities200Response> extractEntities(String text) async
    test('test extractEntities', () async {
      // TODO
    });

    // List Word Synonyms
    //
    // Return synonyms of a word.
    //
    //Future<ListWordSynonyms200Response> listWordSynonyms(String word) async
    test('test listWordSynonyms', () async {
      // TODO
    });

    // Pluralize Word
    //
    // Find the plural form of a word.
    //
    //Future<PluralizeWord200Response> pluralizeWord(String word) async
    test('test pluralizeWord', () async {
      // TODO
    });

    // Score Readability
    //
    // Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
    //
    //Future<ScoreReadability200Response> scoreReadability(String text) async
    test('test scoreReadability', () async {
      // TODO
    });

    // Score Text
    //
    // Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
    //
    //Future<ScoreText200Response> scoreText(String title, String text) async
    test('test scoreText', () async {
      // TODO
    });

    // Singularize Word
    //
    // Find the singular form of a word.
    //
    //Future<SingularizeWord200Response> singularizeWord(String word) async
    test('test singularizeWord', () async {
      // TODO
    });

    // Stem Text
    //
    // The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
    //
    //Future<StemText200Response> stemText(String text) async
    test('test stemText', () async {
      // TODO
    });

    // Tag Part of Speech
    //
    // Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
    //
    //Future<TagPartOfSpeech200Response> tagPartOfSpeech(String text) async
    test('test tagPartOfSpeech', () async {
      // TODO
    });

  });
}
