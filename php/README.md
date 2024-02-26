# OpenAPIClient-php

API League is a Hub for World Class APIs.


## Installation & Usage

### Requirements

PHP 7.3 and later.
Should also work with PHP 8.0 but has not been tested.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: apiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = com.apileague.client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new com.apileague.client\Api\ArtApi(
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

- [InlineResponse200](docs/Model/InlineResponse200.md)
- [InlineResponse2001](docs/Model/InlineResponse2001.md)
- [InlineResponse20010](docs/Model/InlineResponse20010.md)
- [InlineResponse20011](docs/Model/InlineResponse20011.md)
- [InlineResponse20012](docs/Model/InlineResponse20012.md)
- [InlineResponse20013](docs/Model/InlineResponse20013.md)
- [InlineResponse20014](docs/Model/InlineResponse20014.md)
- [InlineResponse20014Authors](docs/Model/InlineResponse20014Authors.md)
- [InlineResponse20015](docs/Model/InlineResponse20015.md)
- [InlineResponse20015Results](docs/Model/InlineResponse20015Results.md)
- [InlineResponse20016](docs/Model/InlineResponse20016.md)
- [InlineResponse20017](docs/Model/InlineResponse20017.md)
- [InlineResponse20018](docs/Model/InlineResponse20018.md)
- [InlineResponse20018Document](docs/Model/InlineResponse20018Document.md)
- [InlineResponse20018Sentences](docs/Model/InlineResponse20018Sentences.md)
- [InlineResponse20019](docs/Model/InlineResponse20019.md)
- [InlineResponse20019Interestingness](docs/Model/InlineResponse20019Interestingness.md)
- [InlineResponse20019InterestingnessSubscores](docs/Model/InlineResponse20019InterestingnessSubscores.md)
- [InlineResponse20019Readability](docs/Model/InlineResponse20019Readability.md)
- [InlineResponse20019ReadabilityMainscores](docs/Model/InlineResponse20019ReadabilityMainscores.md)
- [InlineResponse20019ReadabilitySubscores](docs/Model/InlineResponse20019ReadabilitySubscores.md)
- [InlineResponse20019Skimmability](docs/Model/InlineResponse20019Skimmability.md)
- [InlineResponse20019SkimmabilityMainscores](docs/Model/InlineResponse20019SkimmabilityMainscores.md)
- [InlineResponse20019SkimmabilitySubscores](docs/Model/InlineResponse20019SkimmabilitySubscores.md)
- [InlineResponse20019Style](docs/Model/InlineResponse20019Style.md)
- [InlineResponse20019StyleSubscores](docs/Model/InlineResponse20019StyleSubscores.md)
- [InlineResponse2002](docs/Model/InlineResponse2002.md)
- [InlineResponse20020](docs/Model/InlineResponse20020.md)
- [InlineResponse20021](docs/Model/InlineResponse20021.md)
- [InlineResponse20021Dates](docs/Model/InlineResponse20021Dates.md)
- [InlineResponse20022](docs/Model/InlineResponse20022.md)
- [InlineResponse20023](docs/Model/InlineResponse20023.md)
- [InlineResponse20024](docs/Model/InlineResponse20024.md)
- [InlineResponse20025](docs/Model/InlineResponse20025.md)
- [InlineResponse20026](docs/Model/InlineResponse20026.md)
- [InlineResponse20027](docs/Model/InlineResponse20027.md)
- [InlineResponse20027Entities](docs/Model/InlineResponse20027Entities.md)
- [InlineResponse20028](docs/Model/InlineResponse20028.md)
- [InlineResponse20028Images](docs/Model/InlineResponse20028Images.md)
- [InlineResponse20028License](docs/Model/InlineResponse20028License.md)
- [InlineResponse20029](docs/Model/InlineResponse20029.md)
- [InlineResponse2002News](docs/Model/InlineResponse2002News.md)
- [InlineResponse2003](docs/Model/InlineResponse2003.md)
- [InlineResponse20030](docs/Model/InlineResponse20030.md)
- [InlineResponse20031](docs/Model/InlineResponse20031.md)
- [InlineResponse20032](docs/Model/InlineResponse20032.md)
- [InlineResponse2004](docs/Model/InlineResponse2004.md)
- [InlineResponse2004Jokes](docs/Model/InlineResponse2004Jokes.md)
- [InlineResponse2005](docs/Model/InlineResponse2005.md)
- [InlineResponse2005Memes](docs/Model/InlineResponse2005Memes.md)
- [InlineResponse2006](docs/Model/InlineResponse2006.md)
- [InlineResponse2007](docs/Model/InlineResponse2007.md)
- [InlineResponse2007Images](docs/Model/InlineResponse2007Images.md)
- [InlineResponse2008](docs/Model/InlineResponse2008.md)
- [InlineResponse2009](docs/Model/InlineResponse2009.md)
- [InlineResponse200Books](docs/Model/InlineResponse200Books.md)

## Authorization

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
    - Package version: `1.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
