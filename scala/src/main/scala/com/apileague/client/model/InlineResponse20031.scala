package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param value 
 */
case class InlineResponse20031(value: Option[String]
                )

object InlineResponse20031 {
    /**
     * Creates the codec for converting InlineResponse20031 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20031] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20031] = deriveEncoder
}
