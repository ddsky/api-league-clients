package org.openapitools.apis

import java.io._
import apileague._
import org.openapitools.models._
import org.openapitools.models.ExtractAuthors200Response
import org.openapitools.models.ExtractContentFromAWebPage200Response
import org.openapitools.models.ExtractPublishDate200Response
import org.openapitools.models.RetrievePageRank200Response
import org.openapitools.models.SearchWeb200Response
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

object WebApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        extractAuthors(da) :+:
        extractContentFromAWebPage(da) :+:
        extractPublishDate(da) :+:
        retrievePageRank(da) :+:
        searchWeb(da)


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
        * @return An endpoint representing a ExtractAuthors200Response
        */
        private def extractAuthors(da: DataAccessor): Endpoint[ExtractAuthors200Response] =
        get("extract-authors" :: param("url") :: param("api-key") :: header("x-api-key")) { (url: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Web_extractAuthors(url, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ExtractContentFromAWebPage200Response
        */
        private def extractContentFromAWebPage(da: DataAccessor): Endpoint[ExtractContentFromAWebPage200Response] =
        get("extract-content" :: param("url") :: param("api-key") :: header("x-api-key")) { (url: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Web_extractContentFromAWebPage(url, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ExtractPublishDate200Response
        */
        private def extractPublishDate(da: DataAccessor): Endpoint[ExtractPublishDate200Response] =
        get("extract-publish-date" :: param("url") :: param("api-key") :: header("x-api-key")) { (url: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Web_extractPublishDate(url, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a RetrievePageRank200Response
        */
        private def retrievePageRank(da: DataAccessor): Endpoint[RetrievePageRank200Response] =
        get("retrieve-page-rank" :: param("domain") :: param("api-key") :: header("x-api-key")) { (domain: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Web_retrievePageRank(domain, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchWeb200Response
        */
        private def searchWeb(da: DataAccessor): Endpoint[SearchWeb200Response] =
        get("search-web" :: param("query") :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Web_searchWeb(query, number, authParamapiKey, authParamheaderApiKey) match {
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
      val file = Files.createTempFile("tmpWebApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
