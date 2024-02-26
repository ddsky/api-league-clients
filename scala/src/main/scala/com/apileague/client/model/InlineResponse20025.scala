package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param original 
 * @param singular 
 */
case class InlineResponse20025(original: Option[String],
                singular: Option[String]
                )

object InlineResponse20025 {
    /**
     * Creates the codec for converting InlineResponse20025 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20025] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20025] = deriveEncoder
}
