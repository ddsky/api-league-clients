package org.openapitools.apis

import java.io._
import apileague._
import org.openapitools.models._
import org.openapitools.models.CorrectSpelling200Response
import org.openapitools.models.DetectLanguage200ResponseInner
import org.openapitools.models.DetectSentiment200Response
import org.openapitools.models.ExtractDates200Response
import org.openapitools.models.ExtractEntities200Response
import org.openapitools.models.ListWordSynonyms200Response
import org.openapitools.models.PluralizeWord200Response
import org.openapitools.models.ScoreReadability200Response
import org.openapitools.models.ScoreText200Response
import scala.collection.immutable.Seq
import org.openapitools.models.SingularizeWord200Response
import org.openapitools.models.StemText200Response
import org.openapitools.models.TagPartOfSpeech200Response
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
        pluralizeWord(da) :+:
        scoreReadability(da) :+:
        scoreText(da) :+:
        singularizeWord(da) :+:
        stemText(da) :+:
        tagPartOfSpeech(da)


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
        * @return An endpoint representing a CorrectSpelling200Response
        */
        private def correctSpelling(da: DataAccessor): Endpoint[CorrectSpelling200Response] =
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
        * @return An endpoint representing a Seq[DetectLanguage200ResponseInner]
        */
        private def detectLanguage(da: DataAccessor): Endpoint[Seq[DetectLanguage200ResponseInner]] =
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
        * @return An endpoint representing a DetectSentiment200Response
        */
        private def detectSentiment(da: DataAccessor): Endpoint[DetectSentiment200Response] =
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
        * @return An endpoint representing a ExtractDates200Response
        */
        private def extractDates(da: DataAccessor): Endpoint[ExtractDates200Response] =
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
        * @return An endpoint representing a ExtractEntities200Response
        */
        private def extractEntities(da: DataAccessor): Endpoint[ExtractEntities200Response] =
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
        * @return An endpoint representing a ListWordSynonyms200Response
        */
        private def listWordSynonyms(da: DataAccessor): Endpoint[ListWordSynonyms200Response] =
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
        * @return An endpoint representing a PluralizeWord200Response
        */
        private def pluralizeWord(da: DataAccessor): Endpoint[PluralizeWord200Response] =
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
        * @return An endpoint representing a ScoreReadability200Response
        */
        private def scoreReadability(da: DataAccessor): Endpoint[ScoreReadability200Response] =
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
        * @return An endpoint representing a ScoreText200Response
        */
        private def scoreText(da: DataAccessor): Endpoint[ScoreText200Response] =
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
        * @return An endpoint representing a SingularizeWord200Response
        */
        private def singularizeWord(da: DataAccessor): Endpoint[SingularizeWord200Response] =
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
        * @return An endpoint representing a StemText200Response
        */
        private def stemText(da: DataAccessor): Endpoint[StemText200Response] =
        get("stem-text" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_stemText(text, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a TagPartOfSpeech200Response
        */
        private def tagPartOfSpeech(da: DataAccessor): Endpoint[TagPartOfSpeech200Response] =
        get("tag-pos" :: param("text") :: param("api-key") :: header("x-api-key")) { (text: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Text_tagPartOfSpeech(text, authParamapiKey, authParamheaderApiKey) match {
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
