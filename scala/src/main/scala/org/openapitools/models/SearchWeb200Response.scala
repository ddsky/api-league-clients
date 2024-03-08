package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchWeb200ResponseResultsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class SearchWeb200Response(results: Option[Seq[SearchWeb200ResponseResultsInner]]
                )

object SearchWeb200Response {
    /**
     * Creates the codec for converting SearchWeb200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchWeb200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchWeb200Response] = deriveEncoder
}
