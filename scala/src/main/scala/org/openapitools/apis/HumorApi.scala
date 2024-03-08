package org.openapitools.apis

import java.io._
import apileague._
import org.openapitools.models._
import org.openapitools.models.GenerateNonsenseWord200Response
import org.openapitools.models.RandomMeme200Response
import org.openapitools.models.SearchGifs200Response
import org.openapitools.models.SearchJokes200Response
import org.openapitools.models.SearchJokes200ResponseJokesInner
import org.openapitools.models.SearchMemes200Response
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

object HumorApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        generateNonsenseWord(da) :+:
        randomJoke(da) :+:
        randomMeme(da) :+:
        searchGifs(da) :+:
        searchJokes(da) :+:
        searchMemes(da)


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
        * @return An endpoint representing a GenerateNonsenseWord200Response
        */
        private def generateNonsenseWord(da: DataAccessor): Endpoint[GenerateNonsenseWord200Response] =
        get("generate-nonsense-word" :: param("api-key") :: header("x-api-key")) { (authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Humor_generateNonsenseWord(authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchJokes200ResponseJokesInner
        */
        private def randomJoke(da: DataAccessor): Endpoint[SearchJokes200ResponseJokesInner] =
        get("retrieve-random-joke" :: paramOption("include-tags") :: paramOption("exclude-tags") :: paramOption("min-rating").map(_.map(_.toDouble)) :: paramOption("max-length").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (includeTags: Option[String], excludeTags: Option[String], minRating: Option[Double], maxLength: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Humor_randomJoke(includeTags, excludeTags, minRating, maxLength, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a RandomMeme200Response
        */
        private def randomMeme(da: DataAccessor): Endpoint[RandomMeme200Response] =
        get("retrieve-random-meme" :: paramOption("keywords") :: paramOption("keywords-in-image").map(_.map(_.toBoolean)) :: paramOption("media-type") :: paramOption("min-rating").map(_.map(_.toDouble)) :: paramOption("max-age-days").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], minRating: Option[Double], maxAgeDays: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Humor_randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchGifs200Response
        */
        private def searchGifs(da: DataAccessor): Endpoint[SearchGifs200Response] =
        get("search-gifs" :: param("query") :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Humor_searchGifs(query, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchJokes200Response
        */
        private def searchJokes(da: DataAccessor): Endpoint[SearchJokes200Response] =
        get("search-jokes" :: paramOption("keywords") :: paramOption("include-tags") :: paramOption("exclude-tags") :: paramOption("min-rating").map(_.map(_.toDouble)) :: paramOption("max-length").map(_.map(_.toDouble)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], minRating: Option[Double], maxLength: Option[Double], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Humor_searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchMemes200Response
        */
        private def searchMemes(da: DataAccessor): Endpoint[SearchMemes200Response] =
        get("search-memes" :: paramOption("keywords") :: paramOption("keywords-in-image").map(_.map(_.toBoolean)) :: paramOption("media-type") :: paramOption("min-rating").map(_.map(_.toDouble)) :: paramOption("max-age-days").map(_.map(_.toInt)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], minRating: Option[Double], maxAgeDays: Option[Int], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Humor_searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number, authParamapiKey, authParamheaderApiKey) match {
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
      val file = Files.createTempFile("tmpHumorApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
