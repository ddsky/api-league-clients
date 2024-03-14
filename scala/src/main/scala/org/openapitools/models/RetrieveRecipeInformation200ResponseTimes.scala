package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param totalUnderscoreminutes 
 */
case class RetrieveRecipeInformation200ResponseTimes(totalUnderscoreminutes: Option[Int]
                )

object RetrieveRecipeInformation200ResponseTimes {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseTimes from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseTimes] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseTimes] = deriveEncoder
}
