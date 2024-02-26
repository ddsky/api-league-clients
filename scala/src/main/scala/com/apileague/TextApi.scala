package com.apileague

import java.io._
import org.openapitools._
import com.apileague.client.model._
import com.apileague.client.model.InlineResponse20016
import com.apileague.client.model.InlineResponse20017
import com.apileague.client.model.InlineResponse20018
import com.apileague.client.model.InlineResponse20019
import com.apileague.client.model.InlineResponse20020
import com.apileague.client.model.InlineResponse20021
import com.apileague.client.model.InlineResponse20022
import com.apileague.client.model.InlineResponse20023
import com.apileague.client.model.InlineResponse20024
import com.apileague.client.model.InlineResponse20025
import com.apileague.client.model.InlineResponse20026
import com.apileague.client.model.InlineResponse20027
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.nio.file.Files
import java.time._

object TextApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        correctSpelling(da) :+:
        detectLanguage(da) :+:
        detectSentiment(da) :+:
        extractDates(da) :+:
        extractEntities(da) :+:
        listWordSynonyms(da) :+:
        partOfSpeechTagging(da) :+:
        pluralizeWord(da) :+:
        scoreReadability(da) :+:
        scoreText(da) :+:
        singularizeWord(da) :+:
        textStemming(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a InlineResponse20016
        */
        private def correctSpelling(da: DataAccessor): Endpoint[InlineResponse20016] =
        get("correct-spelling" :: param("text") :: param("language") :: param("api-key") :: header("x-api-key")) { (text: String, language: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_correctSpelling(text, language, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Seq[InlineResponse20017]
        */
        private def detectLanguage(da: DataAccessor): Endpoint[Seq[InlineResponse20017]] =
        get("detect-language" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_detectLanguage(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20018
        */
        private def detectSentiment(da: DataAccessor): Endpoint[InlineResponse20018] =
        get("detect-sentiment" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_detectSentiment(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20021
        */
        private def extractDates(da: DataAccessor): Endpoint[InlineResponse20021] =
        get("extract-dates" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_extractDates(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20027
        */
        private def extractEntities(da: DataAccessor): Endpoint[InlineResponse20027] =
        get("extract-entities" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_extractEntities(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20022
        */
        private def listWordSynonyms(da: DataAccessor): Endpoint[InlineResponse20022] =
        get("list-synonyms" :: param("word") :: param("api-key") :: header("x-api-key")) { (word: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_listWordSynonyms(word, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20023
        */
        private def partOfSpeechTagging(da: DataAccessor): Endpoint[InlineResponse20023] =
        get("tag-pos" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_partOfSpeechTagging(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20026
        */
        private def pluralizeWord(da: DataAccessor): Endpoint[InlineResponse20026] =
        get("pluralize-word" :: param("word") :: param("api-key") :: header("x-api-key")) { (word: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_pluralizeWord(word, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20020
        */
        private def scoreReadability(da: DataAccessor): Endpoint[InlineResponse20020] =
        get("score-readability" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_scoreReadability(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20019
        */
        private def scoreText(da: DataAccessor): Endpoint[InlineResponse20019] =
        get("score-text" :: param("title") :: param("text") :: param("api-key") :: header("x-api-key")) { (title: String, text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_scoreText(title, text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20025
        */
        private def singularizeWord(da: DataAccessor): Endpoint[InlineResponse20025] =
        get("singularize-word" :: param("word") :: param("api-key") :: header("x-api-key")) { (word: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_singularizeWord(word, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse20024
        */
        private def textStemming(da: DataAccessor): Endpoint[InlineResponse20024] =
        get("stem-text" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_textStemming(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = Files.createTempFile("tmpTextApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
