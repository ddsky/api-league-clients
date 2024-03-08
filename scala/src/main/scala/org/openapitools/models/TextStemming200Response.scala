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
case class TextStemming200Response(original: Option[String],
                stemmed: Option[String]
                )

object TextStemming200Response {
    /**
     * Creates the codec for converting TextStemming200Response from and to JSON.
     */
    implicit val decoder: Decoder[TextStemming200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[TextStemming200Response] = deriveEncoder
}
