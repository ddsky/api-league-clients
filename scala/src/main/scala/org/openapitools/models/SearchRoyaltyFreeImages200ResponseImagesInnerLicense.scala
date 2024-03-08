package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param name 
 * @param link 
 */
case class SearchRoyaltyFreeImages200ResponseImagesInnerLicense(name: Option[String],
                link: Option[String]
                )

object SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
    /**
     * Creates the codec for converting SearchRoyaltyFreeImages200ResponseImagesInnerLicense from and to JSON.
     */
    implicit val decoder: Decoder[SearchRoyaltyFreeImages200ResponseImagesInnerLicense] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRoyaltyFreeImages200ResponseImagesInnerLicense] = deriveEncoder
}
