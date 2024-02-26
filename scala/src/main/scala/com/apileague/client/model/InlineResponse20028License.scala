package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param name 
 * @param link 
 */
case class InlineResponse20028License(name: Option[String],
                link: Option[String]
                )

object InlineResponse20028License {
    /**
     * Creates the codec for converting InlineResponse20028License from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028License] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028License] = deriveEncoder
}
