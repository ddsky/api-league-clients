package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param taggedUnderscoretext 
 */
case class InlineResponse20023(taggedUnderscoretext: Option[String]
                )

object InlineResponse20023 {
    /**
     * Creates the codec for converting InlineResponse20023 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20023] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20023] = deriveEncoder
}
