package org.openapitools.apis

import java.io._
import apileague._
import org.openapitools.models._
import org.openapitools.models.FindSimilarBooks200Response
import org.openapitools.models.SearchBooks200Response
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

object BooksApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        findSimilarBooks(da) :+:
        searchBooks(da)


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
        * @return An endpoint representing a FindSimilarBooks200Response
        */
        private def findSimilarBooks(da: DataAccessor): Endpoint[FindSimilarBooks200Response] =
        get("list-similar-books" :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (id: Int, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Books_findSimilarBooks(id, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchBooks200Response
        */
        private def searchBooks(da: DataAccessor): Endpoint[SearchBooks200Response] =
        get("search-books" :: paramOption("query") :: paramOption("earliest-publish-year").map(_.map(_.toInt)) :: paramOption("latest-publish-year").map(_.map(_.toInt)) :: paramOption("min-rating").map(_.map(_.toDouble)) :: paramOption("max-rating").map(_.map(_.toDouble)) :: paramOption("genres") :: paramOption("authors") :: paramOption("isbn") :: paramOption("oclc") :: paramOption("sort") :: paramOption("sort-direction") :: paramOption("group-results").map(_.map(_.toBoolean)) :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (query: Option[String], earliestPublishYear: Option[Int], latestPublishYear: Option[Int], minRating: Option[Double], maxRating: Option[Double], genres: Option[String], authors: Option[String], isbn: Option[String], oclc: Option[String], sort: Option[String], sortDirection: Option[String], groupResults: Option[Boolean], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Books_searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, authParamapiKey, authParamheaderApiKey) match {
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
      val file = Files.createTempFile("tmpBooksApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
