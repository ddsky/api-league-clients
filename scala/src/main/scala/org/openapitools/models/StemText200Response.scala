package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param original 
 * @param stemmed 
 */
case class StemText200Response(original: Option[String],
                stemmed: Option[String]
                )

object StemText200Response {
    /**
     * Creates the codec for converting StemText200Response from and to JSON.
     */
    implicit val decoder: Decoder[StemText200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[StemText200Response] = deriveEncoder
}
