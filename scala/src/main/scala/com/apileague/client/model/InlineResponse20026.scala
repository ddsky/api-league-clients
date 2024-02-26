package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param original 
 * @param plural 
 */
case class InlineResponse20026(original: Option[String],
                plural: Option[String]
                )

object InlineResponse20026 {
    /**
     * Creates the codec for converting InlineResponse20026 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20026] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20026] = deriveEncoder
}
