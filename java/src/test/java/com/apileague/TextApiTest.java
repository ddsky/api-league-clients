/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.CorrectSpelling200Response;
import com.apileague.client.model.DetectGenderByName200Response;
import com.apileague.client.model.DetectLanguage200ResponseInner;
import com.apileague.client.model.DetectSentiment200Response;
import com.apileague.client.model.ExtractDates200Response;
import com.apileague.client.model.ExtractEntities200Response;
import com.apileague.client.model.ListWordSynonyms200Response;
import com.apileague.client.model.PluralizeWord200Response;
import com.apileague.client.model.ScoreReadability200Response;
import com.apileague.client.model.ScoreText200Response;
import com.apileague.client.model.SingularizeWord200Response;
import com.apileague.client.model.StemText200Response;
import com.apileague.client.model.TagPartOfSpeech200Response;
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
     * Correct Spelling
     *
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void correctSpellingTest() throws ApiException {
        String text = null;
        String language = null;
        CorrectSpelling200Response response = api.correctSpelling(text, language);
        // TODO: test validations
    }

    /**
     * Detect Gender by Name
     *
     * Detect the likelihood that a name is given to a male or female (aka to \&quot;genderize\&quot; a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectGenderByNameTest() throws ApiException {
        String name = null;
        DetectGenderByName200Response response = api.detectGenderByName(name);
        // TODO: test validations
    }

    /**
     * Detect Language
     *
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectLanguageTest() throws ApiException {
        String text = null;
        List<DetectLanguage200ResponseInner> response = api.detectLanguage(text);
        // TODO: test validations
    }

    /**
     * Detect Sentiment
     *
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectSentimentTest() throws ApiException {
        String text = null;
        DetectSentiment200Response response = api.detectSentiment(text);
        // TODO: test validations
    }

    /**
     * Extract Dates
     *
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractDatesTest() throws ApiException {
        String text = null;
        ExtractDates200Response response = api.extractDates(text);
        // TODO: test validations
    }

    /**
     * Extract Entities
     *
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractEntitiesTest() throws ApiException {
        String text = null;
        ExtractEntities200Response response = api.extractEntities(text);
        // TODO: test validations
    }

    /**
     * List Word Synonyms
     *
     * Return synonyms of a word.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listWordSynonymsTest() throws ApiException {
        String word = null;
        ListWordSynonyms200Response response = api.listWordSynonyms(word);
        // TODO: test validations
    }

    /**
     * Pluralize Word
     *
     * Find the plural form of a word.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void pluralizeWordTest() throws ApiException {
        String word = null;
        PluralizeWord200Response response = api.pluralizeWord(word);
        // TODO: test validations
    }

    /**
     * Score Readability
     *
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void scoreReadabilityTest() throws ApiException {
        String text = null;
        ScoreReadability200Response response = api.scoreReadability(text);
        // TODO: test validations
    }

    /**
     * Score Text
     *
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void scoreTextTest() throws ApiException {
        String title = null;
        String text = null;
        ScoreText200Response response = api.scoreText(title, text);
        // TODO: test validations
    }

    /**
     * Singularize Word
     *
     * Find the singular form of a word.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void singularizeWordTest() throws ApiException {
        String word = null;
        SingularizeWord200Response response = api.singularizeWord(word);
        // TODO: test validations
    }

    /**
     * Stem Text
     *
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void stemTextTest() throws ApiException {
        String text = null;
        StemText200Response response = api.stemText(text);
        // TODO: test validations
    }

    /**
     * Tag Part of Speech
     *
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void tagPartOfSpeechTest() throws ApiException {
        String text = null;
        TagPartOfSpeech200Response response = api.tagPartOfSpeech(text);
        // TODO: test validations
    }

}
