package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param correctedUnderscoretext 
 */
case class CorrectSpelling200Response(correctedUnderscoretext: Option[String]
                )

object CorrectSpelling200Response {
    /**
     * Creates the codec for converting CorrectSpelling200Response from and to JSON.
     */
    implicit val decoder: Decoder[CorrectSpelling200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[CorrectSpelling200Response] = deriveEncoder
}
