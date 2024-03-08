package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchGifs200ResponseImagesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param images 
 */
case class SearchGifs200Response(images: Option[Seq[SearchGifs200ResponseImagesInner]]
                )

object SearchGifs200Response {
    /**
     * Creates the codec for converting SearchGifs200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchGifs200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchGifs200Response] = deriveEncoder
}
