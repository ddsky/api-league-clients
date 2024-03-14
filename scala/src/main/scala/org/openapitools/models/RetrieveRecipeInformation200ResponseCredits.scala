package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param license 
 * @param text 
 * @param sourceUnderscorename 
 * @param sourceUnderscoreurl 
 */
case class RetrieveRecipeInformation200ResponseCredits(license: Option[String],
                text: Option[String],
                sourceUnderscorename: Option[String],
                sourceUnderscoreurl: Option[String]
                )

object RetrieveRecipeInformation200ResponseCredits {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseCredits from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseCredits] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseCredits] = deriveEncoder
}
