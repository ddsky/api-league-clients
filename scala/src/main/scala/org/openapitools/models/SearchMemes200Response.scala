package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchMemes200ResponseMemesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param memes 
 * @param available 
 */
case class SearchMemes200Response(memes: Option[Seq[SearchMemes200ResponseMemesInner]],
                available: Option[Int]
                )

object SearchMemes200Response {
    /**
     * Creates the codec for converting SearchMemes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchMemes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchMemes200Response] = deriveEncoder
}
