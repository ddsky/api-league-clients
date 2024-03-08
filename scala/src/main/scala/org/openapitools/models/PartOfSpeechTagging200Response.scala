package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param taggedUnderscoretext 
 */
case class PartOfSpeechTagging200Response(taggedUnderscoretext: Option[String]
                )

object PartOfSpeechTagging200Response {
    /**
     * Creates the codec for converting PartOfSpeechTagging200Response from and to JSON.
     */
    implicit val decoder: Decoder[PartOfSpeechTagging200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[PartOfSpeechTagging200Response] = deriveEncoder
}
