# apileague

API League is a Hub for World Class APIs.


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/ddsky/api-league-clients/tree/master/php/.git"
    }
  ],
  "require": {
    "ddsky/api-league-clients/tree/master/php/": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/apileague/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ArtApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // string | The URL to the image.
$width = 200; // int | The maximum width of the image (default 400, max. 500).
$height = 200; // int | The maximum height of the image (default 400, max. 500).

try {
    $result = $apiInstance->imageToAsciiArtByURL($url, $width, $height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->imageToAsciiArtByURL: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**imageToAsciiArtByURL**](docs/Api/ArtApi.md#imagetoasciiartbyurl) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
*ArtApi* | [**randomPoem**](docs/Api/ArtApi.md#randompoem) | **GET** /retrieve-random-poem | Random Poem
*BooksApi* | [**findSimilarBooks**](docs/Api/BooksApi.md#findsimilarbooks) | **GET** /list-similar-books | Find Similar Books
*BooksApi* | [**searchBooks**](docs/Api/BooksApi.md#searchbooks) | **GET** /search-books | Search Books
*HumorApi* | [**generateNonsenseWord**](docs/Api/HumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word
*HumorApi* | [**randomJoke**](docs/Api/HumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke
*HumorApi* | [**randomMeme**](docs/Api/HumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme
*HumorApi* | [**searchGifs**](docs/Api/HumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs
*HumorApi* | [**searchJokes**](docs/Api/HumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes
*HumorApi* | [**searchMemes**](docs/Api/HumorApi.md#searchmemes) | **GET** /search-memes | Search Memes
*KnowledgeApi* | [**randomQuote**](docs/Api/KnowledgeApi.md#randomquote) | **GET** /retrieve-random-quote | Random Quote
*KnowledgeApi* | [**randomTrivia**](docs/Api/KnowledgeApi.md#randomtrivia) | **GET** /retrieve-random-trivia | Random Trivia
*MathApi* | [**convertUnits**](docs/Api/MathApi.md#convertunits) | **GET** /convert-units | Convert Units
*MediaApi* | [**detectMainImageColor**](docs/Api/MediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color
*MediaApi* | [**rescaleImage**](docs/Api/MediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image
*MediaApi* | [**searchRoyaltyFreeImages**](docs/Api/MediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images
*NewsApi* | [**extractNews**](docs/Api/NewsApi.md#extractnews) | **GET** /extract-news | Extract News
*NewsApi* | [**searchNews**](docs/Api/NewsApi.md#searchnews) | **GET** /search-news | Search News
*StorageApi* | [**readKeyValueFromStore**](docs/Api/StorageApi.md#readkeyvaluefromstore) | **GET** /read-key-value | Read Key Value from Store
*StorageApi* | [**storeKeyValueGET**](docs/Api/StorageApi.md#storekeyvalueget) | **GET** /store-key-value | Store Key Value (GET)
*TextApi* | [**correctSpelling**](docs/Api/TextApi.md#correctspelling) | **GET** /correct-spelling | Correct Spelling
*TextApi* | [**detectLanguage**](docs/Api/TextApi.md#detectlanguage) | **GET** /detect-language | Detect Language
*TextApi* | [**detectSentiment**](docs/Api/TextApi.md#detectsentiment) | **GET** /detect-sentiment | Detect Sentiment
*TextApi* | [**extractDates**](docs/Api/TextApi.md#extractdates) | **GET** /extract-dates | Extract Dates
*TextApi* | [**extractEntities**](docs/Api/TextApi.md#extractentities) | **GET** /extract-entities | Extract Entities
*TextApi* | [**listWordSynonyms**](docs/Api/TextApi.md#listwordsynonyms) | **GET** /list-synonyms | List Word Synonyms
*TextApi* | [**partOfSpeechTagging**](docs/Api/TextApi.md#partofspeechtagging) | **GET** /tag-pos | Part of Speech Tagging
*TextApi* | [**pluralizeWord**](docs/Api/TextApi.md#pluralizeword) | **GET** /pluralize-word | Pluralize Word
*TextApi* | [**scoreReadability**](docs/Api/TextApi.md#scorereadability) | **GET** /score-readability | Score Readability
*TextApi* | [**scoreText**](docs/Api/TextApi.md#scoretext) | **GET** /score-text | Score Text
*TextApi* | [**singularizeWord**](docs/Api/TextApi.md#singularizeword) | **GET** /singularize-word | Singularize Word
*TextApi* | [**textStemming**](docs/Api/TextApi.md#textstemming) | **GET** /stem-text | Text Stemming
*WebApi* | [**extractAuthors**](docs/Api/WebApi.md#extractauthors) | **GET** /extract-authors | Extract Authors
*WebApi* | [**extractContentFromAWebPage**](docs/Api/WebApi.md#extractcontentfromawebpage) | **GET** /extract-content | Extract Content from a Web Page
*WebApi* | [**extractPublishDate**](docs/Api/WebApi.md#extractpublishdate) | **GET** /extract-publish-date | Extract Publish Date
*WebApi* | [**searchWeb**](docs/Api/WebApi.md#searchweb) | **GET** /search-web | Search Web

## Models

- [ConvertUnits200Response](docs/Model/ConvertUnits200Response.md)
- [CorrectSpelling200Response](docs/Model/CorrectSpelling200Response.md)
- [DetectLanguage200ResponseInner](docs/Model/DetectLanguage200ResponseInner.md)
- [DetectMainImageColor200ResponseInner](docs/Model/DetectMainImageColor200ResponseInner.md)
- [DetectSentiment200Response](docs/Model/DetectSentiment200Response.md)
- [DetectSentiment200ResponseDocument](docs/Model/DetectSentiment200ResponseDocument.md)
- [DetectSentiment200ResponseSentencesInner](docs/Model/DetectSentiment200ResponseSentencesInner.md)
- [ExtractAuthors200Response](docs/Model/ExtractAuthors200Response.md)
- [ExtractAuthors200ResponseAuthorsInner](docs/Model/ExtractAuthors200ResponseAuthorsInner.md)
- [ExtractContentFromAWebPage200Response](docs/Model/ExtractContentFromAWebPage200Response.md)
- [ExtractDates200Response](docs/Model/ExtractDates200Response.md)
- [ExtractDates200ResponseDatesInner](docs/Model/ExtractDates200ResponseDatesInner.md)
- [ExtractEntities200Response](docs/Model/ExtractEntities200Response.md)
- [ExtractEntities200ResponseEntitiesInner](docs/Model/ExtractEntities200ResponseEntitiesInner.md)
- [ExtractNews200Response](docs/Model/ExtractNews200Response.md)
- [ExtractPublishDate200Response](docs/Model/ExtractPublishDate200Response.md)
- [FindSimilarBooks200Response](docs/Model/FindSimilarBooks200Response.md)
- [GenerateNonsenseWord200Response](docs/Model/GenerateNonsenseWord200Response.md)
- [ListWordSynonyms200Response](docs/Model/ListWordSynonyms200Response.md)
- [PartOfSpeechTagging200Response](docs/Model/PartOfSpeechTagging200Response.md)
- [PluralizeWord200Response](docs/Model/PluralizeWord200Response.md)
- [RandomMeme200Response](docs/Model/RandomMeme200Response.md)
- [RandomPoem200Response](docs/Model/RandomPoem200Response.md)
- [RandomQuote200Response](docs/Model/RandomQuote200Response.md)
- [RandomTrivia200Response](docs/Model/RandomTrivia200Response.md)
- [ReadKeyValueFromStore200Response](docs/Model/ReadKeyValueFromStore200Response.md)
- [ScoreReadability200Response](docs/Model/ScoreReadability200Response.md)
- [ScoreText200Response](docs/Model/ScoreText200Response.md)
- [ScoreText200ResponseInterestingness](docs/Model/ScoreText200ResponseInterestingness.md)
- [ScoreText200ResponseInterestingnessSubscores](docs/Model/ScoreText200ResponseInterestingnessSubscores.md)
- [ScoreText200ResponseReadability](docs/Model/ScoreText200ResponseReadability.md)
- [ScoreText200ResponseReadabilityMainscores](docs/Model/ScoreText200ResponseReadabilityMainscores.md)
- [ScoreText200ResponseReadabilitySubscores](docs/Model/ScoreText200ResponseReadabilitySubscores.md)
- [ScoreText200ResponseSkimmability](docs/Model/ScoreText200ResponseSkimmability.md)
- [ScoreText200ResponseSkimmabilityMainscores](docs/Model/ScoreText200ResponseSkimmabilityMainscores.md)
- [ScoreText200ResponseSkimmabilitySubscores](docs/Model/ScoreText200ResponseSkimmabilitySubscores.md)
- [ScoreText200ResponseStyle](docs/Model/ScoreText200ResponseStyle.md)
- [ScoreText200ResponseStyleSubscores](docs/Model/ScoreText200ResponseStyleSubscores.md)
- [SearchBooks200Response](docs/Model/SearchBooks200Response.md)
- [SearchBooks200ResponseBooksInner](docs/Model/SearchBooks200ResponseBooksInner.md)
- [SearchGifs200Response](docs/Model/SearchGifs200Response.md)
- [SearchGifs200ResponseImagesInner](docs/Model/SearchGifs200ResponseImagesInner.md)
- [SearchJokes200Response](docs/Model/SearchJokes200Response.md)
- [SearchJokes200ResponseJokesInner](docs/Model/SearchJokes200ResponseJokesInner.md)
- [SearchMemes200Response](docs/Model/SearchMemes200Response.md)
- [SearchMemes200ResponseMemesInner](docs/Model/SearchMemes200ResponseMemesInner.md)
- [SearchNews200Response](docs/Model/SearchNews200Response.md)
- [SearchNews200ResponseNewsInner](docs/Model/SearchNews200ResponseNewsInner.md)
- [SearchRoyaltyFreeImages200Response](docs/Model/SearchRoyaltyFreeImages200Response.md)
- [SearchRoyaltyFreeImages200ResponseImagesInner](docs/Model/SearchRoyaltyFreeImages200ResponseImagesInner.md)
- [SearchRoyaltyFreeImages200ResponseImagesInnerLicense](docs/Model/SearchRoyaltyFreeImages200ResponseImagesInnerLicense.md)
- [SearchWeb200Response](docs/Model/SearchWeb200Response.md)
- [SearchWeb200ResponseResultsInner](docs/Model/SearchWeb200ResponseResultsInner.md)
- [SingularizeWord200Response](docs/Model/SingularizeWord200Response.md)
- [StoreKeyValueGET200Response](docs/Model/StoreKeyValueGET200Response.md)
- [TextStemming200Response](docs/Model/TextStemming200Response.md)

## Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

mail@apileague.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0`
    - Package version: `1.0.1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
