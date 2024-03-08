package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchRoyaltyFreeImages200ResponseImagesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param images 
 */
case class SearchRoyaltyFreeImages200Response(images: Option[Seq[SearchRoyaltyFreeImages200ResponseImagesInner]]
                )

object SearchRoyaltyFreeImages200Response {
    /**
     * Creates the codec for converting SearchRoyaltyFreeImages200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchRoyaltyFreeImages200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRoyaltyFreeImages200Response] = deriveEncoder
}
