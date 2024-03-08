package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchRoyaltyFreeImages200ResponseImagesInnerLicense

/**
 * 
 * @param width 
 * @param license 
 * @param thumbnail 
 * @param id 
 * @param url 
 * @param height 
 */
case class SearchRoyaltyFreeImages200ResponseImagesInner(width: Option[Int],
                license: Option[SearchRoyaltyFreeImages200ResponseImagesInnerLicense],
                thumbnail: Option[String],
                id: Option[String],
                url: Option[String],
                height: Option[Int]
                )

object SearchRoyaltyFreeImages200ResponseImagesInner {
    /**
     * Creates the codec for converting SearchRoyaltyFreeImages200ResponseImagesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRoyaltyFreeImages200ResponseImagesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRoyaltyFreeImages200ResponseImagesInner] = deriveEncoder
}
