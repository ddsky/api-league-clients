# org.openapitools.client - Kotlin client library for API League

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**imageToAsciiArtByURL**](docs/ArtApi.md#imagetoasciiartbyurl) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
*ArtApi* | [**randomPoem**](docs/ArtApi.md#randompoem) | **GET** /retrieve-random-poem | Random Poem
*BooksApi* | [**findSimilarBooks**](docs/BooksApi.md#findsimilarbooks) | **GET** /list-similar-books | Find Similar Books
*BooksApi* | [**searchBooks**](docs/BooksApi.md#searchbooks) | **GET** /search-books | Search Books
*HumorApi* | [**generateNonsenseWord**](docs/HumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word
*HumorApi* | [**randomJoke**](docs/HumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke
*HumorApi* | [**randomMeme**](docs/HumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme
*HumorApi* | [**searchGifs**](docs/HumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs
*HumorApi* | [**searchJokes**](docs/HumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes
*HumorApi* | [**searchMemes**](docs/HumorApi.md#searchmemes) | **GET** /search-memes | Search Memes
*KnowledgeApi* | [**randomQuote**](docs/KnowledgeApi.md#randomquote) | **GET** /retrieve-random-quote | Random Quote
*KnowledgeApi* | [**randomTrivia**](docs/KnowledgeApi.md#randomtrivia) | **GET** /retrieve-random-trivia | Random Trivia
*MathApi* | [**convertUnits**](docs/MathApi.md#convertunits) | **GET** /convert-units | Convert Units
*MediaApi* | [**detectMainImageColor**](docs/MediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color
*MediaApi* | [**rescaleImage**](docs/MediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image
*MediaApi* | [**searchRoyaltyFreeImages**](docs/MediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images
*NewsApi* | [**extractNews**](docs/NewsApi.md#extractnews) | **GET** /extract-news | Extract News
*NewsApi* | [**searchNews**](docs/NewsApi.md#searchnews) | **GET** /search-news | Search News
*StorageApi* | [**readKeyValueFromStore**](docs/StorageApi.md#readkeyvaluefromstore) | **GET** /read-key-value | Read Key Value from Store
*StorageApi* | [**storeKeyValueGET**](docs/StorageApi.md#storekeyvalueget) | **GET** /store-key-value | Store Key Value (GET)
*TextApi* | [**correctSpelling**](docs/TextApi.md#correctspelling) | **GET** /correct-spelling | Correct Spelling
*TextApi* | [**detectLanguage**](docs/TextApi.md#detectlanguage) | **GET** /detect-language | Detect Language
*TextApi* | [**detectSentiment**](docs/TextApi.md#detectsentiment) | **GET** /detect-sentiment | Detect Sentiment
*TextApi* | [**extractDates**](docs/TextApi.md#extractdates) | **GET** /extract-dates | Extract Dates
*TextApi* | [**extractEntities**](docs/TextApi.md#extractentities) | **GET** /extract-entities | Extract Entities
*TextApi* | [**listWordSynonyms**](docs/TextApi.md#listwordsynonyms) | **GET** /list-synonyms | List Word Synonyms
*TextApi* | [**partOfSpeechTagging**](docs/TextApi.md#partofspeechtagging) | **GET** /tag-pos | Part of Speech Tagging
*TextApi* | [**pluralizeWord**](docs/TextApi.md#pluralizeword) | **GET** /pluralize-word | Pluralize Word
*TextApi* | [**scoreReadability**](docs/TextApi.md#scorereadability) | **GET** /score-readability | Score Readability
*TextApi* | [**scoreText**](docs/TextApi.md#scoretext) | **GET** /score-text | Score Text
*TextApi* | [**singularizeWord**](docs/TextApi.md#singularizeword) | **GET** /singularize-word | Singularize Word
*TextApi* | [**textStemming**](docs/TextApi.md#textstemming) | **GET** /stem-text | Text Stemming
*WebApi* | [**extractAuthors**](docs/WebApi.md#extractauthors) | **GET** /extract-authors | Extract Authors
*WebApi* | [**extractContentFromAWebPage**](docs/WebApi.md#extractcontentfromawebpage) | **GET** /extract-content | Extract Content from a Web Page
*WebApi* | [**extractPublishDate**](docs/WebApi.md#extractpublishdate) | **GET** /extract-publish-date | Extract Publish Date
*WebApi* | [**searchWeb**](docs/WebApi.md#searchweb) | **GET** /search-web | Search Web


<a name="documentation-for-models"></a>
## Documentation for Models

 - [com.apileague.client.model.InlineResponse200](docs/InlineResponse200.md)
 - [com.apileague.client.model.InlineResponse2001](docs/InlineResponse2001.md)
 - [com.apileague.client.model.InlineResponse20010](docs/InlineResponse20010.md)
 - [com.apileague.client.model.InlineResponse20011](docs/InlineResponse20011.md)
 - [com.apileague.client.model.InlineResponse20012](docs/InlineResponse20012.md)
 - [com.apileague.client.model.InlineResponse20013](docs/InlineResponse20013.md)
 - [com.apileague.client.model.InlineResponse20014](docs/InlineResponse20014.md)
 - [com.apileague.client.model.InlineResponse20014Authors](docs/InlineResponse20014Authors.md)
 - [com.apileague.client.model.InlineResponse20015](docs/InlineResponse20015.md)
 - [com.apileague.client.model.InlineResponse20015Results](docs/InlineResponse20015Results.md)
 - [com.apileague.client.model.InlineResponse20016](docs/InlineResponse20016.md)
 - [com.apileague.client.model.InlineResponse20017](docs/InlineResponse20017.md)
 - [com.apileague.client.model.InlineResponse20018](docs/InlineResponse20018.md)
 - [com.apileague.client.model.InlineResponse20018Document](docs/InlineResponse20018Document.md)
 - [com.apileague.client.model.InlineResponse20018Sentences](docs/InlineResponse20018Sentences.md)
 - [com.apileague.client.model.InlineResponse20019](docs/InlineResponse20019.md)
 - [com.apileague.client.model.InlineResponse20019Interestingness](docs/InlineResponse20019Interestingness.md)
 - [com.apileague.client.model.InlineResponse20019InterestingnessSubscores](docs/InlineResponse20019InterestingnessSubscores.md)
 - [com.apileague.client.model.InlineResponse20019Readability](docs/InlineResponse20019Readability.md)
 - [com.apileague.client.model.InlineResponse20019ReadabilityMainscores](docs/InlineResponse20019ReadabilityMainscores.md)
 - [com.apileague.client.model.InlineResponse20019ReadabilitySubscores](docs/InlineResponse20019ReadabilitySubscores.md)
 - [com.apileague.client.model.InlineResponse20019Skimmability](docs/InlineResponse20019Skimmability.md)
 - [com.apileague.client.model.InlineResponse20019SkimmabilityMainscores](docs/InlineResponse20019SkimmabilityMainscores.md)
 - [com.apileague.client.model.InlineResponse20019SkimmabilitySubscores](docs/InlineResponse20019SkimmabilitySubscores.md)
 - [com.apileague.client.model.InlineResponse20019Style](docs/InlineResponse20019Style.md)
 - [com.apileague.client.model.InlineResponse20019StyleSubscores](docs/InlineResponse20019StyleSubscores.md)
 - [com.apileague.client.model.InlineResponse2002](docs/InlineResponse2002.md)
 - [com.apileague.client.model.InlineResponse20020](docs/InlineResponse20020.md)
 - [com.apileague.client.model.InlineResponse20021](docs/InlineResponse20021.md)
 - [com.apileague.client.model.InlineResponse20021Dates](docs/InlineResponse20021Dates.md)
 - [com.apileague.client.model.InlineResponse20022](docs/InlineResponse20022.md)
 - [com.apileague.client.model.InlineResponse20023](docs/InlineResponse20023.md)
 - [com.apileague.client.model.InlineResponse20024](docs/InlineResponse20024.md)
 - [com.apileague.client.model.InlineResponse20025](docs/InlineResponse20025.md)
 - [com.apileague.client.model.InlineResponse20026](docs/InlineResponse20026.md)
 - [com.apileague.client.model.InlineResponse20027](docs/InlineResponse20027.md)
 - [com.apileague.client.model.InlineResponse20027Entities](docs/InlineResponse20027Entities.md)
 - [com.apileague.client.model.InlineResponse20028](docs/InlineResponse20028.md)
 - [com.apileague.client.model.InlineResponse20028Images](docs/InlineResponse20028Images.md)
 - [com.apileague.client.model.InlineResponse20028License](docs/InlineResponse20028License.md)
 - [com.apileague.client.model.InlineResponse20029](docs/InlineResponse20029.md)
 - [com.apileague.client.model.InlineResponse2002News](docs/InlineResponse2002News.md)
 - [com.apileague.client.model.InlineResponse2003](docs/InlineResponse2003.md)
 - [com.apileague.client.model.InlineResponse20030](docs/InlineResponse20030.md)
 - [com.apileague.client.model.InlineResponse20031](docs/InlineResponse20031.md)
 - [com.apileague.client.model.InlineResponse20032](docs/InlineResponse20032.md)
 - [com.apileague.client.model.InlineResponse2004](docs/InlineResponse2004.md)
 - [com.apileague.client.model.InlineResponse2004Jokes](docs/InlineResponse2004Jokes.md)
 - [com.apileague.client.model.InlineResponse2005](docs/InlineResponse2005.md)
 - [com.apileague.client.model.InlineResponse2005Memes](docs/InlineResponse2005Memes.md)
 - [com.apileague.client.model.InlineResponse2006](docs/InlineResponse2006.md)
 - [com.apileague.client.model.InlineResponse2007](docs/InlineResponse2007.md)
 - [com.apileague.client.model.InlineResponse2007Images](docs/InlineResponse2007Images.md)
 - [com.apileague.client.model.InlineResponse2008](docs/InlineResponse2008.md)
 - [com.apileague.client.model.InlineResponse2009](docs/InlineResponse2009.md)
 - [com.apileague.client.model.InlineResponse200Books](docs/InlineResponse200Books.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

<a name="headerApiKey"></a>
### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

