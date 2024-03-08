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
 * @param similarUnderscorebooks 
 */
case class FindSimilarBooks200Response(similarUnderscorebooks: Option[Seq[SearchBooks200ResponseBooksInner]]
                )

object FindSimilarBooks200Response {
    /**
     * Creates the codec for converting FindSimilarBooks200Response from and to JSON.
     */
    implicit val decoder: Decoder[FindSimilarBooks200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[FindSimilarBooks200Response] = deriveEncoder
}
