# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>com.apileague</groupId>
    <artifactId>android-client</artifactId>
    <version>1.0.1</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.apileague:android-client:1.0.1"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.1.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.apileague.ArtApi;

public class ArtApiExample {

    public static void main(String[] args) {
        ArtApi apiInstance = new ArtApi();
        String url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // String | The URL to the image.
        Integer width = 200; // Integer | The maximum width of the image (default 400, max. 500).
        Integer height = 200; // Integer | The maximum height of the image (default 400, max. 500).
        try {
            String result = apiInstance.imageToAsciiArtByURL(url, width, height);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ArtApi#imageToAsciiArtByURL");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**imageToAsciiArtByURL**](docs/ArtApi.md#imageToAsciiArtByURL) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
*ArtApi* | [**randomPoem**](docs/ArtApi.md#randomPoem) | **GET** /retrieve-random-poem | Random Poem
*BooksApi* | [**findSimilarBooks**](docs/BooksApi.md#findSimilarBooks) | **GET** /list-similar-books | Find Similar Books
*BooksApi* | [**searchBooks**](docs/BooksApi.md#searchBooks) | **GET** /search-books | Search Books
*HumorApi* | [**generateNonsenseWord**](docs/HumorApi.md#generateNonsenseWord) | **GET** /generate-nonsense-word | Generate Nonsense Word
*HumorApi* | [**randomJoke**](docs/HumorApi.md#randomJoke) | **GET** /retrieve-random-joke | Random Joke
*HumorApi* | [**randomMeme**](docs/HumorApi.md#randomMeme) | **GET** /retrieve-random-meme | Random Meme
*HumorApi* | [**searchGifs**](docs/HumorApi.md#searchGifs) | **GET** /search-gifs | Search Gifs
*HumorApi* | [**searchJokes**](docs/HumorApi.md#searchJokes) | **GET** /search-jokes | Search Jokes
*HumorApi* | [**searchMemes**](docs/HumorApi.md#searchMemes) | **GET** /search-memes | Search Memes
*KnowledgeApi* | [**randomQuote**](docs/KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
*KnowledgeApi* | [**randomTrivia**](docs/KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia
*MathApi* | [**convertUnits**](docs/MathApi.md#convertUnits) | **GET** /convert-units | Convert Units
*MediaApi* | [**detectMainImageColor**](docs/MediaApi.md#detectMainImageColor) | **GET** /detect-color | Detect Main Image Color
*MediaApi* | [**rescaleImage**](docs/MediaApi.md#rescaleImage) | **GET** /rescale-image | Rescale Image
*MediaApi* | [**searchRoyaltyFreeImages**](docs/MediaApi.md#searchRoyaltyFreeImages) | **GET** /search-images | Search Royalty Free Images
*NewsApi* | [**extractNews**](docs/NewsApi.md#extractNews) | **GET** /extract-news | Extract News
*NewsApi* | [**searchNews**](docs/NewsApi.md#searchNews) | **GET** /search-news | Search News
*StorageApi* | [**readKeyValueFromStore**](docs/StorageApi.md#readKeyValueFromStore) | **GET** /read-key-value | Read Key Value from Store
*StorageApi* | [**storeKeyValueGET**](docs/StorageApi.md#storeKeyValueGET) | **GET** /store-key-value | Store Key Value (GET)
*TextApi* | [**correctSpelling**](docs/TextApi.md#correctSpelling) | **GET** /correct-spelling | Correct Spelling
*TextApi* | [**detectLanguage**](docs/TextApi.md#detectLanguage) | **GET** /detect-language | Detect Language
*TextApi* | [**detectSentiment**](docs/TextApi.md#detectSentiment) | **GET** /detect-sentiment | Detect Sentiment
*TextApi* | [**extractDates**](docs/TextApi.md#extractDates) | **GET** /extract-dates | Extract Dates
*TextApi* | [**extractEntities**](docs/TextApi.md#extractEntities) | **GET** /extract-entities | Extract Entities
*TextApi* | [**listWordSynonyms**](docs/TextApi.md#listWordSynonyms) | **GET** /list-synonyms | List Word Synonyms
*TextApi* | [**partOfSpeechTagging**](docs/TextApi.md#partOfSpeechTagging) | **GET** /tag-pos | Part of Speech Tagging
*TextApi* | [**pluralizeWord**](docs/TextApi.md#pluralizeWord) | **GET** /pluralize-word | Pluralize Word
*TextApi* | [**scoreReadability**](docs/TextApi.md#scoreReadability) | **GET** /score-readability | Score Readability
*TextApi* | [**scoreText**](docs/TextApi.md#scoreText) | **GET** /score-text | Score Text
*TextApi* | [**singularizeWord**](docs/TextApi.md#singularizeWord) | **GET** /singularize-word | Singularize Word
*TextApi* | [**textStemming**](docs/TextApi.md#textStemming) | **GET** /stem-text | Text Stemming
*WebApi* | [**extractAuthors**](docs/WebApi.md#extractAuthors) | **GET** /extract-authors | Extract Authors
*WebApi* | [**extractContentFromAWebPage**](docs/WebApi.md#extractContentFromAWebPage) | **GET** /extract-content | Extract Content from a Web Page
*WebApi* | [**extractPublishDate**](docs/WebApi.md#extractPublishDate) | **GET** /extract-publish-date | Extract Publish Date
*WebApi* | [**searchWeb**](docs/WebApi.md#searchWeb) | **GET** /search-web | Search Web


## Documentation for Models

 - [ConvertUnits200Response](docs/ConvertUnits200Response.md)
 - [CorrectSpelling200Response](docs/CorrectSpelling200Response.md)
 - [DetectLanguage200ResponseInner](docs/DetectLanguage200ResponseInner.md)
 - [DetectMainImageColor200ResponseInner](docs/DetectMainImageColor200ResponseInner.md)
 - [DetectSentiment200Response](docs/DetectSentiment200Response.md)
 - [DetectSentiment200ResponseDocument](docs/DetectSentiment200ResponseDocument.md)
 - [DetectSentiment200ResponseSentencesInner](docs/DetectSentiment200ResponseSentencesInner.md)
 - [ExtractAuthors200Response](docs/ExtractAuthors200Response.md)
 - [ExtractAuthors200ResponseAuthorsInner](docs/ExtractAuthors200ResponseAuthorsInner.md)
 - [ExtractContentFromAWebPage200Response](docs/ExtractContentFromAWebPage200Response.md)
 - [ExtractDates200Response](docs/ExtractDates200Response.md)
 - [ExtractDates200ResponseDatesInner](docs/ExtractDates200ResponseDatesInner.md)
 - [ExtractEntities200Response](docs/ExtractEntities200Response.md)
 - [ExtractEntities200ResponseEntitiesInner](docs/ExtractEntities200ResponseEntitiesInner.md)
 - [ExtractNews200Response](docs/ExtractNews200Response.md)
 - [ExtractPublishDate200Response](docs/ExtractPublishDate200Response.md)
 - [FindSimilarBooks200Response](docs/FindSimilarBooks200Response.md)
 - [GenerateNonsenseWord200Response](docs/GenerateNonsenseWord200Response.md)
 - [ListWordSynonyms200Response](docs/ListWordSynonyms200Response.md)
 - [PartOfSpeechTagging200Response](docs/PartOfSpeechTagging200Response.md)
 - [PluralizeWord200Response](docs/PluralizeWord200Response.md)
 - [RandomMeme200Response](docs/RandomMeme200Response.md)
 - [RandomPoem200Response](docs/RandomPoem200Response.md)
 - [RandomQuote200Response](docs/RandomQuote200Response.md)
 - [RandomTrivia200Response](docs/RandomTrivia200Response.md)
 - [ReadKeyValueFromStore200Response](docs/ReadKeyValueFromStore200Response.md)
 - [ScoreReadability200Response](docs/ScoreReadability200Response.md)
 - [ScoreText200Response](docs/ScoreText200Response.md)
 - [ScoreText200ResponseInterestingness](docs/ScoreText200ResponseInterestingness.md)
 - [ScoreText200ResponseInterestingnessSubscores](docs/ScoreText200ResponseInterestingnessSubscores.md)
 - [ScoreText200ResponseReadability](docs/ScoreText200ResponseReadability.md)
 - [ScoreText200ResponseReadabilityMainscores](docs/ScoreText200ResponseReadabilityMainscores.md)
 - [ScoreText200ResponseReadabilitySubscores](docs/ScoreText200ResponseReadabilitySubscores.md)
 - [ScoreText200ResponseSkimmability](docs/ScoreText200ResponseSkimmability.md)
 - [ScoreText200ResponseSkimmabilityMainscores](docs/ScoreText200ResponseSkimmabilityMainscores.md)
 - [ScoreText200ResponseSkimmabilitySubscores](docs/ScoreText200ResponseSkimmabilitySubscores.md)
 - [ScoreText200ResponseStyle](docs/ScoreText200ResponseStyle.md)
 - [ScoreText200ResponseStyleSubscores](docs/ScoreText200ResponseStyleSubscores.md)
 - [SearchBooks200Response](docs/SearchBooks200Response.md)
 - [SearchBooks200ResponseBooksInner](docs/SearchBooks200ResponseBooksInner.md)
 - [SearchGifs200Response](docs/SearchGifs200Response.md)
 - [SearchGifs200ResponseImagesInner](docs/SearchGifs200ResponseImagesInner.md)
 - [SearchJokes200Response](docs/SearchJokes200Response.md)
 - [SearchJokes200ResponseJokesInner](docs/SearchJokes200ResponseJokesInner.md)
 - [SearchMemes200Response](docs/SearchMemes200Response.md)
 - [SearchMemes200ResponseMemesInner](docs/SearchMemes200ResponseMemesInner.md)
 - [SearchNews200Response](docs/SearchNews200Response.md)
 - [SearchNews200ResponseNewsInner](docs/SearchNews200ResponseNewsInner.md)
 - [SearchRoyaltyFreeImages200Response](docs/SearchRoyaltyFreeImages200Response.md)
 - [SearchRoyaltyFreeImages200ResponseImagesInner](docs/SearchRoyaltyFreeImages200ResponseImagesInner.md)
 - [SearchRoyaltyFreeImages200ResponseImagesInnerLicense](docs/SearchRoyaltyFreeImages200ResponseImagesInnerLicense.md)
 - [SearchWeb200Response](docs/SearchWeb200Response.md)
 - [SearchWeb200ResponseResultsInner](docs/SearchWeb200ResponseResultsInner.md)
 - [SingularizeWord200Response](docs/SingularizeWord200Response.md)
 - [StoreKeyValueGET200Response](docs/StoreKeyValueGET200Response.md)
 - [TextStemming200Response](docs/TextStemming200Response.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key

- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey

- **Type**: API key

- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@apileague.com

