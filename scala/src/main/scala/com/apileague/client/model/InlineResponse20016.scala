package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param correctedUnderscoretext 
 */
case class InlineResponse20016(correctedUnderscoretext: Option[String]
                )

object InlineResponse20016 {
    /**
     * Creates the codec for converting InlineResponse20016 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20016] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20016] = deriveEncoder
}
