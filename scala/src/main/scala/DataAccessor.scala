package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import com.apileague.client.model._

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
        * @return A InlineResponse20011
        */
        def Art_randomPoem(minLines: Option[Int], maxLines: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20011] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2001
        */
        def Books_findSimilarBooks(id: Int, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2001] = Left(TODO)

        /**
        * 
        * @return A InlineResponse200
        */
        def Books_searchBooks(query: Option[String], earliestPublishYear: Option[Int], latestPublishYear: Option[Int], minRating: Option[Double], maxRating: Option[Double], genres: Option[String], authors: Option[String], isbn: Option[String], oclc: Option[String], sort: Option[String], sortDirection: Option[String], groupResults: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse200] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Humor_generateNonsenseWord(authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2004Jokes
        */
        def Humor_randomJoke(includeTags: Option[String], excludeTags: Option[String], minRating: Option[Double], maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2004Jokes] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2006
        */
        def Humor_randomMeme(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], minRating: Option[Double], maxAgeDays: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2006] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2007
        */
        def Humor_searchGifs(query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2007] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2004
        */
        def Humor_searchJokes(keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], minRating: Option[Double], maxLength: Option[Double], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2004] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2005
        */
        def Humor_searchMemes(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], minRating: Option[Double], maxAgeDays: Option[Int], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2005] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20010
        */
        def Knowledge_randomQuote(minLength: Option[Int], maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20010] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2009
        */
        def Knowledge_randomTrivia(maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2009] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20030
        */
        def Math_convertUnits(sourceAmount: Double, sourceUnit: String, targetUnit: String, foodName: Option[String], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20030] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse20029]
        */
        def Media_detectMainImageColor(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Seq[InlineResponse20029]] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Media_rescaleImage(url: String, width: Int, height: Int, crop: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20028
        */
        def Media_searchRoyaltyFreeImages(query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20028] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2003
        */
        def News_extractNews(url: String, analyze: Boolean, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2003] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2002
        */
        def News_searchNews(text: Option[String], sourceCountries: Option[String], language: Option[String], minSentiment: Option[Double], maxSentiment: Option[Double], earliestPublishDate: Option[String], latestPublishDate: Option[String], newsSources: Option[String], authors: Option[String], entities: Option[String], locationFilter: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse2002] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20031
        */
        def Storage_readKeyValueFromStore(key: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20031] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20032
        */
        def Storage_storeKeyValueGET(key: String, value: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20032] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20016
        */
        def Text_correctSpelling(text: String, language: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20016] = Left(TODO)

        /**
        * 
        * @return A Seq[InlineResponse20017]
        */
        def Text_detectLanguage(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Seq[InlineResponse20017]] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20018
        */
        def Text_detectSentiment(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20018] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20021
        */
        def Text_extractDates(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20021] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20027
        */
        def Text_extractEntities(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20027] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20022
        */
        def Text_listWordSynonyms(word: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20022] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20023
        */
        def Text_partOfSpeechTagging(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20023] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20026
        */
        def Text_pluralizeWord(word: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20026] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20020
        */
        def Text_scoreReadability(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20020] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20019
        */
        def Text_scoreText(title: String, text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20019] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20025
        */
        def Text_singularizeWord(word: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20025] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20024
        */
        def Text_textStemming(text: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20024] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20014
        */
        def Web_extractAuthors(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20014] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20012
        */
        def Web_extractContentFromAWebPage(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20012] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20013
        */
        def Web_extractPublishDate(url: String, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20013] = Left(TODO)

        /**
        * 
        * @return A InlineResponse20015
        */
        def Web_searchWeb(query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,InlineResponse20015] = Left(TODO)

}