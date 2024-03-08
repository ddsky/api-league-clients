package org.openapitools.apis

import java.io._
import apileague._
import org.openapitools.models._
import org.openapitools.models.DetectMainImageColor200ResponseInner
import org.openapitools.models.SearchRoyaltyFreeImages200Response
import scala.collection.immutable.Seq
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

object MediaApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        detectMainImageColor(da) :+:
        rescaleImage(da) :+:
        searchRoyaltyFreeImages(da)


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
        * @return An endpoint representing a Seq[DetectMainImageColor200ResponseInner]
        */
        private def detectMainImageColor(da: DataAccessor): Endpoint[Seq[DetectMainImageColor200ResponseInner]] =
        get("detect-color" :: param("url") :: param("api-key") :: header("x-api-key")) { (url: String, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Media_detectMainImageColor(url, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def rescaleImage(da: DataAccessor): Endpoint[Object] =
        get("rescale-image" :: param("url") :: param("width").map(_.toInt) :: param("height").map(_.toInt) :: param("crop").map(_.toBoolean) :: param("api-key") :: header("x-api-key")) { (url: String, width: Int, height: Int, crop: Boolean, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Media_rescaleImage(url, width, height, crop, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchRoyaltyFreeImages200Response
        */
        private def searchRoyaltyFreeImages(da: DataAccessor): Endpoint[SearchRoyaltyFreeImages200Response] =
        get("search-images" :: param("query") :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (query: String, number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Media_searchRoyaltyFreeImages(query, number, authParamapiKey, authParamheaderApiKey) match {
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
      val file = Files.createTempFile("tmpMediaApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
