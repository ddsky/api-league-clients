package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchBooks200ResponseBooksInner
import scala.collection.immutable.Seq

/**
 * 
 * @param available 
 * @param number 
 * @param offset 
 * @param books 
 */
case class SearchBooks200Response(available: Option[Int],
                number: Option[Int],
                offset: Option[Int],
                books: Option[Seq[SearchBooks200ResponseBooksInner]]
                )

object SearchBooks200Response {
    /**
     * Creates the codec for converting SearchBooks200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchBooks200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchBooks200Response] = deriveEncoder
}
