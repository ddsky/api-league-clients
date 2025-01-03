/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.CorrectSpellingAPI200Response;
import com.apileague.client.model.DetectGenderByNameAPI200Response;
import com.apileague.client.model.DetectLanguageAPI200ResponseInner;
import com.apileague.client.model.DetectSentimentAPI200Response;
import com.apileague.client.model.ExtractDatesAPI200Response;
import com.apileague.client.model.ExtractEntitiesAPI200Response;
import com.apileague.client.model.ListWordSynonymsAPI200Response;
import com.apileague.client.model.PluralizeWordAPI200Response;
import com.apileague.client.model.ScoreReadabilityAPI200Response;
import com.apileague.client.model.ScoreTextAPI200Response;
import com.apileague.client.model.SingularizeWordAPI200Response;
import com.apileague.client.model.StemTextAPI200Response;
import com.apileague.client.model.TagPartOfSpeechAPI200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for TextApi
 */
@Disabled
public class TextApiTest {

    private final TextApi api = new TextApi();

    /**
     * Correct Spelling API
     *
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void correctSpellingAPITest() throws ApiException {
        String text = null;
        String language = null;
        CorrectSpellingAPI200Response response = api.correctSpellingAPI(text, language);
        // TODO: test validations
    }

    /**
     * Detect Gender by Name API
     *
     * Detect the likelihood that a name is given to a male or female (aka to \&quot;genderize\&quot; a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectGenderByNameAPITest() throws ApiException {
        String name = null;
        DetectGenderByNameAPI200Response response = api.detectGenderByNameAPI(name);
        // TODO: test validations
    }

    /**
     * Detect Language API
     *
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectLanguageAPITest() throws ApiException {
        String text = null;
        List<DetectLanguageAPI200ResponseInner> response = api.detectLanguageAPI(text);
        // TODO: test validations
    }

    /**
     * Detect Sentiment API
     *
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectSentimentAPITest() throws ApiException {
        String text = null;
        DetectSentimentAPI200Response response = api.detectSentimentAPI(text);
        // TODO: test validations
    }

    /**
     * Extract Dates API
     *
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractDatesAPITest() throws ApiException {
        String text = null;
        ExtractDatesAPI200Response response = api.extractDatesAPI(text);
        // TODO: test validations
    }

    /**
     * Extract Entities API
     *
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractEntitiesAPITest() throws ApiException {
        String text = null;
        ExtractEntitiesAPI200Response response = api.extractEntitiesAPI(text);
        // TODO: test validations
    }

    /**
     * List Word Synonyms API
     *
     * Return synonyms of a word.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listWordSynonymsAPITest() throws ApiException {
        String word = null;
        ListWordSynonymsAPI200Response response = api.listWordSynonymsAPI(word);
        // TODO: test validations
    }

    /**
     * Pluralize Word API
     *
     * Find the plural form of a word.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void pluralizeWordAPITest() throws ApiException {
        String word = null;
        PluralizeWordAPI200Response response = api.pluralizeWordAPI(word);
        // TODO: test validations
    }

    /**
     * Score Readability API
     *
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void scoreReadabilityAPITest() throws ApiException {
        String text = null;
        ScoreReadabilityAPI200Response response = api.scoreReadabilityAPI(text);
        // TODO: test validations
    }

    /**
     * Score Text API
     *
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void scoreTextAPITest() throws ApiException {
        String title = null;
        String text = null;
        ScoreTextAPI200Response response = api.scoreTextAPI(title, text);
        // TODO: test validations
    }

    /**
     * Singularize Word API
     *
     * Find the singular form of a word.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void singularizeWordAPITest() throws ApiException {
        String word = null;
        SingularizeWordAPI200Response response = api.singularizeWordAPI(word);
        // TODO: test validations
    }

    /**
     * Stem Text API
     *
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void stemTextAPITest() throws ApiException {
        String text = null;
        StemTextAPI200Response response = api.stemTextAPI(text);
        // TODO: test validations
    }

    /**
     * Tag Part of Speech API
     *
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void tagPartOfSpeechAPITest() throws ApiException {
        String text = null;
        TagPartOfSpeechAPI200Response response = api.tagPartOfSpeechAPI(text);
        // TODO: test validations
    }

}
