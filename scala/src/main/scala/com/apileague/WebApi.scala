package com.apileague

import java.io._
import org.openapitools._
import com.apileague.client.model._
import com.apileague.client.model.InlineResponse20012
import com.apileague.client.model.InlineResponse20013
import com.apileague.client.model.InlineResponse20014
import com.apileague.client.model.InlineResponse20015
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
        * @return An endpoint representing a InlineResponse20014
        */
        private def extractAuthors(da: DataAccessor): Endpoint[InlineResponse20014] =
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
        * @return An endpoint representing a InlineResponse20012
        */
        private def extractContentFromAWebPage(da: DataAccessor): Endpoint[InlineResponse20012] =
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
        * @return An endpoint representing a InlineResponse20013
        */
        private def extractPublishDate(da: DataAccessor): Endpoint[InlineResponse20013] =
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
        * @return An endpoint representing a InlineResponse20015
        */
        private def searchWeb(da: DataAccessor): Endpoint[InlineResponse20015] =
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
