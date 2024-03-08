package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param original 
 * @param plural 
 */
case class PluralizeWord200Response(original: Option[String],
                plural: Option[String]
                )

object PluralizeWord200Response {
    /**
     * Creates the codec for converting PluralizeWord200Response from and to JSON.
     */
    implicit val decoder: Decoder[PluralizeWord200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[PluralizeWord200Response] = deriveEncoder
}
