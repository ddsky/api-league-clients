package apileague

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import org.openapitools.models._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A String
        */
        def Art_imageToAsciiArtByURL(url: String, width: Option[Int], height: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,String] = Left(TODO)

        /**
        * 
        * @return A RandomPoem200Response
        */
        def Art_randomPoem(minLines: Option[Int], maxLines: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,RandomPoem200Response] = Left(TODO)

        /**
        * 
        * @return A FindSimilarBooks200Response
        */
        def Books_findSimilarBooks(id: Int, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,FindSimilarBooks200Response] = Left(TODO)

        /**
        * 
        * @return A SearchBooks200Response
        */
        def Books_searchBooks(query: Option[String], earliestPublishYear: Option[Int], latestPublishYear: Option[Int], minRating: Option[Double], maxRating: Option[Double], genres: Option[String], authors: Option[String], isbn: Option[String], oclc: Option[String], sort: Option[String], sortDirection: Option[String], groupResults: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchBooks200Response] = Left(TODO)

        /**
        * 
        * @return A GenerateNonsenseWord200Response
        */
        def Humor_generateNonsenseWord(authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,GenerateNonsenseWord200Response] = Left(TODO)

        /**
        * 
        * @return A SearchJokes200ResponseJokesInner
        */
        def Humor_randomJoke(includeTags: Option[String], excludeTags: Option[String], minRating: Option[Double], maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchJokes200ResponseJokesInner] = Left(TODO)

        /**
        * 
        * @return A RandomMeme200Response
        */
        def Humor_randomMeme(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], minRating: Option[Double], maxAgeDays: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,RandomMeme200Response] = Left(TODO)

        /**
        * 
        * @return A SearchGifs200Response
        */
        def Humor_searchGifs(query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchGifs200Response] = Left(TODO)

        /**
        * 
        * @return A SearchJokes200Response
        */
        def Humor_searchJokes(keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], minRating: Option[Double], maxLength: Option[Double], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchJokes200Response] = Left(TODO)

        /**
        * 
        * @return A SearchMemes200Response
        */
        def Humor_searchMemes(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], minRating: Option[Double], maxAgeDays: Option[Int], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchMemes200Response] = Left(TODO)

        /**
        * 
        * @return A RandomQuote200Response
        */
        def Knowledge_randomQuote(minLength: Option[Int], maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,RandomQuote200Response] = Left(TODO)

        /**
        * 
        * @return A RandomTrivia200Response
        */
        def Knowledge_randomTrivia(maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,RandomTrivia200Response] = Left(TODO)

        /**
        * 
        * @return A ConvertUnits200Response
        */
        def Math_convertUnits(sourceAmount: Double, sourceUnit: String, targetUnit: String, foodName: Option[String], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ConvertUnits200Response] = Left(TODO)

        /**
        * 
        * @return A Seq[DetectMainImageColor200ResponseInner]
        */
        def Media_detectMainImageColor(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Seq[DetectMainImageColor200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Media_rescaleImage(url: String, width: Int, height: Int, crop: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A SearchRoyaltyFreeImages200Response
        */
        def Media_searchRoyaltyFreeImages(query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchRoyaltyFreeImages200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractNews200Response
        */
        def News_extractNews(url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractNews200Response] = Left(TODO)

        /**
        * 
        * @return A SearchNews200Response
        */
        def News_searchNews(text: Option[String], sourceCountries: Option[String], language: Option[String], minSentiment: Option[Double], maxSentiment: Option[Double], earliestPublishDate: Option[String], latestPublishDate: Option[String], newsSources: Option[String], authors: Option[String], entities: Option[String], locationFilter: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchNews200Response] = Left(TODO)

        /**
        * 
        * @return A ReadKeyValueFromStore200Response
        */
        def Storage_readKeyValueFromStore(key: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ReadKeyValueFromStore200Response] = Left(TODO)

        /**
        * 
        * @return A StoreKeyValueGET200Response
        */
        def Storage_storeKeyValueGET(key: String, value: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,StoreKeyValueGET200Response] = Left(TODO)

        /**
        * 
        * @return A CorrectSpelling200Response
        */
        def Text_correctSpelling(text: String, language: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,CorrectSpelling200Response] = Left(TODO)

        /**
        * 
        * @return A Seq[DetectLanguage200ResponseInner]
        */
        def Text_detectLanguage(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Seq[DetectLanguage200ResponseInner]] = Left(TODO)

        /**
        * 
        * @return A DetectSentiment200Response
        */
        def Text_detectSentiment(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,DetectSentiment200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractDates200Response
        */
        def Text_extractDates(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractDates200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractEntities200Response
        */
        def Text_extractEntities(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractEntities200Response] = Left(TODO)

        /**
        * 
        * @return A ListWordSynonyms200Response
        */
        def Text_listWordSynonyms(word: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ListWordSynonyms200Response] = Left(TODO)

        /**
        * 
        * @return A PartOfSpeechTagging200Response
        */
        def Text_partOfSpeechTagging(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,PartOfSpeechTagging200Response] = Left(TODO)

        /**
        * 
        * @return A PluralizeWord200Response
        */
        def Text_pluralizeWord(word: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,PluralizeWord200Response] = Left(TODO)

        /**
        * 
        * @return A ScoreReadability200Response
        */
        def Text_scoreReadability(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ScoreReadability200Response] = Left(TODO)

        /**
        * 
        * @return A ScoreText200Response
        */
        def Text_scoreText(title: String, text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ScoreText200Response] = Left(TODO)

        /**
        * 
        * @return A SingularizeWord200Response
        */
        def Text_singularizeWord(word: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SingularizeWord200Response] = Left(TODO)

        /**
        * 
        * @return A TextStemming200Response
        */
        def Text_textStemming(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,TextStemming200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractAuthors200Response
        */
        def Web_extractAuthors(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractAuthors200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractContentFromAWebPage200Response
        */
        def Web_extractContentFromAWebPage(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractContentFromAWebPage200Response] = Left(TODO)

        /**
        * 
        * @return A ExtractPublishDate200Response
        */
        def Web_extractPublishDate(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,ExtractPublishDate200Response] = Left(TODO)

        /**
        * 
        * @return A SearchWeb200Response
        */
        def Web_searchWeb(query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,SearchWeb200Response] = Left(TODO)

}